import 'package:flutter/material.dart';

import 'screens/home/home_screen.dart';
import 'screens/settings/settings_screen.dart';

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
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/settings': (context) => const SettingsScreen(),
      },
    );
  }
}
