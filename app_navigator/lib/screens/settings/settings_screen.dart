import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  static MapEntry<String, Widget Function(BuildContext)> route = MapEntry(
    '/settings',
    (context) => const SettingsScreen._(),
  );

  const SettingsScreen._({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
    );
  }
}
