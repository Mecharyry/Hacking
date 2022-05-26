import 'package:app_navigator/bottom_sheets/test_bottom_sheet.dart';
import 'package:flutter/widgets.dart';

typedef BottomSheetEntry = MapEntry<String, WidgetBuilder>;
typedef BottomSheetEntries = Map<String, WidgetBuilder>;

class BottomSheetRoutes {
  final BottomSheetEntries _routes = Map.fromEntries({testBottomSheet});

  WidgetBuilder? lookupRouteByName(String route) => _routes[route];
}
