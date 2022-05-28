import 'package:flutter/material.dart';

import 'snackbar_navigation.dart';

SnackbarBuilder exampleSnackbar = (context) {
  final message = ModalRoute.of(context)!.settings.arguments as String;
  return SnackBar(content: Text(message));
};
