import 'package:app_navigator/snackbar/snackbar_navigation.dart';
import 'package:app_navigator/utilities/injection.dart';
import 'package:flutter/material.dart';

import '../navigation/app_navigator.dart';
import 'banner_navigation.dart';

BannerBuilder exampleBanner = (context) {
  final message = ModalRoute.of(context)!.settings.arguments as String;
  return MaterialBanner(
    backgroundColor: Colors.amber,
    content: SizedBox(
      height: 50,
      child: Center(child: Text(message)),
    ),
    actions: [
      ElevatedButton(
        onPressed: () => getIt<AppNavigator>().pushSnackbar(
          SnackbarRoute.example("Hey! I'm a snackbar called from a banner!"),
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
