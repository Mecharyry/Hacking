// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dialog_navigation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DialogRoute {
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
    required TResult Function(ExampleDialog value) example,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExampleDialog value)? example,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExampleDialog value)? example,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DialogRouteCopyWith<DialogRoute> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DialogRouteCopyWith<$Res> {
  factory $DialogRouteCopyWith(
          DialogRoute value, $Res Function(DialogRoute) then) =
      _$DialogRouteCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$DialogRouteCopyWithImpl<$Res> implements $DialogRouteCopyWith<$Res> {
  _$DialogRouteCopyWithImpl(this._value, this._then);

  final DialogRoute _value;
  // ignore: unused_field
  final $Res Function(DialogRoute) _then;

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
abstract class _$$ExampleDialogCopyWith<$Res>
    implements $DialogRouteCopyWith<$Res> {
  factory _$$ExampleDialogCopyWith(
          _$ExampleDialog value, $Res Function(_$ExampleDialog) then) =
      __$$ExampleDialogCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$$ExampleDialogCopyWithImpl<$Res>
    extends _$DialogRouteCopyWithImpl<$Res>
    implements _$$ExampleDialogCopyWith<$Res> {
  __$$ExampleDialogCopyWithImpl(
      _$ExampleDialog _value, $Res Function(_$ExampleDialog) _then)
      : super(_value, (v) => _then(v as _$ExampleDialog));

  @override
  _$ExampleDialog get _value => super._value as _$ExampleDialog;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ExampleDialog(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ExampleDialog implements ExampleDialog {
  _$ExampleDialog(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'DialogRoute.example(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExampleDialog &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$ExampleDialogCopyWith<_$ExampleDialog> get copyWith =>
      __$$ExampleDialogCopyWithImpl<_$ExampleDialog>(this, _$identity);

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
    required TResult Function(ExampleDialog value) example,
  }) {
    return example(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExampleDialog value)? example,
  }) {
    return example?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExampleDialog value)? example,
    required TResult orElse(),
  }) {
    if (example != null) {
      return example(this);
    }
    return orElse();
  }
}

abstract class ExampleDialog implements DialogRoute {
  factory ExampleDialog(final String message) = _$ExampleDialog;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$ExampleDialogCopyWith<_$ExampleDialog> get copyWith =>
      throw _privateConstructorUsedError;
}
