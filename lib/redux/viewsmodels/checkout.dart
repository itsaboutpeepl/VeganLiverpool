import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:vegan_liverpool/models/app_state.dart';
import 'package:redux/redux.dart';
import 'package:vegan_liverpool/redux/actions/cart_actions.dart';

class CheckoutViewModel extends Equatable {
  final List<Map<String, String>> deliverySlots;
  final List<Map<String, String>> collectionSlots;
  final int selectedDeliveryAddressIndex;
  final int selectedUserTip;
  final int selectedSlotIndex;
  final String discountCode;
  final int discountPercent;
  final int cartTotal;
  final Function(String discountCode, VoidCallback) updateDiscount;
  final Function(int index) updateSlotIndex;
  final Function(int tipAmount) updateTipAmount;
  final Function(VoidCallback, VoidCallback) createOrder;
  final Function(DateTime newDate) updateSlotTimes;

  CheckoutViewModel({
    required this.deliverySlots,
    required this.collectionSlots,
    required this.selectedUserTip,
    required this.selectedDeliveryAddressIndex,
    required this.discountCode,
    required this.discountPercent,
    required this.updateDiscount,
    required this.cartTotal,
    required this.selectedSlotIndex,
    required this.updateSlotIndex,
    required this.updateTipAmount,
    required this.createOrder,
    required this.updateSlotTimes,
  });

  static CheckoutViewModel fromStore(Store<AppState> store) {
    return CheckoutViewModel(
      deliverySlots: store.state.cartState.deliverySlots,
      collectionSlots: store.state.cartState.collectionSlots,
      selectedUserTip: store.state.cartState.selectedTipAmount,
      selectedDeliveryAddressIndex:
          store.state.cartState.selectedDeliveryAddressIndex,
      discountCode: store.state.cartState.discountCode,
      discountPercent: store.state.cartState.cartDiscountPercent,
      cartTotal: store.state.cartState.cartTotal,
      selectedSlotIndex: store.state.cartState.selectedSlotIndex,
      updateDiscount: (discountCode, errorCallback) {
        store.dispatch(updateCartDiscount(discountCode, errorCallback));
      },
      updateSlotIndex: (int index) {
        store.dispatch(UpdateSlotIndex(index));
        store.state.cartState.selectedDeliveryAddressIndex == 0
            ? store.dispatch(
                SetDeliveryCharge(store.state.cartState.collectionCharge))
            : store.dispatch(
                SetDeliveryCharge(store.state.cartState.deliveryCharge));
        store.dispatch(computeCartTotals());
      },
      updateTipAmount: (int tipAmount) {
        store.dispatch(updateCartTip(tipAmount));
      },
      createOrder: (errorCallback, successCallback) {
        store.dispatch(prepareAndSendOrder(errorCallback, successCallback));
      },
      updateSlotTimes: (newDate) {
        store.dispatch(getFullfillmentMethods(newDate: newDate));
      },
    );
  }

  @override
  List<Object> get props => [
        selectedSlotIndex,
        selectedUserTip,
        discountCode,
        cartTotal,
        selectedDeliveryAddressIndex,
      ];
}
