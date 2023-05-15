import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:injectable/injectable.dart';
import 'package:redux/redux.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:vegan_liverpool/common/di/env.dart';
import 'package:vegan_liverpool/constants/analytics_events.dart';
import 'package:vegan_liverpool/constants/enums.dart';
import 'package:vegan_liverpool/features/pay/dialogs/stripe_payment_confirmed_dialog.dart';
import 'package:vegan_liverpool/features/topup/dialogs/card_failed.dart';
import 'package:vegan_liverpool/features/topup/dialogs/minting_dialog.dart';
import 'package:vegan_liverpool/features/veganHome/Helpers/extensions.dart';
import 'package:vegan_liverpool/models/app_state.dart';
import 'package:vegan_liverpool/models/payments/live_payment.dart';

import 'package:vegan_liverpool/redux/actions/cart_actions.dart';
import 'package:vegan_liverpool/services.dart';
import 'package:vegan_liverpool/utils/analytics.dart';
import 'package:vegan_liverpool/utils/constants.dart';
import 'package:vegan_liverpool/utils/log/log.dart';

class StripeCustomResponse {
  StripeCustomResponse({
    required this.ok,
    this.msg = '',
  });
  final bool ok;
  final String? msg;
}

@lazySingleton
class StripeService {
  final Stripe instance = Stripe.instance;

  void init() {
    Stripe.publishableKey = Env.isDev
        ? dotenv.env['STRIPE_API_KEY_TEST']!
        : dotenv.env['STRIPE_API_KEY_LIVE']!;
    // if (Stripe.publishableKey.contains('live')) {
    //   final e = Exception('Stripe Instance not ready for production usage.');
    //   Sentry.captureException(
    //     e,
    //     stackTrace: StackTrace.current,
    //     hint: 'ERROR - fetchProductOptions $e',
    //   );
    //   throw e;
    // }
    Stripe.merchantIdentifier = 'merchant.com.vegiapp';
  }

  Future<bool> handleStripe({
    required String recipientWalletAddress,
    required String senderWalletAddress,
    required Currency currency,
    required num orderId,
    required num accountId,
    required int amount,
    required bool shouldPushToHome,
    required Store<AppState> store,
  }) async {
    try {
      final paymentIntentClientSecret =
          await stripePayService.createStripePaymentIntent(
        //TODO: if walletAddress, then user stripePayService.createStripePaymentIntentForTopupFromBank or something
        amount: amount,
        currency: currency.name.toLowerCase(),
        recipientWalletAddress: recipientWalletAddress,
        senderWalletAddress: senderWalletAddress,
        orderId: orderId,
        accountId: accountId,
      );
      if (paymentIntentClientSecret == null) {
        log.error('Unable to create payment intent from ${stripePayService}');
        store.dispatch(
          StripePaymentStatusUpdate(
            status: StripePaymentStatus.paymentFailed,
          ),
        );
        return false;
      }

      // ~ https://docs.page/flutter-stripe/flutter_stripe/sheet#5-test-the-integration
      final dynamicUrl = 'vegi://vegiApp.co.uk${rootRouter.currentUrl}';
      log.info(dynamicUrl);
      //todo: can we call rootRouter.addListener at beginning of this call for startPeeplPayProcess thunk and then remove handler if finishes and close payment sheet if rootRouter is called....
      await instance.initPaymentSheet(
        // todo: Check that the returnUrl makes sense...
        paymentSheetParameters: SetupPaymentSheetParameters(
          style: ThemeMode.dark,
          merchantDisplayName: 'vegi',
          paymentIntentClientSecret: paymentIntentClientSecret.paymentIntent
              .clientSecret, //todo autoformat saved customer details from calling backend to retreive customer details for their saved stripeCustomerId from store
          customerEphemeralKeySecret: paymentIntentClientSecret.ephemeralKey,
          // billingDetails, delayedPaymentMethods etc...
          returnURL: dynamicUrl,
          // billingDetails: BillingDetails()
        ),
      );
      await instance.presentPaymentSheet();
      final mintingCrypto = currency == Currency.GBPx ||
          currency == Currency.PPL ||
          currency == Currency.GBT;
      if (mintingCrypto) {
        store
          ..dispatch(
            SetProcessingPayment(
              payment: LivePayment(
                amount: amount.toDouble(),
                currency: currency,
                status: PaymentProcessingStatus.started,
                technology: PaymentTechnology.stripeOnRamp,
                type: PaymentType.topup,
              ),
            ),
          )
          ..dispatch(
            StripePaymentStatusUpdate(
              status: StripePaymentStatus.mintingStarted,
            ),
          );
      } else {
        store
          ..dispatch(
            SetProcessingPayment(
              payment: LivePayment(
                amount: amount.toDouble(),
                currency: currency,
                status: PaymentProcessingStatus.succeeded,
                technology: PaymentTechnology.card,
                type: PaymentType.cardPayment,
              ),
            ),
          )
          ..dispatch(
            StripePaymentStatusUpdate(
              status: StripePaymentStatus.paymentConfirmed,
            ),
          );
      }
      return true;
    } on Exception catch (e, s) {
      if (e is StripeException) {
        if (e.error.code != FailureCode.Canceled) {
          unawaited(
            Analytics.track(
              eventName: AnalyticsEvents.mint,
              properties: {
                'status': 'failure',
              },
            ),
          );
          log.error(e.error.localizedMessage);
          await Sentry.captureException(
            e,
            stackTrace: s,
            hint:
                'ERROR - Stripe Exception: ${e.error.localizedMessage}; message: ${e.error.message}',
          );
          store
            ..dispatch(
              StripePaymentStatusUpdate(
                status: StripePaymentStatus.paymentFailed,
              ),
            )
            ..dispatch(
              OrderCreationProcessStatusUpdate(
                status: OrderCreationProcessStatus.none,
              ),
            );
          return false;
        } else {
          return false;
        }
      } else {
        log.error(e);
        await Sentry.captureException(
          e,
          stackTrace: s,
          hint: 'ERROR - Stripe Exception: $e',
        );
        store.dispatch(
          StripePaymentStatusUpdate(
            status: StripePaymentStatus.paymentFailed,
          ),
        );
        return false;
      }
    }
  }

  Future<bool> handleApplePay({
    required String productName,
    required String recipientWalletAddress,
    required String senderWalletAddress,
    required Currency currency,
    required num orderId,
    required num accountId,
    required int amount,
    required Store<AppState> store,
    required bool shouldPushToHome,
  }) async {
    try {
      // 1. fetch Intent Client Secret from backend
      final paymentIntentClientSecret =
          await stripePayService.createStripePaymentIntent(
        amount: amount,
        currency: currency.name.toLowerCase(),
        recipientWalletAddress: recipientWalletAddress,
        senderWalletAddress: senderWalletAddress,
        orderId: orderId,
        accountId: accountId,
      );
      if (paymentIntentClientSecret == null) {
        log.error('Unable to create payment intent from ${stripePayService}');
        store.dispatch(
          StripePaymentStatusUpdate(
            status: StripePaymentStatus.paymentFailed,
          ),
        );
        return false;
      }

      // 2. Confirm apple pay payment
      await Stripe.instance.confirmPlatformPayPaymentIntent(
        clientSecret: paymentIntentClientSecret.paymentIntent.clientSecret,
        confirmParams: PlatformPayConfirmParams.applePay(
          applePay: ApplePayParams(
            cartItems: [
              ApplePayCartSummaryItem.immediate(
                label: productName,
                amount: (amount / 100).toString(),
              )
            ],
            merchantCountryCode: 'gb',
            currencyCode: 'gbp',
          ),
        ),
      );
      final mintingCrypto = currency == Currency.GBPx ||
          currency == Currency.PPL ||
          currency == Currency.GBT;
      if (mintingCrypto) {
        store
          ..dispatch(
            SetProcessingPayment(
              payment: LivePayment(
                amount: amount.toDouble(),
                currency: currency,
                status: PaymentProcessingStatus.started,
                technology: PaymentTechnology.stripeOnRamp,
                type: PaymentType.topup,
              ),
            ),
          )
          ..dispatch(
            StripePaymentStatusUpdate(
              status: StripePaymentStatus.mintingStarted,
            ),
          );
      } else {
        store
          ..dispatch(
            SetProcessingPayment(
              payment: LivePayment(
                amount: amount.toDouble(),
                currency: currency,
                status: PaymentProcessingStatus.succeeded,
                technology: PaymentTechnology.card,
                type: PaymentType.cardPayment,
              ),
            ),
          )
          ..dispatch(
            StripePaymentStatusUpdate(
              status: StripePaymentStatus.paymentConfirmed,
            ),
          );
      }
      return true;
    } on Exception catch (e, s) {
      store.dispatch(
        StripePaymentStatusUpdate(
          status: StripePaymentStatus.paymentFailed,
        ),
      );
      if (e is StripeException) {
        if (e.error.code != FailureCode.Canceled) {
          unawaited(
            Analytics.track(
              eventName: AnalyticsEvents.mint,
              properties: {
                'status': 'failure',
              },
            ),
          );
          log.error(e.error.localizedMessage);
          await Sentry.captureException(
            e,
            stackTrace: s,
          );
          return false;
        } else {
          return false;
        }
      } else {
        log.error(e);
        await Sentry.captureException(
          e,
          stackTrace: s,
        );
        return false;
      }
    }
  }
}
