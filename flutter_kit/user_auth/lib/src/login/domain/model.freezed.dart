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
mixin _$LoginRequest {
  String get pinID => throw _privateConstructorUsedError;
  int get pinCode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginRequestCopyWith<LoginRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginRequestCopyWith<$Res> {
  factory $LoginRequestCopyWith(
          LoginRequest value, $Res Function(LoginRequest) then) =
      _$LoginRequestCopyWithImpl<$Res, LoginRequest>;
  @useResult
  $Res call({String pinID, int pinCode});
}

/// @nodoc
class _$LoginRequestCopyWithImpl<$Res, $Val extends LoginRequest>
    implements $LoginRequestCopyWith<$Res> {
  _$LoginRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pinID = null,
    Object? pinCode = null,
  }) {
    return _then(_value.copyWith(
      pinID: null == pinID
          ? _value.pinID
          : pinID // ignore: cast_nullable_to_non_nullable
              as String,
      pinCode: null == pinCode
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoginRequestCopyWith<$Res>
    implements $LoginRequestCopyWith<$Res> {
  factory _$$_LoginRequestCopyWith(
          _$_LoginRequest value, $Res Function(_$_LoginRequest) then) =
      __$$_LoginRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String pinID, int pinCode});
}

/// @nodoc
class __$$_LoginRequestCopyWithImpl<$Res>
    extends _$LoginRequestCopyWithImpl<$Res, _$_LoginRequest>
    implements _$$_LoginRequestCopyWith<$Res> {
  __$$_LoginRequestCopyWithImpl(
      _$_LoginRequest _value, $Res Function(_$_LoginRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pinID = null,
    Object? pinCode = null,
  }) {
    return _then(_$_LoginRequest(
      pinID: null == pinID
          ? _value.pinID
          : pinID // ignore: cast_nullable_to_non_nullable
              as String,
      pinCode: null == pinCode
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_LoginRequest extends _LoginRequest {
  const _$_LoginRequest({required this.pinID, required this.pinCode})
      : super._();

  @override
  final String pinID;
  @override
  final int pinCode;

  @override
  String toString() {
    return 'LoginRequest(pinID: $pinID, pinCode: $pinCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginRequest &&
            (identical(other.pinID, pinID) || other.pinID == pinID) &&
            (identical(other.pinCode, pinCode) || other.pinCode == pinCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pinID, pinCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginRequestCopyWith<_$_LoginRequest> get copyWith =>
      __$$_LoginRequestCopyWithImpl<_$_LoginRequest>(this, _$identity);
}

abstract class _LoginRequest extends LoginRequest {
  const factory _LoginRequest(
      {required final String pinID,
      required final int pinCode}) = _$_LoginRequest;
  const _LoginRequest._() : super._();

  @override
  String get pinID;
  @override
  int get pinCode;
  @override
  @JsonKey(ignore: true)
  _$$_LoginRequestCopyWith<_$_LoginRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginResponse {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) success,
    required TResult Function() invalidCode,
    required TResult Function() expiredCode,
    required TResult Function(ResultErrorType errorType) otherError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token)? success,
    TResult? Function()? invalidCode,
    TResult? Function()? expiredCode,
    TResult? Function(ResultErrorType errorType)? otherError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? success,
    TResult Function()? invalidCode,
    TResult Function()? expiredCode,
    TResult Function(ResultErrorType errorType)? otherError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginResponseSuccess value) success,
    required TResult Function(_LoginResponseInvalidCode value) invalidCode,
    required TResult Function(_LoginResponseExpiredCode value) expiredCode,
    required TResult Function(_LoginResponseOtherError value) otherError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginResponseSuccess value)? success,
    TResult? Function(_LoginResponseInvalidCode value)? invalidCode,
    TResult? Function(_LoginResponseExpiredCode value)? expiredCode,
    TResult? Function(_LoginResponseOtherError value)? otherError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginResponseSuccess value)? success,
    TResult Function(_LoginResponseInvalidCode value)? invalidCode,
    TResult Function(_LoginResponseExpiredCode value)? expiredCode,
    TResult Function(_LoginResponseOtherError value)? otherError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResponseCopyWith<$Res> {
  factory $LoginResponseCopyWith(
          LoginResponse value, $Res Function(LoginResponse) then) =
      _$LoginResponseCopyWithImpl<$Res, LoginResponse>;
}

/// @nodoc
class _$LoginResponseCopyWithImpl<$Res, $Val extends LoginResponse>
    implements $LoginResponseCopyWith<$Res> {
  _$LoginResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoginResponseSuccessCopyWith<$Res> {
  factory _$$_LoginResponseSuccessCopyWith(_$_LoginResponseSuccess value,
          $Res Function(_$_LoginResponseSuccess) then) =
      __$$_LoginResponseSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({String token});
}

/// @nodoc
class __$$_LoginResponseSuccessCopyWithImpl<$Res>
    extends _$LoginResponseCopyWithImpl<$Res, _$_LoginResponseSuccess>
    implements _$$_LoginResponseSuccessCopyWith<$Res> {
  __$$_LoginResponseSuccessCopyWithImpl(_$_LoginResponseSuccess _value,
      $Res Function(_$_LoginResponseSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$_LoginResponseSuccess(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoginResponseSuccess extends _LoginResponseSuccess {
  const _$_LoginResponseSuccess({required this.token}) : super._();

  @override
  final String token;

  @override
  String toString() {
    return 'LoginResponse.success(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginResponseSuccess &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginResponseSuccessCopyWith<_$_LoginResponseSuccess> get copyWith =>
      __$$_LoginResponseSuccessCopyWithImpl<_$_LoginResponseSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) success,
    required TResult Function() invalidCode,
    required TResult Function() expiredCode,
    required TResult Function(ResultErrorType errorType) otherError,
  }) {
    return success(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token)? success,
    TResult? Function()? invalidCode,
    TResult? Function()? expiredCode,
    TResult? Function(ResultErrorType errorType)? otherError,
  }) {
    return success?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? success,
    TResult Function()? invalidCode,
    TResult Function()? expiredCode,
    TResult Function(ResultErrorType errorType)? otherError,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginResponseSuccess value) success,
    required TResult Function(_LoginResponseInvalidCode value) invalidCode,
    required TResult Function(_LoginResponseExpiredCode value) expiredCode,
    required TResult Function(_LoginResponseOtherError value) otherError,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginResponseSuccess value)? success,
    TResult? Function(_LoginResponseInvalidCode value)? invalidCode,
    TResult? Function(_LoginResponseExpiredCode value)? expiredCode,
    TResult? Function(_LoginResponseOtherError value)? otherError,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginResponseSuccess value)? success,
    TResult Function(_LoginResponseInvalidCode value)? invalidCode,
    TResult Function(_LoginResponseExpiredCode value)? expiredCode,
    TResult Function(_LoginResponseOtherError value)? otherError,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _LoginResponseSuccess extends LoginResponse {
  const factory _LoginResponseSuccess({required final String token}) =
      _$_LoginResponseSuccess;
  const _LoginResponseSuccess._() : super._();

  String get token;
  @JsonKey(ignore: true)
  _$$_LoginResponseSuccessCopyWith<_$_LoginResponseSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoginResponseInvalidCodeCopyWith<$Res> {
  factory _$$_LoginResponseInvalidCodeCopyWith(
          _$_LoginResponseInvalidCode value,
          $Res Function(_$_LoginResponseInvalidCode) then) =
      __$$_LoginResponseInvalidCodeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoginResponseInvalidCodeCopyWithImpl<$Res>
    extends _$LoginResponseCopyWithImpl<$Res, _$_LoginResponseInvalidCode>
    implements _$$_LoginResponseInvalidCodeCopyWith<$Res> {
  __$$_LoginResponseInvalidCodeCopyWithImpl(_$_LoginResponseInvalidCode _value,
      $Res Function(_$_LoginResponseInvalidCode) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoginResponseInvalidCode extends _LoginResponseInvalidCode {
  const _$_LoginResponseInvalidCode() : super._();

  @override
  String toString() {
    return 'LoginResponse.invalidCode()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginResponseInvalidCode);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) success,
    required TResult Function() invalidCode,
    required TResult Function() expiredCode,
    required TResult Function(ResultErrorType errorType) otherError,
  }) {
    return invalidCode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token)? success,
    TResult? Function()? invalidCode,
    TResult? Function()? expiredCode,
    TResult? Function(ResultErrorType errorType)? otherError,
  }) {
    return invalidCode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? success,
    TResult Function()? invalidCode,
    TResult Function()? expiredCode,
    TResult Function(ResultErrorType errorType)? otherError,
    required TResult orElse(),
  }) {
    if (invalidCode != null) {
      return invalidCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginResponseSuccess value) success,
    required TResult Function(_LoginResponseInvalidCode value) invalidCode,
    required TResult Function(_LoginResponseExpiredCode value) expiredCode,
    required TResult Function(_LoginResponseOtherError value) otherError,
  }) {
    return invalidCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginResponseSuccess value)? success,
    TResult? Function(_LoginResponseInvalidCode value)? invalidCode,
    TResult? Function(_LoginResponseExpiredCode value)? expiredCode,
    TResult? Function(_LoginResponseOtherError value)? otherError,
  }) {
    return invalidCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginResponseSuccess value)? success,
    TResult Function(_LoginResponseInvalidCode value)? invalidCode,
    TResult Function(_LoginResponseExpiredCode value)? expiredCode,
    TResult Function(_LoginResponseOtherError value)? otherError,
    required TResult orElse(),
  }) {
    if (invalidCode != null) {
      return invalidCode(this);
    }
    return orElse();
  }
}

abstract class _LoginResponseInvalidCode extends LoginResponse {
  const factory _LoginResponseInvalidCode() = _$_LoginResponseInvalidCode;
  const _LoginResponseInvalidCode._() : super._();
}

/// @nodoc
abstract class _$$_LoginResponseExpiredCodeCopyWith<$Res> {
  factory _$$_LoginResponseExpiredCodeCopyWith(
          _$_LoginResponseExpiredCode value,
          $Res Function(_$_LoginResponseExpiredCode) then) =
      __$$_LoginResponseExpiredCodeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoginResponseExpiredCodeCopyWithImpl<$Res>
    extends _$LoginResponseCopyWithImpl<$Res, _$_LoginResponseExpiredCode>
    implements _$$_LoginResponseExpiredCodeCopyWith<$Res> {
  __$$_LoginResponseExpiredCodeCopyWithImpl(_$_LoginResponseExpiredCode _value,
      $Res Function(_$_LoginResponseExpiredCode) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoginResponseExpiredCode extends _LoginResponseExpiredCode {
  const _$_LoginResponseExpiredCode() : super._();

  @override
  String toString() {
    return 'LoginResponse.expiredCode()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginResponseExpiredCode);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) success,
    required TResult Function() invalidCode,
    required TResult Function() expiredCode,
    required TResult Function(ResultErrorType errorType) otherError,
  }) {
    return expiredCode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token)? success,
    TResult? Function()? invalidCode,
    TResult? Function()? expiredCode,
    TResult? Function(ResultErrorType errorType)? otherError,
  }) {
    return expiredCode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? success,
    TResult Function()? invalidCode,
    TResult Function()? expiredCode,
    TResult Function(ResultErrorType errorType)? otherError,
    required TResult orElse(),
  }) {
    if (expiredCode != null) {
      return expiredCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginResponseSuccess value) success,
    required TResult Function(_LoginResponseInvalidCode value) invalidCode,
    required TResult Function(_LoginResponseExpiredCode value) expiredCode,
    required TResult Function(_LoginResponseOtherError value) otherError,
  }) {
    return expiredCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginResponseSuccess value)? success,
    TResult? Function(_LoginResponseInvalidCode value)? invalidCode,
    TResult? Function(_LoginResponseExpiredCode value)? expiredCode,
    TResult? Function(_LoginResponseOtherError value)? otherError,
  }) {
    return expiredCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginResponseSuccess value)? success,
    TResult Function(_LoginResponseInvalidCode value)? invalidCode,
    TResult Function(_LoginResponseExpiredCode value)? expiredCode,
    TResult Function(_LoginResponseOtherError value)? otherError,
    required TResult orElse(),
  }) {
    if (expiredCode != null) {
      return expiredCode(this);
    }
    return orElse();
  }
}

abstract class _LoginResponseExpiredCode extends LoginResponse {
  const factory _LoginResponseExpiredCode() = _$_LoginResponseExpiredCode;
  const _LoginResponseExpiredCode._() : super._();
}

/// @nodoc
abstract class _$$_LoginResponseOtherErrorCopyWith<$Res> {
  factory _$$_LoginResponseOtherErrorCopyWith(_$_LoginResponseOtherError value,
          $Res Function(_$_LoginResponseOtherError) then) =
      __$$_LoginResponseOtherErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({ResultErrorType errorType});
}

/// @nodoc
class __$$_LoginResponseOtherErrorCopyWithImpl<$Res>
    extends _$LoginResponseCopyWithImpl<$Res, _$_LoginResponseOtherError>
    implements _$$_LoginResponseOtherErrorCopyWith<$Res> {
  __$$_LoginResponseOtherErrorCopyWithImpl(_$_LoginResponseOtherError _value,
      $Res Function(_$_LoginResponseOtherError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorType = null,
  }) {
    return _then(_$_LoginResponseOtherError(
      null == errorType
          ? _value.errorType
          : errorType // ignore: cast_nullable_to_non_nullable
              as ResultErrorType,
    ));
  }
}

/// @nodoc

class _$_LoginResponseOtherError extends _LoginResponseOtherError {
  const _$_LoginResponseOtherError(this.errorType) : super._();

  @override
  final ResultErrorType errorType;

  @override
  String toString() {
    return 'LoginResponse.otherError(errorType: $errorType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginResponseOtherError &&
            (identical(other.errorType, errorType) ||
                other.errorType == errorType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginResponseOtherErrorCopyWith<_$_LoginResponseOtherError>
      get copyWith =>
          __$$_LoginResponseOtherErrorCopyWithImpl<_$_LoginResponseOtherError>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) success,
    required TResult Function() invalidCode,
    required TResult Function() expiredCode,
    required TResult Function(ResultErrorType errorType) otherError,
  }) {
    return otherError(errorType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token)? success,
    TResult? Function()? invalidCode,
    TResult? Function()? expiredCode,
    TResult? Function(ResultErrorType errorType)? otherError,
  }) {
    return otherError?.call(errorType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? success,
    TResult Function()? invalidCode,
    TResult Function()? expiredCode,
    TResult Function(ResultErrorType errorType)? otherError,
    required TResult orElse(),
  }) {
    if (otherError != null) {
      return otherError(errorType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginResponseSuccess value) success,
    required TResult Function(_LoginResponseInvalidCode value) invalidCode,
    required TResult Function(_LoginResponseExpiredCode value) expiredCode,
    required TResult Function(_LoginResponseOtherError value) otherError,
  }) {
    return otherError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginResponseSuccess value)? success,
    TResult? Function(_LoginResponseInvalidCode value)? invalidCode,
    TResult? Function(_LoginResponseExpiredCode value)? expiredCode,
    TResult? Function(_LoginResponseOtherError value)? otherError,
  }) {
    return otherError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginResponseSuccess value)? success,
    TResult Function(_LoginResponseInvalidCode value)? invalidCode,
    TResult Function(_LoginResponseExpiredCode value)? expiredCode,
    TResult Function(_LoginResponseOtherError value)? otherError,
    required TResult orElse(),
  }) {
    if (otherError != null) {
      return otherError(this);
    }
    return orElse();
  }
}

abstract class _LoginResponseOtherError extends LoginResponse {
  const factory _LoginResponseOtherError(final ResultErrorType errorType) =
      _$_LoginResponseOtherError;
  const _LoginResponseOtherError._() : super._();

  ResultErrorType get errorType;
  @JsonKey(ignore: true)
  _$$_LoginResponseOtherErrorCopyWith<_$_LoginResponseOtherError>
      get copyWith => throw _privateConstructorUsedError;
}
