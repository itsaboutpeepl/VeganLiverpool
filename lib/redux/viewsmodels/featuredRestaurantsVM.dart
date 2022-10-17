import 'package:equatable/equatable.dart';
import 'package:redux/redux.dart';
import 'package:vegan_liverpool/models/app_state.dart';
import 'package:vegan_liverpool/models/restaurant/orderDetails.dart';
import 'package:vegan_liverpool/models/restaurant/restaurantItem.dart';
import 'package:vegan_liverpool/redux/actions/cart_actions.dart';
import 'package:vegan_liverpool/redux/actions/home_page_actions.dart';

class FeaturedRestaurantsVM extends Equatable {
  const FeaturedRestaurantsVM({
    required this.featuredRestaurants,
    required this.isLoadingHomePage,
    required this.avatarUrl,
    required this.changeOutCode,
    required this.postalCodes,
    required this.isDelivery,
    required this.setIsDelivery,
    required this.listOfScheduledOrders,
  });

  factory FeaturedRestaurantsVM.fromStore(Store<AppState> store) {
    return FeaturedRestaurantsVM(
      featuredRestaurants: store.state.homePageState.featuredRestaurants,
      isLoadingHomePage: store.state.homePageState.isLoadingHomePage,
      avatarUrl: store.state.userState.avatarUrl,
      isDelivery: store.state.cartState.isDelivery,
      postalCodes: store.state.homePageState.postalCodes,
      listOfScheduledOrders: store.state.pastOrderState.listOfScheduledOrders,
      changeOutCode: (outCode) {
        store.dispatch(fetchFeaturedRestaurants(outCode: outCode));
      },
      setIsDelivery: (isDelivery) {
        store
          ..dispatch(SetIsDelivery(isDelivery: isDelivery))
          ..dispatch(computeCartTotals());
      },
    );
  }
  final List<RestaurantItem> featuredRestaurants;
  final bool isLoadingHomePage;
  final void Function(String outCode) changeOutCode;
  final String avatarUrl;
  final List<String> postalCodes;
  final bool isDelivery;
  final void Function(bool isDelivery) setIsDelivery;
  final List<OrderDetails> listOfScheduledOrders;

  @override
  List<Object> get props => [
        featuredRestaurants,
        listOfScheduledOrders,
        isLoadingHomePage,
        postalCodes,
        isDelivery,
      ];
}
