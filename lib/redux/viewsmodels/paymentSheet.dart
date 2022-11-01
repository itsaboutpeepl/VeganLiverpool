import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:vegan_liverpool/features/veganHome/Helpers/helpers.dart';
import 'package:vegan_liverpool/models/app_state.dart';
import 'package:vegan_liverpool/redux/actions/cart_actions.dart';

class PaymentSheetViewModel extends Equatable {
  const PaymentSheetViewModel({
    required this.startPaymentProcess,
    required this.selectedGBPxAmount,
    required this.selectedPPLAmount,
    required this.updateSelectedValues,
    required this.transferringTokens,
    required this.errorCompletingPayment,
    required this.confirmedPayment,
    required this.restaurantName,
    required this.cartTotal,
  });

  factory PaymentSheetViewModel.fromStore(Store<AppState> store) {
    return PaymentSheetViewModel(
      cartTotal: store.state.cartState.cartTotal.formattedPrice,
      selectedGBPxAmount: store.state.cartState.selectedGBPxAmount,
      selectedPPLAmount: store.state.cartState.selectedPPLAmount,
      transferringTokens: store.state.cartState.transferringTokens,
      errorCompletingPayment: store.state.cartState.errorCompletingPayment,
      confirmedPayment: store.state.cartState.confirmedPayment,
      restaurantName: store.state.cartState.restaurantName,
      updateSelectedValues: (gbpxAmount, pplAmount) {
        store.dispatch(
          UpdateSelectedAmounts(
            gbpxAmount: gbpxAmount,
            pplAmount: pplAmount,
          ),
        );
      },
      startPaymentProcess: ({required BuildContext context}) {
        store.dispatch(startPeeplPayProcess(context: context));
      },
    );
  }
  final double selectedGBPxAmount;
  final double selectedPPLAmount;
  final String cartTotal;
  final bool transferringTokens;
  final bool errorCompletingPayment;
  final bool confirmedPayment;
  final String restaurantName;
  final void Function(double gbpxAmount, double pplAmount) updateSelectedValues;
  final void Function({required BuildContext context}) startPaymentProcess;

  @override
  List<Object> get props => [
        selectedGBPxAmount,
        selectedPPLAmount,
        transferringTokens,
        errorCompletingPayment,
        confirmedPayment,
      ];
}
