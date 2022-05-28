import 'package:app_navigator/screens/home/home_screen.dart';
import 'package:app_navigator/screens/settings/settings_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'screen_navigation.freezed.dart';

class ScreenRoutes {
  static Map<String, WidgetBuilder> routes = {for (var element in _routes) element._routeName(): element._builder()};

  static final _routes = [
    ScreenRoute.home(),
    ScreenRoute.settings(),
  ];

  static String initialRoute = ScreenRoute.home()._routeName();

  static WidgetBuilder lookupBuilderByRoute(ScreenRoute route) => route._builder();
}

@freezed
class ScreenRoute with _$ScreenRoute {
  const ScreenRoute._();
  factory ScreenRoute.settings() = _Settings;
  factory ScreenRoute.home() = _Home;

  String _routeName() => when(
        home: () => '/',
        settings: () => '/settings',
      );

  WidgetBuilder _builder() => when(
        home: () => HomeScreen.builder,
        settings: () => SettingsScreen.builder,
      );
}
