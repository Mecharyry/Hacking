import 'package:flutter/material.dart';

WidgetBuilder testBottomSheet = (context) {
  final args = ModalRoute.of(context)!.settings.arguments as String;
  return Container(
    height: 200,
    color: Colors.amber,
    child: Center(
      child: Text(args),
    ),
  );
};
