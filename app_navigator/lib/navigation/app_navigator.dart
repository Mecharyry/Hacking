import 'package:flutter/material.dart';

class AppNavigator {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  void navigateTo<T extends Object?>(String routeName, {Object? arguments}) =>
      navigatorKey.currentState?.pushNamed(routeName, arguments: arguments);
}
