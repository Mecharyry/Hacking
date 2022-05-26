import 'package:app_navigator/navigation/app_navigator.dart';
import 'package:app_navigator/screens/home/home_screen.dart';
import 'package:app_navigator/screens/settings/settings_screen.dart';
import 'package:app_navigator/utilities/injection.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupInjection();
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
      navigatorKey: getIt<AppNavigator>().navigatorKey,
      initialRoute: HomeScreen.route.key,
      routes: Map.fromEntries([
        HomeScreen.route,
        SettingsScreen.route,
      ]),
    );
  }
}
