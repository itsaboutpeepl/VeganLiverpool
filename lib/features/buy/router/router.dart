import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:vegan_liverpool/features/buy/screens/business.dart';
import 'package:vegan_liverpool/features/buy/screens/buy.dart';

const buyTab = AutoRoute(
  path: 'buy',
  name: 'buyTab',
  page: EmptyRouterPage,
  children: [
    AutoRoute(
      initial: true,
      page: BuyScreen,
    ),
    AutoRoute(
      page: BusinessScreen,
    ),
  ],
);
