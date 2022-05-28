import 'package:app_navigator/bottom_sheets/example_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bottom_sheets_navigation.freezed.dart';

typedef BottomSheetEntries = Map<BottomSheetRoute, WidgetBuilder>;

class BottomSheetRoutes {
  WidgetBuilder? lookupRouteByName(BottomSheetRoute route) => route.when(
        example: (_) => exampleBottomSheet,
      );
}

@freezed
class BottomSheetRoute with _$BottomSheetRoute {
  factory BottomSheetRoute.example(String message) = ExampleBottomSheet;
}
