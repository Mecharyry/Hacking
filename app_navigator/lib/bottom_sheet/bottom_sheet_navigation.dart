import 'package:app_navigator/bottom_sheet/example_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bottom_sheet_navigation.freezed.dart';

class BottomSheetRoutes {
  WidgetBuilder? lookupBuilderByRoute(BottomSheetRoute route) => route.when(
        example: (_) => exampleBottomSheet,
      );
}

@freezed
class BottomSheetRoute with _$BottomSheetRoute {
  factory BottomSheetRoute.example(String message) = ExampleBottomSheet;
}
