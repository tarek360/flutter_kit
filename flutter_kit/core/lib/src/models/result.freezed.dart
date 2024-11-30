// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Result<T, R> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(R error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function(R error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(R error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_success<T, R> value) success,
    required TResult Function(_failure<T, R> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_success<T, R> value)? success,
    TResult? Function(_failure<T, R> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_success<T, R> value)? success,
    TResult Function(_failure<T, R> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<T, R, $Res> {
  factory $ResultCopyWith(
          Result<T, R> value, $Res Function(Result<T, R>) then) =
      _$ResultCopyWithImpl<T, R, $Res, Result<T, R>>;
}

/// @nodoc
class _$ResultCopyWithImpl<T, R, $Res, $Val extends Result<T, R>>
    implements $ResultCopyWith<T, R, $Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$successImplCopyWith<T, R, $Res> {
  factory _$$successImplCopyWith(
          _$successImpl<T, R> value, $Res Function(_$successImpl<T, R>) then) =
      __$$successImplCopyWithImpl<T, R, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$successImplCopyWithImpl<T, R, $Res>
    extends _$ResultCopyWithImpl<T, R, $Res, _$successImpl<T, R>>
    implements _$$successImplCopyWith<T, R, $Res> {
  __$$successImplCopyWithImpl(
      _$successImpl<T, R> _value, $Res Function(_$successImpl<T, R>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$successImpl<T, R>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$successImpl<T, R> extends _success<T, R> {
  const _$successImpl(this.data) : super._();

  @override
  final T data;

  @override
  String toString() {
    return 'Result<$T, $R>.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$successImpl<T, R> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$successImplCopyWith<T, R, _$successImpl<T, R>> get copyWith =>
      __$$successImplCopyWithImpl<T, R, _$successImpl<T, R>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(R error) failure,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function(R error)? failure,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(R error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_success<T, R> value) success,
    required TResult Function(_failure<T, R> value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_success<T, R> value)? success,
    TResult? Function(_failure<T, R> value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_success<T, R> value)? success,
    TResult Function(_failure<T, R> value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _success<T, R> extends Result<T, R> {
  const factory _success(final T data) = _$successImpl<T, R>;
  const _success._() : super._();

  T get data;
  @JsonKey(ignore: true)
  _$$successImplCopyWith<T, R, _$successImpl<T, R>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$failureImplCopyWith<T, R, $Res> {
  factory _$$failureImplCopyWith(
          _$failureImpl<T, R> value, $Res Function(_$failureImpl<T, R>) then) =
      __$$failureImplCopyWithImpl<T, R, $Res>;
  @useResult
  $Res call({R error});
}

/// @nodoc
class __$$failureImplCopyWithImpl<T, R, $Res>
    extends _$ResultCopyWithImpl<T, R, $Res, _$failureImpl<T, R>>
    implements _$$failureImplCopyWith<T, R, $Res> {
  __$$failureImplCopyWithImpl(
      _$failureImpl<T, R> _value, $Res Function(_$failureImpl<T, R>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$failureImpl<T, R>(
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as R,
    ));
  }
}

/// @nodoc

class _$failureImpl<T, R> extends _failure<T, R> {
  const _$failureImpl(this.error) : super._();

  @override
  final R error;

  @override
  String toString() {
    return 'Result<$T, $R>.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$failureImpl<T, R> &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$failureImplCopyWith<T, R, _$failureImpl<T, R>> get copyWith =>
      __$$failureImplCopyWithImpl<T, R, _$failureImpl<T, R>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(R error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function(R error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(R error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_success<T, R> value) success,
    required TResult Function(_failure<T, R> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_success<T, R> value)? success,
    TResult? Function(_failure<T, R> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_success<T, R> value)? success,
    TResult Function(_failure<T, R> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _failure<T, R> extends Result<T, R> {
  const factory _failure(final R error) = _$failureImpl<T, R>;
  const _failure._() : super._();

  R get error;
  @JsonKey(ignore: true)
  _$$failureImplCopyWith<T, R, _$failureImpl<T, R>> get copyWith =>
      throw _privateConstructorUsedError;
}
