import 'package:flutter/material.dart';

import 'banner_navigation.dart';

MaterialBannerBuilder exampleBanner = (context) {
  final message = ModalRoute.of(context)!.settings.arguments as String;
  return MaterialBanner(
    backgroundColor: Colors.amber,
    content: SizedBox(
      height: 50,
      child: Center(child: Text(message)),
    ),
    actions: [
      ElevatedButton(
        onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Hey! I'm a snackbar called from a banner!")),
        ),
        child: const Text('Show snackbar'),
      ),
      ElevatedButton(
        onPressed: () => ScaffoldMessenger.of(context).hideCurrentMaterialBanner(),
        child: const Text('Dismiss'),
      ),
    ],
  );
};
