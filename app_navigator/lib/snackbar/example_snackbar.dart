import 'package:flutter/material.dart';

SnackBar Function(BuildContext, String) exampleSnackbar = (context, message) {
  return SnackBar(content: Text(message));
};
