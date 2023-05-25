import 'package:equatable/equatable.dart';
import 'package:redux/redux.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:vegan_liverpool/constants/enums.dart';
import 'package:vegan_liverpool/models/app_state.dart';
import 'package:vegan_liverpool/services.dart';
import 'package:vegan_liverpool/utils/log/log.dart';

class TopUpViewModel extends Equatable {
  const TopUpViewModel({
    required this.recipientWalletAddress,
    required this.senderWalletAddress,
    required this.orderId,
    required this.accountId,
    required this.topUpAmount,
    required this.handleApplePay,
  });

  factory TopUpViewModel.fromStore(Store<AppState> store) {
    return TopUpViewModel(
      recipientWalletAddress: store.state.userState.walletAddress,
      senderWalletAddress: store.state.userState.walletAddress,
      orderId: num.parse(store.state.cartState.orderID),
      accountId: store.state.userState.vegiAccountId,
      topUpAmount: store.state.cartState.cartTotal == 0
          ? 25
          : store.state.cartState.cartTotal,
      handleApplePay: (int amountPence) async {
        if (store.state.userState.vegiAccountId == null) {
          final e =
              'Vegi AccountId not set on state... Cannot start payment';
          log.error(e);
          await Sentry.captureException(
            Exception(e),
            stackTrace: StackTrace.current, // from catch (e, s)
            hint: 'ERROR - startPeeplPayProcess $e',
          );
        }
        await stripeService.handleApplePay(
          recipientWalletAddress: store.state.userState.walletAddress,
          senderWalletAddress: store.state.userState.walletAddress,
          orderId: num.parse(store.state.cartState.orderID),
          accountId: store.state.userState.vegiAccountId!,
          currency: Currency.GBP,
          amount: amountPence,
          store: store, //move to viewmodel
          shouldPushToHome: true,
          productName: 'vegi',
        );
      }
    );
  }

  final String recipientWalletAddress;
  final String senderWalletAddress;
  final num orderId;
  final num? accountId;
  final num topUpAmount;
  final Future<void> Function(int amountPenceRounded) handleApplePay;

  @override
  List<Object> get props => [
        recipientWalletAddress,
      ];
}
