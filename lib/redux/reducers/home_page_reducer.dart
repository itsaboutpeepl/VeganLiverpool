import 'package:vegan_liverpool/models/home_page_state.dart';
import 'package:vegan_liverpool/redux/actions/home_page_actions.dart';
import 'package:redux/redux.dart';

final HomePageReducers = combineReducers<HomePageState>(
  [
    TypedReducer<HomePageState, UpdateFeaturedRestaurants>(
        _getFeaturedRestaurants),
    TypedReducer<HomePageState, UpdateRestaurantCategories>(
        _getRestaurantCategories),
  ],
);

HomePageState _getFeaturedRestaurants(
  HomePageState state,
  UpdateFeaturedRestaurants action,
) {
  return state.copyWith(featuredRestaurants: action.listOfFeaturedRestaurants);
}

HomePageState _getRestaurantCategories(
    HomePageState state, UpdateRestaurantCategories action) {
  return state.copyWith(
      restaurantCategories: action.listOfRestaurantCategories);
}
