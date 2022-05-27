// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bottom_sheets_navigation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BottomSheetRoute {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() home,
    required TResult Function() settings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? home,
    TResult Function()? settings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? home,
    TResult Function()? settings,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeBottomSheet value) home,
    required TResult Function(SettingsBottomSheet value) settings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeBottomSheet value)? home,
    TResult Function(SettingsBottomSheet value)? settings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeBottomSheet value)? home,
    TResult Function(SettingsBottomSheet value)? settings,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomSheetRouteCopyWith<$Res> {
  factory $BottomSheetRouteCopyWith(
          BottomSheetRoute value, $Res Function(BottomSheetRoute) then) =
      _$BottomSheetRouteCopyWithImpl<$Res>;
}

/// @nodoc
class _$BottomSheetRouteCopyWithImpl<$Res>
    implements $BottomSheetRouteCopyWith<$Res> {
  _$BottomSheetRouteCopyWithImpl(this._value, this._then);

  final BottomSheetRoute _value;
  // ignore: unused_field
  final $Res Function(BottomSheetRoute) _then;
}

/// @nodoc
abstract class _$$HomeBottomSheetCopyWith<$Res> {
  factory _$$HomeBottomSheetCopyWith(
          _$HomeBottomSheet value, $Res Function(_$HomeBottomSheet) then) =
      __$$HomeBottomSheetCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeBottomSheetCopyWithImpl<$Res>
    extends _$BottomSheetRouteCopyWithImpl<$Res>
    implements _$$HomeBottomSheetCopyWith<$Res> {
  __$$HomeBottomSheetCopyWithImpl(
      _$HomeBottomSheet _value, $Res Function(_$HomeBottomSheet) _then)
      : super(_value, (v) => _then(v as _$HomeBottomSheet));

  @override
  _$HomeBottomSheet get _value => super._value as _$HomeBottomSheet;
}

/// @nodoc

class _$HomeBottomSheet implements HomeBottomSheet {
  _$HomeBottomSheet();

  @override
  String toString() {
    return 'BottomSheetRoute.home()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeBottomSheet);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() home,
    required TResult Function() settings,
  }) {
    return home();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? home,
    TResult Function()? settings,
  }) {
    return home?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? home,
    TResult Function()? settings,
    required TResult orElse(),
  }) {
    if (home != null) {
      return home();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeBottomSheet value) home,
    required TResult Function(SettingsBottomSheet value) settings,
  }) {
    return home(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeBottomSheet value)? home,
    TResult Function(SettingsBottomSheet value)? settings,
  }) {
    return home?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeBottomSheet value)? home,
    TResult Function(SettingsBottomSheet value)? settings,
    required TResult orElse(),
  }) {
    if (home != null) {
      return home(this);
    }
    return orElse();
  }
}

abstract class HomeBottomSheet implements BottomSheetRoute {
  factory HomeBottomSheet() = _$HomeBottomSheet;
}

/// @nodoc
abstract class _$$SettingsBottomSheetCopyWith<$Res> {
  factory _$$SettingsBottomSheetCopyWith(_$SettingsBottomSheet value,
          $Res Function(_$SettingsBottomSheet) then) =
      __$$SettingsBottomSheetCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SettingsBottomSheetCopyWithImpl<$Res>
    extends _$BottomSheetRouteCopyWithImpl<$Res>
    implements _$$SettingsBottomSheetCopyWith<$Res> {
  __$$SettingsBottomSheetCopyWithImpl(
      _$SettingsBottomSheet _value, $Res Function(_$SettingsBottomSheet) _then)
      : super(_value, (v) => _then(v as _$SettingsBottomSheet));

  @override
  _$SettingsBottomSheet get _value => super._value as _$SettingsBottomSheet;
}

/// @nodoc

class _$SettingsBottomSheet implements SettingsBottomSheet {
  _$SettingsBottomSheet();

  @override
  String toString() {
    return 'BottomSheetRoute.settings()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SettingsBottomSheet);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() home,
    required TResult Function() settings,
  }) {
    return settings();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? home,
    TResult Function()? settings,
  }) {
    return settings?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? home,
    TResult Function()? settings,
    required TResult orElse(),
  }) {
    if (settings != null) {
      return settings();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeBottomSheet value) home,
    required TResult Function(SettingsBottomSheet value) settings,
  }) {
    return settings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeBottomSheet value)? home,
    TResult Function(SettingsBottomSheet value)? settings,
  }) {
    return settings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeBottomSheet value)? home,
    TResult Function(SettingsBottomSheet value)? settings,
    required TResult orElse(),
  }) {
    if (settings != null) {
      return settings(this);
    }
    return orElse();
  }
}

abstract class SettingsBottomSheet implements BottomSheetRoute {
  factory SettingsBottomSheet() = _$SettingsBottomSheet;
}
