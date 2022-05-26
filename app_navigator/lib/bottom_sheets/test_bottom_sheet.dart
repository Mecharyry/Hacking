import 'package:flutter/material.dart';

import 'bottom_sheets_navigation.dart';

BottomSheetEntry testBottomSheet = BottomSheetEntry(
  '/bottom_sheet/testBottomSheet',
  (context) => Container(
    height: 200,
    color: Colors.amber,
    child: const Center(
      child: Text('Hi there!'),
    ),
  ),
);
