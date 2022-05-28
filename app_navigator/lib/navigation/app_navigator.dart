import 'package:app_navigator/bottom_sheet/bottom_sheet_navigation.dart';
import 'package:app_navigator/dialog/dialog_navigation.dart';
import 'package:flutter/material.dart';

import 'package:app_navigator/dialog/dialog_navigation.dart' as dialog;

class AppNavigator {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  final BottomSheetRoutes _bottomSheetRoute = BottomSheetRoutes();
  final DialogRoutes _dialogRoutes = DialogRoutes();

  void navigateTo<T extends Object?>(String routeName, {Object? arguments}) =>
      navigatorKey.currentState?.pushNamed(routeName, arguments: arguments);

  Future<T?> pushBottomSheet<T>(BottomSheetRoute route) async {
    assert(navigatorKey.currentContext != null, 'navigation context is null when pushing bottom sheet');

    final builder = _bottomSheetRoute.lookupRouteByName(route);

    return await showModalBottomSheet(
      context: navigatorKey.currentContext!,
      builder: builder!,
      routeSettings: RouteSettings(arguments: route.message),
      isScrollControlled: true,
    );
  }

  Future<T?> pushDialog<T>(dialog.DialogRoute route) async {
    assert(navigatorKey.currentContext != null, 'navigation context is null when pushing dialog');

    final builder = _dialogRoutes.lookupRouteByName(route);

    return await showModalBottomSheet(
      context: navigatorKey.currentContext!,
      builder: builder!,
      routeSettings: RouteSettings(arguments: route.message),
      isScrollControlled: true,
    );
  }
}
