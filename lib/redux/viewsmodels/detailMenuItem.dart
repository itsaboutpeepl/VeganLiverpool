import 'package:equatable/equatable.dart';
import 'package:vegan_liverpool/models/app_state.dart';
import 'package:redux/redux.dart';
import 'package:vegan_liverpool/models/restaurant/menuItem.dart';
import 'package:vegan_liverpool/models/restaurant/orderItem.dart';
import 'package:vegan_liverpool/models/restaurant/productOptions.dart';
import 'package:vegan_liverpool/redux/actions/cart_actions.dart';
import 'package:vegan_liverpool/redux/actions/menu_item_actions.dart';

class DetailMenuItem extends Equatable {
  final MenuItem menuItem;
  final int totalPrice;
  final int itemReward;
  final int quantity;
  final Map<int, ProductOptions> selectedOptions;
  final Function(OrderItem itemToAdd) addOrderItem;
  final Function(MenuItem? menuItem) setMenuItem;
  final Function(bool isAdd) updateQuantity;

  DetailMenuItem({
    required this.menuItem,
    required this.totalPrice,
    required this.itemReward,
    required this.quantity,
    required this.addOrderItem,
    required this.setMenuItem,
    required this.updateQuantity,
    required this.selectedOptions,
  });

  static DetailMenuItem fromStore(Store<AppState> store) {
    return DetailMenuItem(
        menuItem: store.state.menuItemState.menuItem,
        totalPrice: store.state.menuItemState.totalPrice,
        itemReward: store.state.menuItemState.itemReward,
        quantity: store.state.menuItemState.quantity,
        selectedOptions:
            store.state.menuItemState.selectedProductOptionsForCategory,
        addOrderItem: (itemToAdd) {
          store.dispatch(updateCartItems(itemToAdd));
        },
        setMenuItem: (menuItem) {
          store.dispatch(setUpMenuItemStructures(menuItem));
        },
        updateQuantity: (isAdd) {
          store.dispatch(updateComputeQuantity(isAdd));
        });
  }

  @override
  List<Object> get props => [menuItem, totalPrice, itemReward, quantity];
}
