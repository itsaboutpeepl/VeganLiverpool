import 'package:flutter/material.dart';
import 'package:vegan_liverpool/features/veganHome/widgets/CustomAppBar.dart';
import 'package:vegan_liverpool/features/veganHome/widgets/ScrollableTab/ScrollableListTab.dart';
import 'package:vegan_liverpool/features/veganHome/widgets/ScrollableTab/ScrollableListTabView.dart';
import 'package:vegan_liverpool/features/veganHome/widgets/ScrollableTab/listTab.dart';
import 'package:vegan_liverpool/features/veganHome/widgets/singleMenuItem.dart';
import 'package:vegan_liverpool/models/restaurant/menuItem.dart';

class RestaurantMenuScreen extends StatefulWidget {
  const RestaurantMenuScreen({Key? key, required this.menuList})
      : super(key: key);

  @override
  State<RestaurantMenuScreen> createState() => _RestaurantMenuScreenState();

  final List<MenuItem> menuList;
}

class _RestaurantMenuScreenState extends State<RestaurantMenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        centerText: "Liverpool, L17 0AB",
        pageTitle: "DaCimino",
        hasSearchAction: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black,
        child: Icon(
          Icons.shopping_basket,
          color: Colors.white,
        ),
      ),
      body: ScrollableListTabView(
        bodyAnimationDuration: const Duration(milliseconds: 150),
        tabAnimationCurve: Curves.easeOut,
        tabAnimationDuration: const Duration(milliseconds: 200),
        tabs: [
          buildScrollableListTab('Label 1', Icons.emoji_food_beverage_outlined),
          buildScrollableListTab('Label 2', Icons.cake_outlined),
          buildScrollableListTab('Label 3', Icons.local_pizza_outlined),
        ],
      ),
    );
  }

  ScrollableListTab buildScrollableListTab(String label, IconData icon) {
    return ScrollableListTab(
      tab: ListTab(
        label: Text(
          label,
          style: TextStyle(color: Colors.black),
        ),
        icon: Icon(
          icon,
          color: Colors.black,
        ),
        showIconOnList: false,
        showLabelOnList: false,
        activeBackgroundColor: Colors.yellow[200]!,
        activeBorderColor: Colors.black,
      ),
      body: ListView.separated(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: widget.menuList.length,
        separatorBuilder: (_, index) =>
            Padding(padding: EdgeInsets.symmetric(vertical: 15)),
        itemBuilder: (_, index) => SingleMenuItem(
          menuItem: widget.menuList[index],
        ),
      ),
    );
  }
}
