import 'package:app_navigator/banner/example_banner.dart';
import 'package:app_navigator/snackbar/example_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'snackbar_navigation.freezed.dart';

typedef SnackbarBuilder = SnackBar Function(BuildContext);

class SnackbarRoutes {
  SnackbarBuilder lookupBuilderByRoute(SnackbarRoute route) => route.when(
        example: (_) => exampleSnackbar,
      );
}

@freezed
class SnackbarRoute with _$SnackbarRoute {
  factory SnackbarRoute.example(String message) = ExampleSnackbar;
}
