import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vegan_liverpool/constants/enums.dart';
import 'package:vegan_liverpool/features/veganHome/Helpers/extensions.dart';
import 'package:vegan_liverpool/features/veganHome/Helpers/helpers.dart';
import 'package:vegan_liverpool/models/cart/orderItem.dart';
import 'package:vegan_liverpool/models/payments/transaction_item.dart';
import 'package:vegan_liverpool/models/restaurant/deliveryAddresses.dart';
import 'package:vegan_liverpool/models/restaurant/deliveryPartnerDTO.dart';
import 'package:vegan_liverpool/models/restaurant/orderDetails.dart';
import 'package:vegan_liverpool/models/restaurant/time_slot.dart';
import 'package:vegan_liverpool/models/restaurant/vendorDTO.dart';

part 'order.freezed.dart';
part 'order.g.dart';

String getFulfilmentMethodString(
  Map<dynamic, dynamic> json,
  String key,
) {
  return json[key]['methodType'] as String? ?? 'none';
}

int getFulfilmentMethodId(
  Map<dynamic, dynamic> json,
  String key,
) {
  return json['fulfilmentMethod']['id']! as int;
}

num getFulfilmentMethodPriceModifier(
  Map<dynamic, dynamic> json,
  String key,
) {
  return (json['fulfilmentMethod']['priceModifier'] ?? 0.0) as num;
}

// DateTime _slotFromTime(Map<String, dynamic> json) =>
//     DateTimeHelpers.parseISOFormat((json['fulfilmentSlotFrom'] as String));
// DateTime _slotToTime(Map<String, dynamic> json) =>
//     DateTimeHelpers.parseISOFormat((json['fulfilmentSlotFrom'] as String));

@Freezed()
class Order with _$Order {
  @JsonSerializable()
  factory Order({
    required int id,
    required List<OrderItem> items,
    required num total,
    required num subtotal,
    @JsonKey(fromJson: toTS)
        required DateTime orderedDateTime,
    @JsonKey(fromJson: toTSNullable)
        DateTime? paidDateTime,
    @JsonKey(fromJson: toTSNullable)
        DateTime? refundDateTime,
    required String? deliveryName,
    required String? deliveryEmail,
    required String? deliveryPhoneNumber,
    required String deliveryAddressLineOne,
    required String deliveryAddressLineTwo,
    required String deliveryAddressCity,
    required String deliveryAddressPostCode,
    required double? deliveryAddressLatitude,
    required double? deliveryAddressLongitude,
    required String deliveryAddressInstructions,
    required String deliveryId,
    @Default([])
        List<TransactionItem> transactions,
    required num fulfilmentCharge,
    required num platformFee,
    @Default('')
        String cartDiscountCode,
    @Default('fixed')
        String cartDiscountType,
    @Default(0)
        num cartDiscountAmount,
    @Default(0)
        num cartTip,
    @JsonEnum()
    @JsonKey(
      unknownEnumValue: OrderPaidStatus.unpaid,
    )
        required OrderPaidStatus paymentStatus,
    @JsonEnum()
    @JsonKey(unknownEnumValue: RestaurantAcceptanceStatus.pending)
        required RestaurantAcceptanceStatus restaurantAcceptanceStatus,
    @JsonKey(unknownEnumValue: OrderAcceptanceStatus.pending)
        required OrderAcceptanceStatus orderAcceptanceStatus,
    required bool deliveryPartnerAccepted,
    required bool deliveryPartnerConfirmed,
    @JsonKey(readValue: getFulfilmentMethodId)
        required int fulfilmentMethodId,
    @JsonKey(readValue: getFulfilmentMethodPriceModifier)
        required num fulfilmentMethodPriceModifier,
    required DateTime fulfilmentSlotFrom, // "2022-09-29T10:00:00.000Z"
    required DateTime fulfilmentSlotTo, // "2022-09-29T10:00:00.000Z"
    required String publicId,
    required int tipAmount,
    required double rewardsIssued,
    required bool sentToDeliveryPartner,
    required VendorDTO vendor,
    required DeliveryPartnerDTO? deliveryPartner,
    @JsonKey(readValue: getFulfilmentMethodString)
        required FulfilmentMethodType fulfilmentMethod,

    //ignore following keys:
    // required String customerWalletAddress,
    // required String paymentIntentId,
    // required String completedFlag,
    // required String completedOrderFeedback,
    // required double? orderCondition,
    // required double? deliveryPunctuality,
    // required String? discount,
    // required int fulfilmentMethod,
    // required int? parentOrder,
  }) = _Order;

  const Order._();

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

  num get GBPxAmountPaid =>
      transactions
          .where((t) => t.currency == Currency.GBPx)
          .map((t) => t.amount)
          .sum() +
      transactions
          .where((t) => t.currency == Currency.GBP)
          .map((t) => t.amount * 100)
          .sum();
  num get PPLAmountPaid => transactions
      .where((t) => t.currency == Currency.PPL)
      .map((t) => t.amount)
      .sum();

  String get rewardsEarnedInPPL => getPPLRewardsFromPence(
        GBPxAmountPaid * 100,
      ).toStringAsFixed(2);

  String get rewardsEarnedInGBP =>
      '£${(getPPLRewardsFromPence(GBPxAmountPaid * 100) / 10).toStringAsFixed(2)}';

  bool get didUsePPL => PPLAmountPaid != 0.0;

  //SECTION custom getter names for app readability
  String get restaurantName => vendorName;
  String get orderID => id.toString();
  String? get restaurantPhoneNumber => vendorPhoneNumber;
  String get paymentStatusLabel => paymentStatus.name.capitalize();
  bool get isCollection => fulfilmentMethod == FulfilmentMethodType.collection;
  bool get isDelivery => fulfilmentMethod == FulfilmentMethodType.delivery;
  bool get isInStore => fulfilmentMethod == FulfilmentMethodType.inStore;
  int get cartTotalGBPx => (total * 100).round();

  int get vendorId => vendor.id;
  String get vendorName => vendor.name;
  String? get vendorPhoneNumber => vendor.phoneNumber;
  int? get deliveryPartnerId => deliveryPartner?.id;
  String? get deliveryPartnerName => deliveryPartner?.name;

  TimeSlot get timeSlot => TimeSlot(
        startTime: fulfilmentSlotFrom,
        endTime: fulfilmentSlotTo,
        priceModifier: fulfilmentMethodPriceModifier.round(),
        fulfilmentMethodId: fulfilmentMethodId,
      );

  DeliveryAddresses get address => DeliveryAddresses(
        internalID:
            Random(DateTime.now().millisecondsSinceEpoch).nextInt(10000),
        label: DeliveryAddressLabel.hotel,
        name: deliveryName,
        email: deliveryEmail,
        instructions: deliveryAddressInstructions,
        phoneNumber: deliveryPhoneNumber,
        addressLine1: deliveryAddressLineOne,
        addressLine2: deliveryAddressLineTwo,
        townCity: deliveryAddressCity,
        postalCode: deliveryAddressPostCode,
        latitude: deliveryAddressLatitude ?? 0.0,
        longitude: deliveryAddressLongitude ?? 0.0,
      );
}
