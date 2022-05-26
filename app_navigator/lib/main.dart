import 'package:app_navigator/screens/home/home_screen.dart';
import 'package:app_navigator/screens/settings/settings_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const _AppNavigatorApp());
}

class _AppNavigatorApp extends StatelessWidget {
  const _AppNavigatorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: HomeScreen.route.key,
      routes: Map.fromEntries([
        HomeScreen.route,
        SettingsScreen.route,
      ]),
    );
  }
}
