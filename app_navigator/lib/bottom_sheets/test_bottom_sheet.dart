import 'package:flutter/material.dart';

import 'bottom_sheets_navigation.dart';

BottomSheetEntry testBottomSheet = BottomSheetEntry(
  '/bottom_sheet/testBottomSheet',
  (context) {
    final args = ModalRoute.of(context)!.settings.arguments as String;
    return Container(
      height: 200,
      color: Colors.amber,
      child: Center(
        child: Text(args),
      ),
    );
  },
);
