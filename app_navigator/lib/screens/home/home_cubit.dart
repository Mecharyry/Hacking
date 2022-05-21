import 'dart:async';

import 'package:app_navigator/screens/home/home_state.dart';
import 'package:bloc/bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState.loading());

  void loadData() {
    emit(HomeState.loading());
    waitAndThenEmit(HomeState.loaded());
  }

  void showBanner() {
    emit(HomeState.showBanner(snackbarMessage: "Hey! I'm a banner"));
    emit(HomeState.loaded());
  }

  void showDialog() {
    emit(HomeState.showDialog(dialogMessage: "Hey! I'm a dialog"));
    emit(HomeState.loaded());
  }

  void showBottomSheet() {
    emit(HomeState.showBottomSheet(bottomSheetMessage: "Hey! I'm a bottom sheet"));
    emit(HomeState.loaded());
  }

  Future<void> waitAndThenEmit(HomeState state) {
    return Future.delayed(const Duration(seconds: 2), () => emit(state));
  }
}
