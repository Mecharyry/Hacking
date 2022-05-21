import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState.loading() = _Loading;
  factory HomeState.loaded() = _Loaded;

  factory HomeState.showBanner({required final String snackbarMessage}) = _ShowSnackbar;
  factory HomeState.showDialog({required final String dialogMessage}) = _ShowDialog;
  factory HomeState.showBottomSheet({required final String bottomSheetMessage}) = _ShowBottomSheet;
}
