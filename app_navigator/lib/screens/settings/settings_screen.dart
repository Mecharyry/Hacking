import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  static WidgetBuilder builder = (context) => const SettingsScreen._();

  const SettingsScreen._({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
    );
  }
}
