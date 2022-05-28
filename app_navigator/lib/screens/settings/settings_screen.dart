import 'package:flutter/material.dart';

import '../../navigation/typedefs.dart';

class SettingsScreen extends StatelessWidget {
  static RouteEntry route = RouteEntry(
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
