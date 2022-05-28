import 'dart:async';

import 'package:app_navigator/navigation/app_navigator.dart';
import 'package:app_navigator/screens/home/home_state.dart';
import 'package:app_navigator/dialog/dialog_navigation.dart' as dialog;
import 'package:bloc/bloc.dart';

import '../../banner/banner_navigation.dart';
import '../../bottom_sheet/bottom_sheet_navigation.dart';

class HomeCubit extends Cubit<HomeState> {
  final AppNavigator _appNavigator;

  HomeCubit({required AppNavigator appNavigator})
      : _appNavigator = appNavigator,
        super(HomeState.loading());

  void loadData() {
    emit(HomeState.loading());
    waitAndThenEmit(HomeState.loaded());
  }

  void showBanner() => _appNavigator.pushBanner(BannerRoute.example("Hey! I'm a banner"));

  void showDialog() => _appNavigator.pushDialog(dialog.DialogRoute.example("Hey! I'm a dialog"));

  void showBottomSheet() => _appNavigator.pushBottomSheet(BottomSheetRoute.example("Hey! I'm a bottom sheet"));

  Future<void> waitAndThenEmit(HomeState state) {
    return Future.delayed(const Duration(seconds: 2), () => emit(state));
  }
}
