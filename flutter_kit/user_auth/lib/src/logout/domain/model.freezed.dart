// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LogoutResponse {
  bool get success => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LogoutResponseCopyWith<LogoutResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogoutResponseCopyWith<$Res> {
  factory $LogoutResponseCopyWith(
          LogoutResponse value, $Res Function(LogoutResponse) then) =
      _$LogoutResponseCopyWithImpl<$Res, LogoutResponse>;
  @useResult
  $Res call({bool success});
}

/// @nodoc
class _$LogoutResponseCopyWithImpl<$Res, $Val extends LogoutResponse>
    implements $LogoutResponseCopyWith<$Res> {
  _$LogoutResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LogoutResponseCopyWith<$Res>
    implements $LogoutResponseCopyWith<$Res> {
  factory _$$_LogoutResponseCopyWith(
          _$_LogoutResponse value, $Res Function(_$_LogoutResponse) then) =
      __$$_LogoutResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success});
}

/// @nodoc
class __$$_LogoutResponseCopyWithImpl<$Res>
    extends _$LogoutResponseCopyWithImpl<$Res, _$_LogoutResponse>
    implements _$$_LogoutResponseCopyWith<$Res> {
  __$$_LogoutResponseCopyWithImpl(
      _$_LogoutResponse _value, $Res Function(_$_LogoutResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
  }) {
    return _then(_$_LogoutResponse(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LogoutResponse extends _LogoutResponse {
  const _$_LogoutResponse({required this.success}) : super._();

  @override
  final bool success;

  @override
  String toString() {
    return 'LogoutResponse(success: $success)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LogoutResponse &&
            (identical(other.success, success) || other.success == success));
  }

  @override
  int get hashCode => Object.hash(runtimeType, success);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LogoutResponseCopyWith<_$_LogoutResponse> get copyWith =>
      __$$_LogoutResponseCopyWithImpl<_$_LogoutResponse>(this, _$identity);
}

abstract class _LogoutResponse extends LogoutResponse {
  const factory _LogoutResponse({required final bool success}) =
      _$_LogoutResponse;
  const _LogoutResponse._() : super._();

  @override
  bool get success;
  @override
  @JsonKey(ignore: true)
  _$$_LogoutResponseCopyWith<_$_LogoutResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
