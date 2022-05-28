import 'package:app_navigator/banner/banner_navigation.dart';
import 'package:app_navigator/bottom_sheet/bottom_sheet_navigation.dart';
import 'package:app_navigator/snackbar/snackbar_navigation.dart';
import 'package:flutter/material.dart';

import 'package:app_navigator/dialog/dialog_navigation.dart' as dialog;

class AppNavigator {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  final BottomSheetRoutes _bottomSheetRoute = BottomSheetRoutes();
  final dialog.DialogRoutes _dialogRoutes = dialog.DialogRoutes();
  final BannerRoutes _bannerRoutes = BannerRoutes();
  final SnackbarRoutes _snackbarRoutes = SnackbarRoutes();

  void navigateTo<T extends Object?>(String routeName, {Object? arguments}) =>
      navigatorKey.currentState?.pushNamed(routeName, arguments: arguments);

  Future<T?> pushBottomSheet<T>(BottomSheetRoute route) async {
    assert(navigatorKey.currentContext != null, 'navigation context is null when pushing a Bottom Sheet');

    final builder = _bottomSheetRoute.lookupBuilderByRoute(route);

    return await showModalBottomSheet(
      context: navigatorKey.currentContext!,
      builder: builder!,
      routeSettings: RouteSettings(arguments: route.message),
      isScrollControlled: true,
    );
  }

  Future<T?> pushDialog<T>(dialog.DialogRoute route) async {
    assert(navigatorKey.currentContext != null, 'navigation context is null when pushing a Dialog');

    final builder = _dialogRoutes.lookupBuilderByRoute(route);

    return await showDialog(
      context: navigatorKey.currentContext!,
      builder: builder,
      routeSettings: RouteSettings(arguments: route.message),
    );
  }

  Future<void> pushBanner<T>(BannerRoute route) async {
    assert(navigatorKey.currentContext != null, 'navigation context is null when pushing a Banner');
    BuildContext context = navigatorKey.currentContext!;

    final banner = _bannerRoutes.buildWidgetFromRoute(context, route);

    ScaffoldMessenger.of(navigatorKey.currentContext!).showMaterialBanner(banner);
  }

  Future<void> pushSnackbar<T>(SnackbarRoute route) async {
    assert(navigatorKey.currentContext != null, 'navigation context is null when pushing a Snackbar');
    BuildContext context = navigatorKey.currentContext!;

    final snackbar = _snackbarRoutes.buildWidgetFromRoute(context, route);

    ScaffoldMessenger.of(navigatorKey.currentContext!).showSnackBar(snackbar);
  }
}
