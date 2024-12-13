// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'x_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$XState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) initial,
    required TResult Function() loading,
    required TResult Function() submitted,
    required TResult Function(T data) data,
    required TResult Function(ErrorModel error) error,
    required TResult Function(T data, ErrorModel error) dataAndError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? initial,
    TResult? Function()? loading,
    TResult? Function()? submitted,
    TResult? Function(T data)? data,
    TResult? Function(ErrorModel error)? error,
    TResult? Function(T data, ErrorModel error)? dataAndError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? initial,
    TResult Function()? loading,
    TResult Function()? submitted,
    TResult Function(T data)? data,
    TResult Function(ErrorModel error)? error,
    TResult Function(T data, ErrorModel error)? dataAndError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_initial<T> value) initial,
    required TResult Function(_loading<T> value) loading,
    required TResult Function(_submitted<T> value) submitted,
    required TResult Function(_success<T> value) data,
    required TResult Function(_error<T> value) error,
    required TResult Function(_dataAndError<T> value) dataAndError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_initial<T> value)? initial,
    TResult? Function(_loading<T> value)? loading,
    TResult? Function(_submitted<T> value)? submitted,
    TResult? Function(_success<T> value)? data,
    TResult? Function(_error<T> value)? error,
    TResult? Function(_dataAndError<T> value)? dataAndError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initial<T> value)? initial,
    TResult Function(_loading<T> value)? loading,
    TResult Function(_submitted<T> value)? submitted,
    TResult Function(_success<T> value)? data,
    TResult Function(_error<T> value)? error,
    TResult Function(_dataAndError<T> value)? dataAndError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $XStateCopyWith<T, $Res> {
  factory $XStateCopyWith(XState<T> value, $Res Function(XState<T>) then) =
      _$XStateCopyWithImpl<T, $Res, XState<T>>;
}

/// @nodoc
class _$XStateCopyWithImpl<T, $Res, $Val extends XState<T>>
    implements $XStateCopyWith<T, $Res> {
  _$XStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of XState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$initialImplCopyWith<T, $Res> {
  factory _$$initialImplCopyWith(
          _$initialImpl<T> value, $Res Function(_$initialImpl<T>) then) =
      __$$initialImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$initialImplCopyWithImpl<T, $Res>
    extends _$XStateCopyWithImpl<T, $Res, _$initialImpl<T>>
    implements _$$initialImplCopyWith<T, $Res> {
  __$$initialImplCopyWithImpl(
      _$initialImpl<T> _value, $Res Function(_$initialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of XState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$initialImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$initialImpl<T> extends _initial<T> {
  const _$initialImpl(this.data) : super._();

  @override
  final T data;

  @override
  String toString() {
    return 'XState<$T>.initial(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$initialImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of XState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$initialImplCopyWith<T, _$initialImpl<T>> get copyWith =>
      __$$initialImplCopyWithImpl<T, _$initialImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) initial,
    required TResult Function() loading,
    required TResult Function() submitted,
    required TResult Function(T data) data,
    required TResult Function(ErrorModel error) error,
    required TResult Function(T data, ErrorModel error) dataAndError,
  }) {
    return initial(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? initial,
    TResult? Function()? loading,
    TResult? Function()? submitted,
    TResult? Function(T data)? data,
    TResult? Function(ErrorModel error)? error,
    TResult? Function(T data, ErrorModel error)? dataAndError,
  }) {
    return initial?.call(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? initial,
    TResult Function()? loading,
    TResult Function()? submitted,
    TResult Function(T data)? data,
    TResult Function(ErrorModel error)? error,
    TResult Function(T data, ErrorModel error)? dataAndError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_initial<T> value) initial,
    required TResult Function(_loading<T> value) loading,
    required TResult Function(_submitted<T> value) submitted,
    required TResult Function(_success<T> value) data,
    required TResult Function(_error<T> value) error,
    required TResult Function(_dataAndError<T> value) dataAndError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_initial<T> value)? initial,
    TResult? Function(_loading<T> value)? loading,
    TResult? Function(_submitted<T> value)? submitted,
    TResult? Function(_success<T> value)? data,
    TResult? Function(_error<T> value)? error,
    TResult? Function(_dataAndError<T> value)? dataAndError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initial<T> value)? initial,
    TResult Function(_loading<T> value)? loading,
    TResult Function(_submitted<T> value)? submitted,
    TResult Function(_success<T> value)? data,
    TResult Function(_error<T> value)? error,
    TResult Function(_dataAndError<T> value)? dataAndError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _initial<T> extends XState<T> {
  const factory _initial(final T data) = _$initialImpl<T>;
  const _initial._() : super._();

  T get data;

  /// Create a copy of XState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$initialImplCopyWith<T, _$initialImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$loadingImplCopyWith<T, $Res> {
  factory _$$loadingImplCopyWith(
          _$loadingImpl<T> value, $Res Function(_$loadingImpl<T>) then) =
      __$$loadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$loadingImplCopyWithImpl<T, $Res>
    extends _$XStateCopyWithImpl<T, $Res, _$loadingImpl<T>>
    implements _$$loadingImplCopyWith<T, $Res> {
  __$$loadingImplCopyWithImpl(
      _$loadingImpl<T> _value, $Res Function(_$loadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of XState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$loadingImpl<T> extends _loading<T> {
  const _$loadingImpl() : super._();

  @override
  String toString() {
    return 'XState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$loadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) initial,
    required TResult Function() loading,
    required TResult Function() submitted,
    required TResult Function(T data) data,
    required TResult Function(ErrorModel error) error,
    required TResult Function(T data, ErrorModel error) dataAndError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? initial,
    TResult? Function()? loading,
    TResult? Function()? submitted,
    TResult? Function(T data)? data,
    TResult? Function(ErrorModel error)? error,
    TResult? Function(T data, ErrorModel error)? dataAndError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? initial,
    TResult Function()? loading,
    TResult Function()? submitted,
    TResult Function(T data)? data,
    TResult Function(ErrorModel error)? error,
    TResult Function(T data, ErrorModel error)? dataAndError,
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
    required TResult Function(_initial<T> value) initial,
    required TResult Function(_loading<T> value) loading,
    required TResult Function(_submitted<T> value) submitted,
    required TResult Function(_success<T> value) data,
    required TResult Function(_error<T> value) error,
    required TResult Function(_dataAndError<T> value) dataAndError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_initial<T> value)? initial,
    TResult? Function(_loading<T> value)? loading,
    TResult? Function(_submitted<T> value)? submitted,
    TResult? Function(_success<T> value)? data,
    TResult? Function(_error<T> value)? error,
    TResult? Function(_dataAndError<T> value)? dataAndError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initial<T> value)? initial,
    TResult Function(_loading<T> value)? loading,
    TResult Function(_submitted<T> value)? submitted,
    TResult Function(_success<T> value)? data,
    TResult Function(_error<T> value)? error,
    TResult Function(_dataAndError<T> value)? dataAndError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _loading<T> extends XState<T> {
  const factory _loading() = _$loadingImpl<T>;
  const _loading._() : super._();
}

/// @nodoc
abstract class _$$submittedImplCopyWith<T, $Res> {
  factory _$$submittedImplCopyWith(
          _$submittedImpl<T> value, $Res Function(_$submittedImpl<T>) then) =
      __$$submittedImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$submittedImplCopyWithImpl<T, $Res>
    extends _$XStateCopyWithImpl<T, $Res, _$submittedImpl<T>>
    implements _$$submittedImplCopyWith<T, $Res> {
  __$$submittedImplCopyWithImpl(
      _$submittedImpl<T> _value, $Res Function(_$submittedImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of XState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$submittedImpl<T> extends _submitted<T> {
  const _$submittedImpl() : super._();

  @override
  String toString() {
    return 'XState<$T>.submitted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$submittedImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) initial,
    required TResult Function() loading,
    required TResult Function() submitted,
    required TResult Function(T data) data,
    required TResult Function(ErrorModel error) error,
    required TResult Function(T data, ErrorModel error) dataAndError,
  }) {
    return submitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? initial,
    TResult? Function()? loading,
    TResult? Function()? submitted,
    TResult? Function(T data)? data,
    TResult? Function(ErrorModel error)? error,
    TResult? Function(T data, ErrorModel error)? dataAndError,
  }) {
    return submitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? initial,
    TResult Function()? loading,
    TResult Function()? submitted,
    TResult Function(T data)? data,
    TResult Function(ErrorModel error)? error,
    TResult Function(T data, ErrorModel error)? dataAndError,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_initial<T> value) initial,
    required TResult Function(_loading<T> value) loading,
    required TResult Function(_submitted<T> value) submitted,
    required TResult Function(_success<T> value) data,
    required TResult Function(_error<T> value) error,
    required TResult Function(_dataAndError<T> value) dataAndError,
  }) {
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_initial<T> value)? initial,
    TResult? Function(_loading<T> value)? loading,
    TResult? Function(_submitted<T> value)? submitted,
    TResult? Function(_success<T> value)? data,
    TResult? Function(_error<T> value)? error,
    TResult? Function(_dataAndError<T> value)? dataAndError,
  }) {
    return submitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initial<T> value)? initial,
    TResult Function(_loading<T> value)? loading,
    TResult Function(_submitted<T> value)? submitted,
    TResult Function(_success<T> value)? data,
    TResult Function(_error<T> value)? error,
    TResult Function(_dataAndError<T> value)? dataAndError,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class _submitted<T> extends XState<T> {
  const factory _submitted() = _$submittedImpl<T>;
  const _submitted._() : super._();
}

/// @nodoc
abstract class _$$successImplCopyWith<T, $Res> {
  factory _$$successImplCopyWith(
          _$successImpl<T> value, $Res Function(_$successImpl<T>) then) =
      __$$successImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$successImplCopyWithImpl<T, $Res>
    extends _$XStateCopyWithImpl<T, $Res, _$successImpl<T>>
    implements _$$successImplCopyWith<T, $Res> {
  __$$successImplCopyWithImpl(
      _$successImpl<T> _value, $Res Function(_$successImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of XState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$successImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$successImpl<T> extends _success<T> {
  const _$successImpl(this.data) : super._();

  @override
  final T data;

  @override
  String toString() {
    return 'XState<$T>.data(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$successImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of XState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$successImplCopyWith<T, _$successImpl<T>> get copyWith =>
      __$$successImplCopyWithImpl<T, _$successImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) initial,
    required TResult Function() loading,
    required TResult Function() submitted,
    required TResult Function(T data) data,
    required TResult Function(ErrorModel error) error,
    required TResult Function(T data, ErrorModel error) dataAndError,
  }) {
    return data(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? initial,
    TResult? Function()? loading,
    TResult? Function()? submitted,
    TResult? Function(T data)? data,
    TResult? Function(ErrorModel error)? error,
    TResult? Function(T data, ErrorModel error)? dataAndError,
  }) {
    return data?.call(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? initial,
    TResult Function()? loading,
    TResult Function()? submitted,
    TResult Function(T data)? data,
    TResult Function(ErrorModel error)? error,
    TResult Function(T data, ErrorModel error)? dataAndError,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_initial<T> value) initial,
    required TResult Function(_loading<T> value) loading,
    required TResult Function(_submitted<T> value) submitted,
    required TResult Function(_success<T> value) data,
    required TResult Function(_error<T> value) error,
    required TResult Function(_dataAndError<T> value) dataAndError,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_initial<T> value)? initial,
    TResult? Function(_loading<T> value)? loading,
    TResult? Function(_submitted<T> value)? submitted,
    TResult? Function(_success<T> value)? data,
    TResult? Function(_error<T> value)? error,
    TResult? Function(_dataAndError<T> value)? dataAndError,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initial<T> value)? initial,
    TResult Function(_loading<T> value)? loading,
    TResult Function(_submitted<T> value)? submitted,
    TResult Function(_success<T> value)? data,
    TResult Function(_error<T> value)? error,
    TResult Function(_dataAndError<T> value)? dataAndError,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _success<T> extends XState<T> {
  const factory _success(final T data) = _$successImpl<T>;
  const _success._() : super._();

  T get data;

  /// Create a copy of XState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$successImplCopyWith<T, _$successImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$errorImplCopyWith<T, $Res> {
  factory _$$errorImplCopyWith(
          _$errorImpl<T> value, $Res Function(_$errorImpl<T>) then) =
      __$$errorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ErrorModel error});

  $ErrorModelCopyWith<$Res> get error;
}

/// @nodoc
class __$$errorImplCopyWithImpl<T, $Res>
    extends _$XStateCopyWithImpl<T, $Res, _$errorImpl<T>>
    implements _$$errorImplCopyWith<T, $Res> {
  __$$errorImplCopyWithImpl(
      _$errorImpl<T> _value, $Res Function(_$errorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of XState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$errorImpl<T>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorModel,
    ));
  }

  /// Create a copy of XState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ErrorModelCopyWith<$Res> get error {
    return $ErrorModelCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$errorImpl<T> extends _error<T> {
  const _$errorImpl(this.error) : super._();

  @override
  final ErrorModel error;

  @override
  String toString() {
    return 'XState<$T>.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$errorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of XState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$errorImplCopyWith<T, _$errorImpl<T>> get copyWith =>
      __$$errorImplCopyWithImpl<T, _$errorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) initial,
    required TResult Function() loading,
    required TResult Function() submitted,
    required TResult Function(T data) data,
    required TResult Function(ErrorModel error) error,
    required TResult Function(T data, ErrorModel error) dataAndError,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? initial,
    TResult? Function()? loading,
    TResult? Function()? submitted,
    TResult? Function(T data)? data,
    TResult? Function(ErrorModel error)? error,
    TResult? Function(T data, ErrorModel error)? dataAndError,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? initial,
    TResult Function()? loading,
    TResult Function()? submitted,
    TResult Function(T data)? data,
    TResult Function(ErrorModel error)? error,
    TResult Function(T data, ErrorModel error)? dataAndError,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_initial<T> value) initial,
    required TResult Function(_loading<T> value) loading,
    required TResult Function(_submitted<T> value) submitted,
    required TResult Function(_success<T> value) data,
    required TResult Function(_error<T> value) error,
    required TResult Function(_dataAndError<T> value) dataAndError,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_initial<T> value)? initial,
    TResult? Function(_loading<T> value)? loading,
    TResult? Function(_submitted<T> value)? submitted,
    TResult? Function(_success<T> value)? data,
    TResult? Function(_error<T> value)? error,
    TResult? Function(_dataAndError<T> value)? dataAndError,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initial<T> value)? initial,
    TResult Function(_loading<T> value)? loading,
    TResult Function(_submitted<T> value)? submitted,
    TResult Function(_success<T> value)? data,
    TResult Function(_error<T> value)? error,
    TResult Function(_dataAndError<T> value)? dataAndError,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _error<T> extends XState<T> {
  const factory _error(final ErrorModel error) = _$errorImpl<T>;
  const _error._() : super._();

  ErrorModel get error;

  /// Create a copy of XState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$errorImplCopyWith<T, _$errorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$dataAndErrorImplCopyWith<T, $Res> {
  factory _$$dataAndErrorImplCopyWith(_$dataAndErrorImpl<T> value,
          $Res Function(_$dataAndErrorImpl<T>) then) =
      __$$dataAndErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data, ErrorModel error});

  $ErrorModelCopyWith<$Res> get error;
}

/// @nodoc
class __$$dataAndErrorImplCopyWithImpl<T, $Res>
    extends _$XStateCopyWithImpl<T, $Res, _$dataAndErrorImpl<T>>
    implements _$$dataAndErrorImplCopyWith<T, $Res> {
  __$$dataAndErrorImplCopyWithImpl(
      _$dataAndErrorImpl<T> _value, $Res Function(_$dataAndErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of XState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? error = null,
  }) {
    return _then(_$dataAndErrorImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorModel,
    ));
  }

  /// Create a copy of XState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ErrorModelCopyWith<$Res> get error {
    return $ErrorModelCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$dataAndErrorImpl<T> extends _dataAndError<T> {
  const _$dataAndErrorImpl(this.data, this.error) : super._();

  @override
  final T data;
  @override
  final ErrorModel error;

  @override
  String toString() {
    return 'XState<$T>.dataAndError(data: $data, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$dataAndErrorImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(data), error);

  /// Create a copy of XState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$dataAndErrorImplCopyWith<T, _$dataAndErrorImpl<T>> get copyWith =>
      __$$dataAndErrorImplCopyWithImpl<T, _$dataAndErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) initial,
    required TResult Function() loading,
    required TResult Function() submitted,
    required TResult Function(T data) data,
    required TResult Function(ErrorModel error) error,
    required TResult Function(T data, ErrorModel error) dataAndError,
  }) {
    return dataAndError(this.data, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? initial,
    TResult? Function()? loading,
    TResult? Function()? submitted,
    TResult? Function(T data)? data,
    TResult? Function(ErrorModel error)? error,
    TResult? Function(T data, ErrorModel error)? dataAndError,
  }) {
    return dataAndError?.call(this.data, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? initial,
    TResult Function()? loading,
    TResult Function()? submitted,
    TResult Function(T data)? data,
    TResult Function(ErrorModel error)? error,
    TResult Function(T data, ErrorModel error)? dataAndError,
    required TResult orElse(),
  }) {
    if (dataAndError != null) {
      return dataAndError(this.data, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_initial<T> value) initial,
    required TResult Function(_loading<T> value) loading,
    required TResult Function(_submitted<T> value) submitted,
    required TResult Function(_success<T> value) data,
    required TResult Function(_error<T> value) error,
    required TResult Function(_dataAndError<T> value) dataAndError,
  }) {
    return dataAndError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_initial<T> value)? initial,
    TResult? Function(_loading<T> value)? loading,
    TResult? Function(_submitted<T> value)? submitted,
    TResult? Function(_success<T> value)? data,
    TResult? Function(_error<T> value)? error,
    TResult? Function(_dataAndError<T> value)? dataAndError,
  }) {
    return dataAndError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initial<T> value)? initial,
    TResult Function(_loading<T> value)? loading,
    TResult Function(_submitted<T> value)? submitted,
    TResult Function(_success<T> value)? data,
    TResult Function(_error<T> value)? error,
    TResult Function(_dataAndError<T> value)? dataAndError,
    required TResult orElse(),
  }) {
    if (dataAndError != null) {
      return dataAndError(this);
    }
    return orElse();
  }
}

abstract class _dataAndError<T> extends XState<T> {
  const factory _dataAndError(final T data, final ErrorModel error) =
      _$dataAndErrorImpl<T>;
  const _dataAndError._() : super._();

  T get data;
  ErrorModel get error;

  /// Create a copy of XState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$dataAndErrorImplCopyWith<T, _$dataAndErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$XFormState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() draft,
    required TResult Function(T? data) loading,
    required TResult Function(T data) submitted,
    required TResult Function(ErrorModel error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? draft,
    TResult? Function(T? data)? loading,
    TResult? Function(T data)? submitted,
    TResult? Function(ErrorModel error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? draft,
    TResult Function(T? data)? loading,
    TResult Function(T data)? submitted,
    TResult Function(ErrorModel error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_XFormStateDraft<T> value) draft,
    required TResult Function(_XFormStateLoading<T> value) loading,
    required TResult Function(_XFormStateSubmitted<T> value) submitted,
    required TResult Function(_XFormStateError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_XFormStateDraft<T> value)? draft,
    TResult? Function(_XFormStateLoading<T> value)? loading,
    TResult? Function(_XFormStateSubmitted<T> value)? submitted,
    TResult? Function(_XFormStateError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_XFormStateDraft<T> value)? draft,
    TResult Function(_XFormStateLoading<T> value)? loading,
    TResult Function(_XFormStateSubmitted<T> value)? submitted,
    TResult Function(_XFormStateError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $XFormStateCopyWith<T, $Res> {
  factory $XFormStateCopyWith(
          XFormState<T> value, $Res Function(XFormState<T>) then) =
      _$XFormStateCopyWithImpl<T, $Res, XFormState<T>>;
}

/// @nodoc
class _$XFormStateCopyWithImpl<T, $Res, $Val extends XFormState<T>>
    implements $XFormStateCopyWith<T, $Res> {
  _$XFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of XFormState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$XFormStateDraftImplCopyWith<T, $Res> {
  factory _$$XFormStateDraftImplCopyWith(_$XFormStateDraftImpl<T> value,
          $Res Function(_$XFormStateDraftImpl<T>) then) =
      __$$XFormStateDraftImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$XFormStateDraftImplCopyWithImpl<T, $Res>
    extends _$XFormStateCopyWithImpl<T, $Res, _$XFormStateDraftImpl<T>>
    implements _$$XFormStateDraftImplCopyWith<T, $Res> {
  __$$XFormStateDraftImplCopyWithImpl(_$XFormStateDraftImpl<T> _value,
      $Res Function(_$XFormStateDraftImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of XFormState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

@Deprecated('Use "FormStatus.draft" instead')
class _$XFormStateDraftImpl<T> extends _XFormStateDraft<T> {
  const _$XFormStateDraftImpl() : super._();

  @override
  String toString() {
    return 'XFormState<$T>.draft()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$XFormStateDraftImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() draft,
    required TResult Function(T? data) loading,
    required TResult Function(T data) submitted,
    required TResult Function(ErrorModel error) error,
  }) {
    return draft();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? draft,
    TResult? Function(T? data)? loading,
    TResult? Function(T data)? submitted,
    TResult? Function(ErrorModel error)? error,
  }) {
    return draft?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? draft,
    TResult Function(T? data)? loading,
    TResult Function(T data)? submitted,
    TResult Function(ErrorModel error)? error,
    required TResult orElse(),
  }) {
    if (draft != null) {
      return draft();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_XFormStateDraft<T> value) draft,
    required TResult Function(_XFormStateLoading<T> value) loading,
    required TResult Function(_XFormStateSubmitted<T> value) submitted,
    required TResult Function(_XFormStateError<T> value) error,
  }) {
    return draft(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_XFormStateDraft<T> value)? draft,
    TResult? Function(_XFormStateLoading<T> value)? loading,
    TResult? Function(_XFormStateSubmitted<T> value)? submitted,
    TResult? Function(_XFormStateError<T> value)? error,
  }) {
    return draft?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_XFormStateDraft<T> value)? draft,
    TResult Function(_XFormStateLoading<T> value)? loading,
    TResult Function(_XFormStateSubmitted<T> value)? submitted,
    TResult Function(_XFormStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (draft != null) {
      return draft(this);
    }
    return orElse();
  }
}

abstract class _XFormStateDraft<T> extends XFormState<T> {
  const factory _XFormStateDraft() = _$XFormStateDraftImpl<T>;
  const _XFormStateDraft._() : super._();
}

/// @nodoc
abstract class _$$XFormStateLoadingImplCopyWith<T, $Res> {
  factory _$$XFormStateLoadingImplCopyWith(_$XFormStateLoadingImpl<T> value,
          $Res Function(_$XFormStateLoadingImpl<T>) then) =
      __$$XFormStateLoadingImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T? data});
}

/// @nodoc
class __$$XFormStateLoadingImplCopyWithImpl<T, $Res>
    extends _$XFormStateCopyWithImpl<T, $Res, _$XFormStateLoadingImpl<T>>
    implements _$$XFormStateLoadingImplCopyWith<T, $Res> {
  __$$XFormStateLoadingImplCopyWithImpl(_$XFormStateLoadingImpl<T> _value,
      $Res Function(_$XFormStateLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of XFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$XFormStateLoadingImpl<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

@Deprecated('Use "FormStatus.loading" instead')
class _$XFormStateLoadingImpl<T> extends _XFormStateLoading<T> {
  const _$XFormStateLoadingImpl({this.data}) : super._();

  @override
  final T? data;

  @override
  String toString() {
    return 'XFormState<$T>.loading(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$XFormStateLoadingImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of XFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$XFormStateLoadingImplCopyWith<T, _$XFormStateLoadingImpl<T>>
      get copyWith =>
          __$$XFormStateLoadingImplCopyWithImpl<T, _$XFormStateLoadingImpl<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() draft,
    required TResult Function(T? data) loading,
    required TResult Function(T data) submitted,
    required TResult Function(ErrorModel error) error,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? draft,
    TResult? Function(T? data)? loading,
    TResult? Function(T data)? submitted,
    TResult? Function(ErrorModel error)? error,
  }) {
    return loading?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? draft,
    TResult Function(T? data)? loading,
    TResult Function(T data)? submitted,
    TResult Function(ErrorModel error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_XFormStateDraft<T> value) draft,
    required TResult Function(_XFormStateLoading<T> value) loading,
    required TResult Function(_XFormStateSubmitted<T> value) submitted,
    required TResult Function(_XFormStateError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_XFormStateDraft<T> value)? draft,
    TResult? Function(_XFormStateLoading<T> value)? loading,
    TResult? Function(_XFormStateSubmitted<T> value)? submitted,
    TResult? Function(_XFormStateError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_XFormStateDraft<T> value)? draft,
    TResult Function(_XFormStateLoading<T> value)? loading,
    TResult Function(_XFormStateSubmitted<T> value)? submitted,
    TResult Function(_XFormStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _XFormStateLoading<T> extends XFormState<T> {
  const factory _XFormStateLoading({final T? data}) =
      _$XFormStateLoadingImpl<T>;
  const _XFormStateLoading._() : super._();

  T? get data;

  /// Create a copy of XFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$XFormStateLoadingImplCopyWith<T, _$XFormStateLoadingImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$XFormStateSubmittedImplCopyWith<T, $Res> {
  factory _$$XFormStateSubmittedImplCopyWith(_$XFormStateSubmittedImpl<T> value,
          $Res Function(_$XFormStateSubmittedImpl<T>) then) =
      __$$XFormStateSubmittedImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$XFormStateSubmittedImplCopyWithImpl<T, $Res>
    extends _$XFormStateCopyWithImpl<T, $Res, _$XFormStateSubmittedImpl<T>>
    implements _$$XFormStateSubmittedImplCopyWith<T, $Res> {
  __$$XFormStateSubmittedImplCopyWithImpl(_$XFormStateSubmittedImpl<T> _value,
      $Res Function(_$XFormStateSubmittedImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of XFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$XFormStateSubmittedImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

@Deprecated('Use "FormStatus.submitted" instead')
class _$XFormStateSubmittedImpl<T> extends _XFormStateSubmitted<T> {
  const _$XFormStateSubmittedImpl(this.data) : super._();

  @override
  final T data;

  @override
  String toString() {
    return 'XFormState<$T>.submitted(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$XFormStateSubmittedImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of XFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$XFormStateSubmittedImplCopyWith<T, _$XFormStateSubmittedImpl<T>>
      get copyWith => __$$XFormStateSubmittedImplCopyWithImpl<T,
          _$XFormStateSubmittedImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() draft,
    required TResult Function(T? data) loading,
    required TResult Function(T data) submitted,
    required TResult Function(ErrorModel error) error,
  }) {
    return submitted(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? draft,
    TResult? Function(T? data)? loading,
    TResult? Function(T data)? submitted,
    TResult? Function(ErrorModel error)? error,
  }) {
    return submitted?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? draft,
    TResult Function(T? data)? loading,
    TResult Function(T data)? submitted,
    TResult Function(ErrorModel error)? error,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_XFormStateDraft<T> value) draft,
    required TResult Function(_XFormStateLoading<T> value) loading,
    required TResult Function(_XFormStateSubmitted<T> value) submitted,
    required TResult Function(_XFormStateError<T> value) error,
  }) {
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_XFormStateDraft<T> value)? draft,
    TResult? Function(_XFormStateLoading<T> value)? loading,
    TResult? Function(_XFormStateSubmitted<T> value)? submitted,
    TResult? Function(_XFormStateError<T> value)? error,
  }) {
    return submitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_XFormStateDraft<T> value)? draft,
    TResult Function(_XFormStateLoading<T> value)? loading,
    TResult Function(_XFormStateSubmitted<T> value)? submitted,
    TResult Function(_XFormStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class _XFormStateSubmitted<T> extends XFormState<T> {
  const factory _XFormStateSubmitted(final T data) =
      _$XFormStateSubmittedImpl<T>;
  const _XFormStateSubmitted._() : super._();

  T get data;

  /// Create a copy of XFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$XFormStateSubmittedImplCopyWith<T, _$XFormStateSubmittedImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$XFormStateErrorImplCopyWith<T, $Res> {
  factory _$$XFormStateErrorImplCopyWith(_$XFormStateErrorImpl<T> value,
          $Res Function(_$XFormStateErrorImpl<T>) then) =
      __$$XFormStateErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ErrorModel error});

  $ErrorModelCopyWith<$Res> get error;
}

/// @nodoc
class __$$XFormStateErrorImplCopyWithImpl<T, $Res>
    extends _$XFormStateCopyWithImpl<T, $Res, _$XFormStateErrorImpl<T>>
    implements _$$XFormStateErrorImplCopyWith<T, $Res> {
  __$$XFormStateErrorImplCopyWithImpl(_$XFormStateErrorImpl<T> _value,
      $Res Function(_$XFormStateErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of XFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$XFormStateErrorImpl<T>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorModel,
    ));
  }

  /// Create a copy of XFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ErrorModelCopyWith<$Res> get error {
    return $ErrorModelCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

@Deprecated('Use "FormStatus.error" instead')
class _$XFormStateErrorImpl<T> extends _XFormStateError<T> {
  const _$XFormStateErrorImpl(this.error) : super._();

  @override
  final ErrorModel error;

  @override
  String toString() {
    return 'XFormState<$T>.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$XFormStateErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of XFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$XFormStateErrorImplCopyWith<T, _$XFormStateErrorImpl<T>> get copyWith =>
      __$$XFormStateErrorImplCopyWithImpl<T, _$XFormStateErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() draft,
    required TResult Function(T? data) loading,
    required TResult Function(T data) submitted,
    required TResult Function(ErrorModel error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? draft,
    TResult? Function(T? data)? loading,
    TResult? Function(T data)? submitted,
    TResult? Function(ErrorModel error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? draft,
    TResult Function(T? data)? loading,
    TResult Function(T data)? submitted,
    TResult Function(ErrorModel error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_XFormStateDraft<T> value) draft,
    required TResult Function(_XFormStateLoading<T> value) loading,
    required TResult Function(_XFormStateSubmitted<T> value) submitted,
    required TResult Function(_XFormStateError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_XFormStateDraft<T> value)? draft,
    TResult? Function(_XFormStateLoading<T> value)? loading,
    TResult? Function(_XFormStateSubmitted<T> value)? submitted,
    TResult? Function(_XFormStateError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_XFormStateDraft<T> value)? draft,
    TResult Function(_XFormStateLoading<T> value)? loading,
    TResult Function(_XFormStateSubmitted<T> value)? submitted,
    TResult Function(_XFormStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _XFormStateError<T> extends XFormState<T> {
  const factory _XFormStateError(final ErrorModel error) =
      _$XFormStateErrorImpl<T>;
  const _XFormStateError._() : super._();

  ErrorModel get error;

  /// Create a copy of XFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$XFormStateErrorImplCopyWith<T, _$XFormStateErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RemoteObjectState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(T data) data,
    required TResult Function(ErrorModel error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(T data)? data,
    TResult? Function(ErrorModel error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(T data)? data,
    TResult Function(ErrorModel error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RemoteObjectLoading<T> value) loading,
    required TResult Function(_RemoteObjectData<T> value) data,
    required TResult Function(_RemoteObjectError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RemoteObjectLoading<T> value)? loading,
    TResult? Function(_RemoteObjectData<T> value)? data,
    TResult? Function(_RemoteObjectError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RemoteObjectLoading<T> value)? loading,
    TResult Function(_RemoteObjectData<T> value)? data,
    TResult Function(_RemoteObjectError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteObjectStateCopyWith<T, $Res> {
  factory $RemoteObjectStateCopyWith(RemoteObjectState<T> value,
          $Res Function(RemoteObjectState<T>) then) =
      _$RemoteObjectStateCopyWithImpl<T, $Res, RemoteObjectState<T>>;
}

/// @nodoc
class _$RemoteObjectStateCopyWithImpl<T, $Res,
        $Val extends RemoteObjectState<T>>
    implements $RemoteObjectStateCopyWith<T, $Res> {
  _$RemoteObjectStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RemoteObjectState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$RemoteObjectLoadingImplCopyWith<T, $Res> {
  factory _$$RemoteObjectLoadingImplCopyWith(_$RemoteObjectLoadingImpl<T> value,
          $Res Function(_$RemoteObjectLoadingImpl<T>) then) =
      __$$RemoteObjectLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$RemoteObjectLoadingImplCopyWithImpl<T, $Res>
    extends _$RemoteObjectStateCopyWithImpl<T, $Res,
        _$RemoteObjectLoadingImpl<T>>
    implements _$$RemoteObjectLoadingImplCopyWith<T, $Res> {
  __$$RemoteObjectLoadingImplCopyWithImpl(_$RemoteObjectLoadingImpl<T> _value,
      $Res Function(_$RemoteObjectLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of RemoteObjectState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RemoteObjectLoadingImpl<T> extends _RemoteObjectLoading<T> {
  const _$RemoteObjectLoadingImpl() : super._();

  @override
  String toString() {
    return 'RemoteObjectState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoteObjectLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(T data) data,
    required TResult Function(ErrorModel error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(T data)? data,
    TResult? Function(ErrorModel error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(T data)? data,
    TResult Function(ErrorModel error)? error,
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
    required TResult Function(_RemoteObjectLoading<T> value) loading,
    required TResult Function(_RemoteObjectData<T> value) data,
    required TResult Function(_RemoteObjectError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RemoteObjectLoading<T> value)? loading,
    TResult? Function(_RemoteObjectData<T> value)? data,
    TResult? Function(_RemoteObjectError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RemoteObjectLoading<T> value)? loading,
    TResult Function(_RemoteObjectData<T> value)? data,
    TResult Function(_RemoteObjectError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _RemoteObjectLoading<T> extends RemoteObjectState<T> {
  const factory _RemoteObjectLoading() = _$RemoteObjectLoadingImpl<T>;
  const _RemoteObjectLoading._() : super._();
}

/// @nodoc
abstract class _$$RemoteObjectDataImplCopyWith<T, $Res> {
  factory _$$RemoteObjectDataImplCopyWith(_$RemoteObjectDataImpl<T> value,
          $Res Function(_$RemoteObjectDataImpl<T>) then) =
      __$$RemoteObjectDataImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$RemoteObjectDataImplCopyWithImpl<T, $Res>
    extends _$RemoteObjectStateCopyWithImpl<T, $Res, _$RemoteObjectDataImpl<T>>
    implements _$$RemoteObjectDataImplCopyWith<T, $Res> {
  __$$RemoteObjectDataImplCopyWithImpl(_$RemoteObjectDataImpl<T> _value,
      $Res Function(_$RemoteObjectDataImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of RemoteObjectState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$RemoteObjectDataImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$RemoteObjectDataImpl<T> extends _RemoteObjectData<T> {
  const _$RemoteObjectDataImpl(this.data) : super._();

  @override
  final T data;

  @override
  String toString() {
    return 'RemoteObjectState<$T>.data(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoteObjectDataImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of RemoteObjectState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoteObjectDataImplCopyWith<T, _$RemoteObjectDataImpl<T>> get copyWith =>
      __$$RemoteObjectDataImplCopyWithImpl<T, _$RemoteObjectDataImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(T data) data,
    required TResult Function(ErrorModel error) error,
  }) {
    return data(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(T data)? data,
    TResult? Function(ErrorModel error)? error,
  }) {
    return data?.call(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(T data)? data,
    TResult Function(ErrorModel error)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RemoteObjectLoading<T> value) loading,
    required TResult Function(_RemoteObjectData<T> value) data,
    required TResult Function(_RemoteObjectError<T> value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RemoteObjectLoading<T> value)? loading,
    TResult? Function(_RemoteObjectData<T> value)? data,
    TResult? Function(_RemoteObjectError<T> value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RemoteObjectLoading<T> value)? loading,
    TResult Function(_RemoteObjectData<T> value)? data,
    TResult Function(_RemoteObjectError<T> value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _RemoteObjectData<T> extends RemoteObjectState<T> {
  const factory _RemoteObjectData(final T data) = _$RemoteObjectDataImpl<T>;
  const _RemoteObjectData._() : super._();

  T get data;

  /// Create a copy of RemoteObjectState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoteObjectDataImplCopyWith<T, _$RemoteObjectDataImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoteObjectErrorImplCopyWith<T, $Res> {
  factory _$$RemoteObjectErrorImplCopyWith(_$RemoteObjectErrorImpl<T> value,
          $Res Function(_$RemoteObjectErrorImpl<T>) then) =
      __$$RemoteObjectErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ErrorModel error});

  $ErrorModelCopyWith<$Res> get error;
}

/// @nodoc
class __$$RemoteObjectErrorImplCopyWithImpl<T, $Res>
    extends _$RemoteObjectStateCopyWithImpl<T, $Res, _$RemoteObjectErrorImpl<T>>
    implements _$$RemoteObjectErrorImplCopyWith<T, $Res> {
  __$$RemoteObjectErrorImplCopyWithImpl(_$RemoteObjectErrorImpl<T> _value,
      $Res Function(_$RemoteObjectErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of RemoteObjectState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$RemoteObjectErrorImpl<T>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorModel,
    ));
  }

  /// Create a copy of RemoteObjectState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ErrorModelCopyWith<$Res> get error {
    return $ErrorModelCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$RemoteObjectErrorImpl<T> extends _RemoteObjectError<T> {
  const _$RemoteObjectErrorImpl(this.error) : super._();

  @override
  final ErrorModel error;

  @override
  String toString() {
    return 'RemoteObjectState<$T>.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoteObjectErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of RemoteObjectState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoteObjectErrorImplCopyWith<T, _$RemoteObjectErrorImpl<T>>
      get copyWith =>
          __$$RemoteObjectErrorImplCopyWithImpl<T, _$RemoteObjectErrorImpl<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(T data) data,
    required TResult Function(ErrorModel error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(T data)? data,
    TResult? Function(ErrorModel error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(T data)? data,
    TResult Function(ErrorModel error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RemoteObjectLoading<T> value) loading,
    required TResult Function(_RemoteObjectData<T> value) data,
    required TResult Function(_RemoteObjectError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RemoteObjectLoading<T> value)? loading,
    TResult? Function(_RemoteObjectData<T> value)? data,
    TResult? Function(_RemoteObjectError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RemoteObjectLoading<T> value)? loading,
    TResult Function(_RemoteObjectData<T> value)? data,
    TResult Function(_RemoteObjectError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _RemoteObjectError<T> extends RemoteObjectState<T> {
  const factory _RemoteObjectError(final ErrorModel error) =
      _$RemoteObjectErrorImpl<T>;
  const _RemoteObjectError._() : super._();

  ErrorModel get error;

  /// Create a copy of RemoteObjectState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoteObjectErrorImplCopyWith<T, _$RemoteObjectErrorImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ErrorModel {
  String get message => throw _privateConstructorUsedError;
  ResultErrorType get resultErrorType => throw _privateConstructorUsedError;

  /// Create a copy of ErrorModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ErrorModelCopyWith<ErrorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorModelCopyWith<$Res> {
  factory $ErrorModelCopyWith(
          ErrorModel value, $Res Function(ErrorModel) then) =
      _$ErrorModelCopyWithImpl<$Res, ErrorModel>;
  @useResult
  $Res call({String message, ResultErrorType resultErrorType});
}

/// @nodoc
class _$ErrorModelCopyWithImpl<$Res, $Val extends ErrorModel>
    implements $ErrorModelCopyWith<$Res> {
  _$ErrorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ErrorModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? resultErrorType = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      resultErrorType: null == resultErrorType
          ? _value.resultErrorType
          : resultErrorType // ignore: cast_nullable_to_non_nullable
              as ResultErrorType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ErrorModelImplCopyWith<$Res>
    implements $ErrorModelCopyWith<$Res> {
  factory _$$ErrorModelImplCopyWith(
          _$ErrorModelImpl value, $Res Function(_$ErrorModelImpl) then) =
      __$$ErrorModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, ResultErrorType resultErrorType});
}

/// @nodoc
class __$$ErrorModelImplCopyWithImpl<$Res>
    extends _$ErrorModelCopyWithImpl<$Res, _$ErrorModelImpl>
    implements _$$ErrorModelImplCopyWith<$Res> {
  __$$ErrorModelImplCopyWithImpl(
      _$ErrorModelImpl _value, $Res Function(_$ErrorModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ErrorModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? resultErrorType = null,
  }) {
    return _then(_$ErrorModelImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      resultErrorType: null == resultErrorType
          ? _value.resultErrorType
          : resultErrorType // ignore: cast_nullable_to_non_nullable
              as ResultErrorType,
    ));
  }
}

/// @nodoc

class _$ErrorModelImpl extends _ErrorModel {
  const _$ErrorModelImpl({required this.message, required this.resultErrorType})
      : super._();

  @override
  final String message;
  @override
  final ResultErrorType resultErrorType;

  @override
  String toString() {
    return 'ErrorModel(message: $message, resultErrorType: $resultErrorType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorModelImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.resultErrorType, resultErrorType) ||
                other.resultErrorType == resultErrorType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, resultErrorType);

  /// Create a copy of ErrorModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorModelImplCopyWith<_$ErrorModelImpl> get copyWith =>
      __$$ErrorModelImplCopyWithImpl<_$ErrorModelImpl>(this, _$identity);
}

abstract class _ErrorModel extends ErrorModel {
  const factory _ErrorModel(
      {required final String message,
      required final ResultErrorType resultErrorType}) = _$ErrorModelImpl;
  const _ErrorModel._() : super._();

  @override
  String get message;
  @override
  ResultErrorType get resultErrorType;

  /// Create a copy of ErrorModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorModelImplCopyWith<_$ErrorModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FormStatus<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() draft,
    required TResult Function(T? data) loading,
    required TResult Function(T data) submitted,
    required TResult Function(ErrorModel error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? draft,
    TResult? Function(T? data)? loading,
    TResult? Function(T data)? submitted,
    TResult? Function(ErrorModel error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? draft,
    TResult Function(T? data)? loading,
    TResult Function(T data)? submitted,
    TResult Function(ErrorModel error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FormStatusDraft<T> value) draft,
    required TResult Function(_FormStatusLoading<T> value) loading,
    required TResult Function(_FormStatusSubmitted<T> value) submitted,
    required TResult Function(_FormStatusError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FormStatusDraft<T> value)? draft,
    TResult? Function(_FormStatusLoading<T> value)? loading,
    TResult? Function(_FormStatusSubmitted<T> value)? submitted,
    TResult? Function(_FormStatusError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FormStatusDraft<T> value)? draft,
    TResult Function(_FormStatusLoading<T> value)? loading,
    TResult Function(_FormStatusSubmitted<T> value)? submitted,
    TResult Function(_FormStatusError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormStatusCopyWith<T, $Res> {
  factory $FormStatusCopyWith(
          FormStatus<T> value, $Res Function(FormStatus<T>) then) =
      _$FormStatusCopyWithImpl<T, $Res, FormStatus<T>>;
}

/// @nodoc
class _$FormStatusCopyWithImpl<T, $Res, $Val extends FormStatus<T>>
    implements $FormStatusCopyWith<T, $Res> {
  _$FormStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FormStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FormStatusDraftImplCopyWith<T, $Res> {
  factory _$$FormStatusDraftImplCopyWith(_$FormStatusDraftImpl<T> value,
          $Res Function(_$FormStatusDraftImpl<T>) then) =
      __$$FormStatusDraftImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$FormStatusDraftImplCopyWithImpl<T, $Res>
    extends _$FormStatusCopyWithImpl<T, $Res, _$FormStatusDraftImpl<T>>
    implements _$$FormStatusDraftImplCopyWith<T, $Res> {
  __$$FormStatusDraftImplCopyWithImpl(_$FormStatusDraftImpl<T> _value,
      $Res Function(_$FormStatusDraftImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of FormStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FormStatusDraftImpl<T> extends _FormStatusDraft<T> {
  const _$FormStatusDraftImpl() : super._();

  @override
  String toString() {
    return 'FormStatus<$T>.draft()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FormStatusDraftImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() draft,
    required TResult Function(T? data) loading,
    required TResult Function(T data) submitted,
    required TResult Function(ErrorModel error) error,
  }) {
    return draft();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? draft,
    TResult? Function(T? data)? loading,
    TResult? Function(T data)? submitted,
    TResult? Function(ErrorModel error)? error,
  }) {
    return draft?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? draft,
    TResult Function(T? data)? loading,
    TResult Function(T data)? submitted,
    TResult Function(ErrorModel error)? error,
    required TResult orElse(),
  }) {
    if (draft != null) {
      return draft();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FormStatusDraft<T> value) draft,
    required TResult Function(_FormStatusLoading<T> value) loading,
    required TResult Function(_FormStatusSubmitted<T> value) submitted,
    required TResult Function(_FormStatusError<T> value) error,
  }) {
    return draft(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FormStatusDraft<T> value)? draft,
    TResult? Function(_FormStatusLoading<T> value)? loading,
    TResult? Function(_FormStatusSubmitted<T> value)? submitted,
    TResult? Function(_FormStatusError<T> value)? error,
  }) {
    return draft?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FormStatusDraft<T> value)? draft,
    TResult Function(_FormStatusLoading<T> value)? loading,
    TResult Function(_FormStatusSubmitted<T> value)? submitted,
    TResult Function(_FormStatusError<T> value)? error,
    required TResult orElse(),
  }) {
    if (draft != null) {
      return draft(this);
    }
    return orElse();
  }
}

abstract class _FormStatusDraft<T> extends FormStatus<T> {
  const factory _FormStatusDraft() = _$FormStatusDraftImpl<T>;
  const _FormStatusDraft._() : super._();
}

/// @nodoc
abstract class _$$FormStatusLoadingImplCopyWith<T, $Res> {
  factory _$$FormStatusLoadingImplCopyWith(_$FormStatusLoadingImpl<T> value,
          $Res Function(_$FormStatusLoadingImpl<T>) then) =
      __$$FormStatusLoadingImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T? data});
}

/// @nodoc
class __$$FormStatusLoadingImplCopyWithImpl<T, $Res>
    extends _$FormStatusCopyWithImpl<T, $Res, _$FormStatusLoadingImpl<T>>
    implements _$$FormStatusLoadingImplCopyWith<T, $Res> {
  __$$FormStatusLoadingImplCopyWithImpl(_$FormStatusLoadingImpl<T> _value,
      $Res Function(_$FormStatusLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of FormStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$FormStatusLoadingImpl<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$FormStatusLoadingImpl<T> extends _FormStatusLoading<T> {
  const _$FormStatusLoadingImpl({this.data}) : super._();

  @override
  final T? data;

  @override
  String toString() {
    return 'FormStatus<$T>.loading(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormStatusLoadingImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of FormStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FormStatusLoadingImplCopyWith<T, _$FormStatusLoadingImpl<T>>
      get copyWith =>
          __$$FormStatusLoadingImplCopyWithImpl<T, _$FormStatusLoadingImpl<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() draft,
    required TResult Function(T? data) loading,
    required TResult Function(T data) submitted,
    required TResult Function(ErrorModel error) error,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? draft,
    TResult? Function(T? data)? loading,
    TResult? Function(T data)? submitted,
    TResult? Function(ErrorModel error)? error,
  }) {
    return loading?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? draft,
    TResult Function(T? data)? loading,
    TResult Function(T data)? submitted,
    TResult Function(ErrorModel error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FormStatusDraft<T> value) draft,
    required TResult Function(_FormStatusLoading<T> value) loading,
    required TResult Function(_FormStatusSubmitted<T> value) submitted,
    required TResult Function(_FormStatusError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FormStatusDraft<T> value)? draft,
    TResult? Function(_FormStatusLoading<T> value)? loading,
    TResult? Function(_FormStatusSubmitted<T> value)? submitted,
    TResult? Function(_FormStatusError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FormStatusDraft<T> value)? draft,
    TResult Function(_FormStatusLoading<T> value)? loading,
    TResult Function(_FormStatusSubmitted<T> value)? submitted,
    TResult Function(_FormStatusError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _FormStatusLoading<T> extends FormStatus<T> {
  const factory _FormStatusLoading({final T? data}) =
      _$FormStatusLoadingImpl<T>;
  const _FormStatusLoading._() : super._();

  T? get data;

  /// Create a copy of FormStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FormStatusLoadingImplCopyWith<T, _$FormStatusLoadingImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FormStatusSubmittedImplCopyWith<T, $Res> {
  factory _$$FormStatusSubmittedImplCopyWith(_$FormStatusSubmittedImpl<T> value,
          $Res Function(_$FormStatusSubmittedImpl<T>) then) =
      __$$FormStatusSubmittedImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$FormStatusSubmittedImplCopyWithImpl<T, $Res>
    extends _$FormStatusCopyWithImpl<T, $Res, _$FormStatusSubmittedImpl<T>>
    implements _$$FormStatusSubmittedImplCopyWith<T, $Res> {
  __$$FormStatusSubmittedImplCopyWithImpl(_$FormStatusSubmittedImpl<T> _value,
      $Res Function(_$FormStatusSubmittedImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of FormStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$FormStatusSubmittedImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$FormStatusSubmittedImpl<T> extends _FormStatusSubmitted<T> {
  const _$FormStatusSubmittedImpl(this.data) : super._();

  @override
  final T data;

  @override
  String toString() {
    return 'FormStatus<$T>.submitted(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormStatusSubmittedImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of FormStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FormStatusSubmittedImplCopyWith<T, _$FormStatusSubmittedImpl<T>>
      get copyWith => __$$FormStatusSubmittedImplCopyWithImpl<T,
          _$FormStatusSubmittedImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() draft,
    required TResult Function(T? data) loading,
    required TResult Function(T data) submitted,
    required TResult Function(ErrorModel error) error,
  }) {
    return submitted(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? draft,
    TResult? Function(T? data)? loading,
    TResult? Function(T data)? submitted,
    TResult? Function(ErrorModel error)? error,
  }) {
    return submitted?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? draft,
    TResult Function(T? data)? loading,
    TResult Function(T data)? submitted,
    TResult Function(ErrorModel error)? error,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FormStatusDraft<T> value) draft,
    required TResult Function(_FormStatusLoading<T> value) loading,
    required TResult Function(_FormStatusSubmitted<T> value) submitted,
    required TResult Function(_FormStatusError<T> value) error,
  }) {
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FormStatusDraft<T> value)? draft,
    TResult? Function(_FormStatusLoading<T> value)? loading,
    TResult? Function(_FormStatusSubmitted<T> value)? submitted,
    TResult? Function(_FormStatusError<T> value)? error,
  }) {
    return submitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FormStatusDraft<T> value)? draft,
    TResult Function(_FormStatusLoading<T> value)? loading,
    TResult Function(_FormStatusSubmitted<T> value)? submitted,
    TResult Function(_FormStatusError<T> value)? error,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class _FormStatusSubmitted<T> extends FormStatus<T> {
  const factory _FormStatusSubmitted(final T data) =
      _$FormStatusSubmittedImpl<T>;
  const _FormStatusSubmitted._() : super._();

  T get data;

  /// Create a copy of FormStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FormStatusSubmittedImplCopyWith<T, _$FormStatusSubmittedImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FormStatusErrorImplCopyWith<T, $Res> {
  factory _$$FormStatusErrorImplCopyWith(_$FormStatusErrorImpl<T> value,
          $Res Function(_$FormStatusErrorImpl<T>) then) =
      __$$FormStatusErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ErrorModel error});

  $ErrorModelCopyWith<$Res> get error;
}

/// @nodoc
class __$$FormStatusErrorImplCopyWithImpl<T, $Res>
    extends _$FormStatusCopyWithImpl<T, $Res, _$FormStatusErrorImpl<T>>
    implements _$$FormStatusErrorImplCopyWith<T, $Res> {
  __$$FormStatusErrorImplCopyWithImpl(_$FormStatusErrorImpl<T> _value,
      $Res Function(_$FormStatusErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of FormStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$FormStatusErrorImpl<T>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorModel,
    ));
  }

  /// Create a copy of FormStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ErrorModelCopyWith<$Res> get error {
    return $ErrorModelCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$FormStatusErrorImpl<T> extends _FormStatusError<T> {
  const _$FormStatusErrorImpl(this.error) : super._();

  @override
  final ErrorModel error;

  @override
  String toString() {
    return 'FormStatus<$T>.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormStatusErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of FormStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FormStatusErrorImplCopyWith<T, _$FormStatusErrorImpl<T>> get copyWith =>
      __$$FormStatusErrorImplCopyWithImpl<T, _$FormStatusErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() draft,
    required TResult Function(T? data) loading,
    required TResult Function(T data) submitted,
    required TResult Function(ErrorModel error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? draft,
    TResult? Function(T? data)? loading,
    TResult? Function(T data)? submitted,
    TResult? Function(ErrorModel error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? draft,
    TResult Function(T? data)? loading,
    TResult Function(T data)? submitted,
    TResult Function(ErrorModel error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FormStatusDraft<T> value) draft,
    required TResult Function(_FormStatusLoading<T> value) loading,
    required TResult Function(_FormStatusSubmitted<T> value) submitted,
    required TResult Function(_FormStatusError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FormStatusDraft<T> value)? draft,
    TResult? Function(_FormStatusLoading<T> value)? loading,
    TResult? Function(_FormStatusSubmitted<T> value)? submitted,
    TResult? Function(_FormStatusError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FormStatusDraft<T> value)? draft,
    TResult Function(_FormStatusLoading<T> value)? loading,
    TResult Function(_FormStatusSubmitted<T> value)? submitted,
    TResult Function(_FormStatusError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _FormStatusError<T> extends FormStatus<T> {
  const factory _FormStatusError(final ErrorModel error) =
      _$FormStatusErrorImpl<T>;
  const _FormStatusError._() : super._();

  ErrorModel get error;

  /// Create a copy of FormStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FormStatusErrorImplCopyWith<T, _$FormStatusErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
