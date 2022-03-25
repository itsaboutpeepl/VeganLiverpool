import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:vegan_liverpool/models/app_state.dart';
import 'package:redux/redux.dart';
import 'package:vegan_liverpool/models/restaurant/deliveryAddresses.dart';
import 'package:vegan_liverpool/redux/actions/cart_actions.dart';

class RestaurantItemViewModel extends Equatable {
  final Function(String, String, DeliveryAddresses, String, VoidCallback)
      updateRestaurantDetails;

  RestaurantItemViewModel({required this.updateRestaurantDetails});

  static RestaurantItemViewModel fromStore(Store<AppState> store) {
    return RestaurantItemViewModel(
      updateRestaurantDetails: (restaurantID, restaurantName, restaurantAddress,
              walletAddress, sendSnackBar) =>
          store.dispatch(setRestaurantDetails(restaurantID, restaurantName,
              restaurantAddress, walletAddress, sendSnackBar)),
    );
  }

  @override
  List<Object> get props => [];
}
