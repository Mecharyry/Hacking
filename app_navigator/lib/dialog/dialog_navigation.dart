import 'package:app_navigator/dialog/example_dialog.dart' as dialog;
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dialog_navigation.freezed.dart';

class DialogRoutes {
  WidgetBuilder lookupBuilderByRoute(DialogRoute route) => route.when(
        example: (_) => dialog.ExampleDialog.exampleDialog,
      );
}

@freezed
class DialogRoute with _$DialogRoute {
  factory DialogRoute.example(String message) = ExampleDialog;
}
