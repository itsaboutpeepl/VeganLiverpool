import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:vegan_liverpool/common/router/route_guards.dart';
import 'package:vegan_liverpool/features/home/screens/action_details.dart';
import 'package:vegan_liverpool/features/home/screens/home.dart';

const homeTab = AutoRoute(
  path: 'home',
  name: 'homeTab',
  page: EmptyRouterPage,
  guards: [AuthGuard],
  children: [
    AutoRoute(
      initial: true,
      page: HomeScreen,
      name: 'homeScreen',
      guards: [AuthGuard],
    ),
    AutoRoute(
      page: ActionDetailsScreen,
      guards: [AuthGuard],
    ),
  ],
);
