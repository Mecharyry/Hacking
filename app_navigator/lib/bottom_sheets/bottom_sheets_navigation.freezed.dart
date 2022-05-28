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
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) example,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? example,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? example,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExampleBottomSheet value) example,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExampleBottomSheet value)? example,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExampleBottomSheet value)? example,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BottomSheetRouteCopyWith<BottomSheetRoute> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomSheetRouteCopyWith<$Res> {
  factory $BottomSheetRouteCopyWith(
          BottomSheetRoute value, $Res Function(BottomSheetRoute) then) =
      _$BottomSheetRouteCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$BottomSheetRouteCopyWithImpl<$Res>
    implements $BottomSheetRouteCopyWith<$Res> {
  _$BottomSheetRouteCopyWithImpl(this._value, this._then);

  final BottomSheetRoute _value;
  // ignore: unused_field
  final $Res Function(BottomSheetRoute) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$ExampleBottomSheetCopyWith<$Res>
    implements $BottomSheetRouteCopyWith<$Res> {
  factory _$$ExampleBottomSheetCopyWith(_$ExampleBottomSheet value,
          $Res Function(_$ExampleBottomSheet) then) =
      __$$ExampleBottomSheetCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$$ExampleBottomSheetCopyWithImpl<$Res>
    extends _$BottomSheetRouteCopyWithImpl<$Res>
    implements _$$ExampleBottomSheetCopyWith<$Res> {
  __$$ExampleBottomSheetCopyWithImpl(
      _$ExampleBottomSheet _value, $Res Function(_$ExampleBottomSheet) _then)
      : super(_value, (v) => _then(v as _$ExampleBottomSheet));

  @override
  _$ExampleBottomSheet get _value => super._value as _$ExampleBottomSheet;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ExampleBottomSheet(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ExampleBottomSheet implements ExampleBottomSheet {
  _$ExampleBottomSheet(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'BottomSheetRoute.example(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExampleBottomSheet &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$ExampleBottomSheetCopyWith<_$ExampleBottomSheet> get copyWith =>
      __$$ExampleBottomSheetCopyWithImpl<_$ExampleBottomSheet>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) example,
  }) {
    return example(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? example,
  }) {
    return example?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? example,
    required TResult orElse(),
  }) {
    if (example != null) {
      return example(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExampleBottomSheet value) example,
  }) {
    return example(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExampleBottomSheet value)? example,
  }) {
    return example?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExampleBottomSheet value)? example,
    required TResult orElse(),
  }) {
    if (example != null) {
      return example(this);
    }
    return orElse();
  }
}

abstract class ExampleBottomSheet implements BottomSheetRoute {
  factory ExampleBottomSheet(final String message) = _$ExampleBottomSheet;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$ExampleBottomSheetCopyWith<_$ExampleBottomSheet> get copyWith =>
      throw _privateConstructorUsedError;
}
