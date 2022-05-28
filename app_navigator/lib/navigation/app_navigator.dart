import 'package:flutter/material.dart';

import '../bottom_sheet/bottom_sheet_navigation.dart';

class AppNavigator {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  final BottomSheetRoutes _bottomSheetRoute = BottomSheetRoutes();

  void navigateTo<T extends Object?>(String routeName, {Object? arguments}) =>
      navigatorKey.currentState?.pushNamed(routeName, arguments: arguments);

  Future<T?> pushBottomSheet<T>(BottomSheetRoute route) async {
    assert(navigatorKey.currentContext != null, 'navigation context is null when pushing bottom sheet');

    final builder = _bottomSheetRoute.lookupRouteByName(route);
    assert(builder != null, 'BottomSheetRoute does not contain a route with the name: $route');

    return await showModalBottomSheet(
      context: navigatorKey.currentContext!,
      builder: builder!,
      routeSettings: RouteSettings(arguments: route.message),
      isScrollControlled: true,
    );
  }
}
