import 'package:equatable/equatable.dart';
import 'package:redux/redux.dart';
import 'package:vegan_liverpool/models/app_state.dart';
import 'package:vegan_liverpool/models/cart/discount.dart';
import 'package:vegan_liverpool/models/payments/money.dart';
import 'package:vegan_liverpool/redux/actions/cart_actions.dart';

class DiscountCardViewModel extends Equatable {
  const DiscountCardViewModel({
    required this.hasDiscount,
    required this.discountCode,
    required this.removeDiscount,
    required this.activeVouchers,
  });

  factory DiscountCardViewModel.fromStore(Store<AppState> store) {
    return DiscountCardViewModel(
      hasDiscount: store.state.cartState.discountCode.isNotEmpty,
      discountCode: store.state.cartState.discountCode,
      activeVouchers: store.state.cartState.appliedVouchers,
      removeDiscount: () => store.dispatch(removeCartDiscount()),
    );
  }

  final bool hasDiscount;
  final String discountCode;
  final List<Discount> activeVouchers;
  final void Function() removeDiscount;

  @override
  List<Object?> get props => [
    discountCode,
  ];
}
