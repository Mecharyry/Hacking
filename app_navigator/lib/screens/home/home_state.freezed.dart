// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String snackbarMessage) showBanner,
    required TResult Function(String dialogMessage) showDialog,
    required TResult Function(String bottomSheetMessage) showBottomSheet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String snackbarMessage)? showBanner,
    TResult Function(String dialogMessage)? showDialog,
    TResult Function(String bottomSheetMessage)? showBottomSheet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String snackbarMessage)? showBanner,
    TResult Function(String dialogMessage)? showDialog,
    TResult Function(String bottomSheetMessage)? showBottomSheet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ShowSnackbar value) showBanner,
    required TResult Function(_ShowDialog value) showDialog,
    required TResult Function(_ShowBottomSheet value) showBottomSheet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ShowSnackbar value)? showBanner,
    TResult Function(_ShowDialog value)? showDialog,
    TResult Function(_ShowBottomSheet value)? showBottomSheet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ShowSnackbar value)? showBanner,
    TResult Function(_ShowDialog value)? showDialog,
    TResult Function(_ShowBottomSheet value)? showBottomSheet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, (v) => _then(v as _$_Loading));

  @override
  _$_Loading get _value => super._value as _$_Loading;
}

/// @nodoc

class _$_Loading with DiagnosticableTreeMixin implements _Loading {
  _$_Loading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'HomeState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String snackbarMessage) showBanner,
    required TResult Function(String dialogMessage) showDialog,
    required TResult Function(String bottomSheetMessage) showBottomSheet,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String snackbarMessage)? showBanner,
    TResult Function(String dialogMessage)? showDialog,
    TResult Function(String bottomSheetMessage)? showBottomSheet,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String snackbarMessage)? showBanner,
    TResult Function(String dialogMessage)? showDialog,
    TResult Function(String bottomSheetMessage)? showBottomSheet,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ShowSnackbar value) showBanner,
    required TResult Function(_ShowDialog value) showDialog,
    required TResult Function(_ShowBottomSheet value) showBottomSheet,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ShowSnackbar value)? showBanner,
    TResult Function(_ShowDialog value)? showDialog,
    TResult Function(_ShowBottomSheet value)? showBottomSheet,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ShowSnackbar value)? showBanner,
    TResult Function(_ShowDialog value)? showDialog,
    TResult Function(_ShowBottomSheet value)? showBottomSheet,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements HomeState {
  factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, (v) => _then(v as _$_Loaded));

  @override
  _$_Loaded get _value => super._value as _$_Loaded;
}

/// @nodoc

class _$_Loaded with DiagnosticableTreeMixin implements _Loaded {
  _$_Loaded();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState.loaded()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'HomeState.loaded'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String snackbarMessage) showBanner,
    required TResult Function(String dialogMessage) showDialog,
    required TResult Function(String bottomSheetMessage) showBottomSheet,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String snackbarMessage)? showBanner,
    TResult Function(String dialogMessage)? showDialog,
    TResult Function(String bottomSheetMessage)? showBottomSheet,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String snackbarMessage)? showBanner,
    TResult Function(String dialogMessage)? showDialog,
    TResult Function(String bottomSheetMessage)? showBottomSheet,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ShowSnackbar value) showBanner,
    required TResult Function(_ShowDialog value) showDialog,
    required TResult Function(_ShowBottomSheet value) showBottomSheet,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ShowSnackbar value)? showBanner,
    TResult Function(_ShowDialog value)? showDialog,
    TResult Function(_ShowBottomSheet value)? showBottomSheet,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ShowSnackbar value)? showBanner,
    TResult Function(_ShowDialog value)? showDialog,
    TResult Function(_ShowBottomSheet value)? showBottomSheet,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements HomeState {
  factory _Loaded() = _$_Loaded;
}

/// @nodoc
abstract class _$$_ShowSnackbarCopyWith<$Res> {
  factory _$$_ShowSnackbarCopyWith(
          _$_ShowSnackbar value, $Res Function(_$_ShowSnackbar) then) =
      __$$_ShowSnackbarCopyWithImpl<$Res>;
  $Res call({String snackbarMessage});
}

/// @nodoc
class __$$_ShowSnackbarCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$$_ShowSnackbarCopyWith<$Res> {
  __$$_ShowSnackbarCopyWithImpl(
      _$_ShowSnackbar _value, $Res Function(_$_ShowSnackbar) _then)
      : super(_value, (v) => _then(v as _$_ShowSnackbar));

  @override
  _$_ShowSnackbar get _value => super._value as _$_ShowSnackbar;

  @override
  $Res call({
    Object? snackbarMessage = freezed,
  }) {
    return _then(_$_ShowSnackbar(
      snackbarMessage: snackbarMessage == freezed
          ? _value.snackbarMessage
          : snackbarMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ShowSnackbar with DiagnosticableTreeMixin implements _ShowSnackbar {
  _$_ShowSnackbar({required this.snackbarMessage});

  @override
  final String snackbarMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState.showBanner(snackbarMessage: $snackbarMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeState.showBanner'))
      ..add(DiagnosticsProperty('snackbarMessage', snackbarMessage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShowSnackbar &&
            const DeepCollectionEquality()
                .equals(other.snackbarMessage, snackbarMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(snackbarMessage));

  @JsonKey(ignore: true)
  @override
  _$$_ShowSnackbarCopyWith<_$_ShowSnackbar> get copyWith =>
      __$$_ShowSnackbarCopyWithImpl<_$_ShowSnackbar>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String snackbarMessage) showBanner,
    required TResult Function(String dialogMessage) showDialog,
    required TResult Function(String bottomSheetMessage) showBottomSheet,
  }) {
    return showBanner(snackbarMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String snackbarMessage)? showBanner,
    TResult Function(String dialogMessage)? showDialog,
    TResult Function(String bottomSheetMessage)? showBottomSheet,
  }) {
    return showBanner?.call(snackbarMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String snackbarMessage)? showBanner,
    TResult Function(String dialogMessage)? showDialog,
    TResult Function(String bottomSheetMessage)? showBottomSheet,
    required TResult orElse(),
  }) {
    if (showBanner != null) {
      return showBanner(snackbarMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ShowSnackbar value) showBanner,
    required TResult Function(_ShowDialog value) showDialog,
    required TResult Function(_ShowBottomSheet value) showBottomSheet,
  }) {
    return showBanner(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ShowSnackbar value)? showBanner,
    TResult Function(_ShowDialog value)? showDialog,
    TResult Function(_ShowBottomSheet value)? showBottomSheet,
  }) {
    return showBanner?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ShowSnackbar value)? showBanner,
    TResult Function(_ShowDialog value)? showDialog,
    TResult Function(_ShowBottomSheet value)? showBottomSheet,
    required TResult orElse(),
  }) {
    if (showBanner != null) {
      return showBanner(this);
    }
    return orElse();
  }
}

abstract class _ShowSnackbar implements HomeState {
  factory _ShowSnackbar({required final String snackbarMessage}) =
      _$_ShowSnackbar;

  String get snackbarMessage => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ShowSnackbarCopyWith<_$_ShowSnackbar> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ShowDialogCopyWith<$Res> {
  factory _$$_ShowDialogCopyWith(
          _$_ShowDialog value, $Res Function(_$_ShowDialog) then) =
      __$$_ShowDialogCopyWithImpl<$Res>;
  $Res call({String dialogMessage});
}

/// @nodoc
class __$$_ShowDialogCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$$_ShowDialogCopyWith<$Res> {
  __$$_ShowDialogCopyWithImpl(
      _$_ShowDialog _value, $Res Function(_$_ShowDialog) _then)
      : super(_value, (v) => _then(v as _$_ShowDialog));

  @override
  _$_ShowDialog get _value => super._value as _$_ShowDialog;

  @override
  $Res call({
    Object? dialogMessage = freezed,
  }) {
    return _then(_$_ShowDialog(
      dialogMessage: dialogMessage == freezed
          ? _value.dialogMessage
          : dialogMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ShowDialog with DiagnosticableTreeMixin implements _ShowDialog {
  _$_ShowDialog({required this.dialogMessage});

  @override
  final String dialogMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState.showDialog(dialogMessage: $dialogMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeState.showDialog'))
      ..add(DiagnosticsProperty('dialogMessage', dialogMessage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShowDialog &&
            const DeepCollectionEquality()
                .equals(other.dialogMessage, dialogMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(dialogMessage));

  @JsonKey(ignore: true)
  @override
  _$$_ShowDialogCopyWith<_$_ShowDialog> get copyWith =>
      __$$_ShowDialogCopyWithImpl<_$_ShowDialog>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String snackbarMessage) showBanner,
    required TResult Function(String dialogMessage) showDialog,
    required TResult Function(String bottomSheetMessage) showBottomSheet,
  }) {
    return showDialog(dialogMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String snackbarMessage)? showBanner,
    TResult Function(String dialogMessage)? showDialog,
    TResult Function(String bottomSheetMessage)? showBottomSheet,
  }) {
    return showDialog?.call(dialogMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String snackbarMessage)? showBanner,
    TResult Function(String dialogMessage)? showDialog,
    TResult Function(String bottomSheetMessage)? showBottomSheet,
    required TResult orElse(),
  }) {
    if (showDialog != null) {
      return showDialog(dialogMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ShowSnackbar value) showBanner,
    required TResult Function(_ShowDialog value) showDialog,
    required TResult Function(_ShowBottomSheet value) showBottomSheet,
  }) {
    return showDialog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ShowSnackbar value)? showBanner,
    TResult Function(_ShowDialog value)? showDialog,
    TResult Function(_ShowBottomSheet value)? showBottomSheet,
  }) {
    return showDialog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ShowSnackbar value)? showBanner,
    TResult Function(_ShowDialog value)? showDialog,
    TResult Function(_ShowBottomSheet value)? showBottomSheet,
    required TResult orElse(),
  }) {
    if (showDialog != null) {
      return showDialog(this);
    }
    return orElse();
  }
}

abstract class _ShowDialog implements HomeState {
  factory _ShowDialog({required final String dialogMessage}) = _$_ShowDialog;

  String get dialogMessage => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ShowDialogCopyWith<_$_ShowDialog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ShowBottomSheetCopyWith<$Res> {
  factory _$$_ShowBottomSheetCopyWith(
          _$_ShowBottomSheet value, $Res Function(_$_ShowBottomSheet) then) =
      __$$_ShowBottomSheetCopyWithImpl<$Res>;
  $Res call({String bottomSheetMessage});
}

/// @nodoc
class __$$_ShowBottomSheetCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$$_ShowBottomSheetCopyWith<$Res> {
  __$$_ShowBottomSheetCopyWithImpl(
      _$_ShowBottomSheet _value, $Res Function(_$_ShowBottomSheet) _then)
      : super(_value, (v) => _then(v as _$_ShowBottomSheet));

  @override
  _$_ShowBottomSheet get _value => super._value as _$_ShowBottomSheet;

  @override
  $Res call({
    Object? bottomSheetMessage = freezed,
  }) {
    return _then(_$_ShowBottomSheet(
      bottomSheetMessage: bottomSheetMessage == freezed
          ? _value.bottomSheetMessage
          : bottomSheetMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ShowBottomSheet
    with DiagnosticableTreeMixin
    implements _ShowBottomSheet {
  _$_ShowBottomSheet({required this.bottomSheetMessage});

  @override
  final String bottomSheetMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState.showBottomSheet(bottomSheetMessage: $bottomSheetMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeState.showBottomSheet'))
      ..add(DiagnosticsProperty('bottomSheetMessage', bottomSheetMessage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShowBottomSheet &&
            const DeepCollectionEquality()
                .equals(other.bottomSheetMessage, bottomSheetMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(bottomSheetMessage));

  @JsonKey(ignore: true)
  @override
  _$$_ShowBottomSheetCopyWith<_$_ShowBottomSheet> get copyWith =>
      __$$_ShowBottomSheetCopyWithImpl<_$_ShowBottomSheet>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String snackbarMessage) showBanner,
    required TResult Function(String dialogMessage) showDialog,
    required TResult Function(String bottomSheetMessage) showBottomSheet,
  }) {
    return showBottomSheet(bottomSheetMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String snackbarMessage)? showBanner,
    TResult Function(String dialogMessage)? showDialog,
    TResult Function(String bottomSheetMessage)? showBottomSheet,
  }) {
    return showBottomSheet?.call(bottomSheetMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String snackbarMessage)? showBanner,
    TResult Function(String dialogMessage)? showDialog,
    TResult Function(String bottomSheetMessage)? showBottomSheet,
    required TResult orElse(),
  }) {
    if (showBottomSheet != null) {
      return showBottomSheet(bottomSheetMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ShowSnackbar value) showBanner,
    required TResult Function(_ShowDialog value) showDialog,
    required TResult Function(_ShowBottomSheet value) showBottomSheet,
  }) {
    return showBottomSheet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ShowSnackbar value)? showBanner,
    TResult Function(_ShowDialog value)? showDialog,
    TResult Function(_ShowBottomSheet value)? showBottomSheet,
  }) {
    return showBottomSheet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ShowSnackbar value)? showBanner,
    TResult Function(_ShowDialog value)? showDialog,
    TResult Function(_ShowBottomSheet value)? showBottomSheet,
    required TResult orElse(),
  }) {
    if (showBottomSheet != null) {
      return showBottomSheet(this);
    }
    return orElse();
  }
}

abstract class _ShowBottomSheet implements HomeState {
  factory _ShowBottomSheet({required final String bottomSheetMessage}) =
      _$_ShowBottomSheet;

  String get bottomSheetMessage => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ShowBottomSheetCopyWith<_$_ShowBottomSheet> get copyWith =>
      throw _privateConstructorUsedError;
}
