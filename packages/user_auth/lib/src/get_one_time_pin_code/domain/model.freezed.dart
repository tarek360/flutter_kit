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
mixin _$GetOneTimePinCodeRequest {
  String get email => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetOneTimePinCodeRequestCopyWith<GetOneTimePinCodeRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetOneTimePinCodeRequestCopyWith<$Res> {
  factory $GetOneTimePinCodeRequestCopyWith(GetOneTimePinCodeRequest value,
          $Res Function(GetOneTimePinCodeRequest) then) =
      _$GetOneTimePinCodeRequestCopyWithImpl<$Res, GetOneTimePinCodeRequest>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$GetOneTimePinCodeRequestCopyWithImpl<$Res,
        $Val extends GetOneTimePinCodeRequest>
    implements $GetOneTimePinCodeRequestCopyWith<$Res> {
  _$GetOneTimePinCodeRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetOneTimePinCodeRequestCopyWith<$Res>
    implements $GetOneTimePinCodeRequestCopyWith<$Res> {
  factory _$$_GetOneTimePinCodeRequestCopyWith(
          _$_GetOneTimePinCodeRequest value,
          $Res Function(_$_GetOneTimePinCodeRequest) then) =
      __$$_GetOneTimePinCodeRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$_GetOneTimePinCodeRequestCopyWithImpl<$Res>
    extends _$GetOneTimePinCodeRequestCopyWithImpl<$Res,
        _$_GetOneTimePinCodeRequest>
    implements _$$_GetOneTimePinCodeRequestCopyWith<$Res> {
  __$$_GetOneTimePinCodeRequestCopyWithImpl(_$_GetOneTimePinCodeRequest _value,
      $Res Function(_$_GetOneTimePinCodeRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$_GetOneTimePinCodeRequest(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetOneTimePinCodeRequest extends _GetOneTimePinCodeRequest {
  const _$_GetOneTimePinCodeRequest({required this.email}) : super._();

  @override
  final String email;

  @override
  String toString() {
    return 'GetOneTimePinCodeRequest(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetOneTimePinCodeRequest &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetOneTimePinCodeRequestCopyWith<_$_GetOneTimePinCodeRequest>
      get copyWith => __$$_GetOneTimePinCodeRequestCopyWithImpl<
          _$_GetOneTimePinCodeRequest>(this, _$identity);
}

abstract class _GetOneTimePinCodeRequest extends GetOneTimePinCodeRequest {
  const factory _GetOneTimePinCodeRequest({required final String email}) =
      _$_GetOneTimePinCodeRequest;
  const _GetOneTimePinCodeRequest._() : super._();

  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$_GetOneTimePinCodeRequestCopyWith<_$_GetOneTimePinCodeRequest>
      get copyWith => throw _privateConstructorUsedError;
}

GetOneTimePinCodeResponse _$GetOneTimePinCodeResponseFromJson(
    Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'ok':
      return GetOneTimePinCodeResponseOk.fromJson(json);
    case 'blocked':
      return GetOneTimePinCodeResponseBlocked.fromJson(json);
    case 'noUser':
      return GetOneTimePinCodeResponseNoUser.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'runtimeType',
          'GetOneTimePinCodeResponse',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$GetOneTimePinCodeResponse {
  String get userEmail => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, int numberOfDigits, String userEmail)
        ok,
    required TResult Function(String userEmail) blocked,
    required TResult Function(String userEmail) noUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, int numberOfDigits, String userEmail)? ok,
    TResult? Function(String userEmail)? blocked,
    TResult? Function(String userEmail)? noUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, int numberOfDigits, String userEmail)? ok,
    TResult Function(String userEmail)? blocked,
    TResult Function(String userEmail)? noUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetOneTimePinCodeResponseOk value) ok,
    required TResult Function(GetOneTimePinCodeResponseBlocked value) blocked,
    required TResult Function(GetOneTimePinCodeResponseNoUser value) noUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetOneTimePinCodeResponseOk value)? ok,
    TResult? Function(GetOneTimePinCodeResponseBlocked value)? blocked,
    TResult? Function(GetOneTimePinCodeResponseNoUser value)? noUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetOneTimePinCodeResponseOk value)? ok,
    TResult Function(GetOneTimePinCodeResponseBlocked value)? blocked,
    TResult Function(GetOneTimePinCodeResponseNoUser value)? noUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetOneTimePinCodeResponseCopyWith<GetOneTimePinCodeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetOneTimePinCodeResponseCopyWith<$Res> {
  factory $GetOneTimePinCodeResponseCopyWith(GetOneTimePinCodeResponse value,
          $Res Function(GetOneTimePinCodeResponse) then) =
      _$GetOneTimePinCodeResponseCopyWithImpl<$Res, GetOneTimePinCodeResponse>;
  @useResult
  $Res call({String userEmail});
}

/// @nodoc
class _$GetOneTimePinCodeResponseCopyWithImpl<$Res,
        $Val extends GetOneTimePinCodeResponse>
    implements $GetOneTimePinCodeResponseCopyWith<$Res> {
  _$GetOneTimePinCodeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userEmail = null,
  }) {
    return _then(_value.copyWith(
      userEmail: null == userEmail
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetOneTimePinCodeResponseOkCopyWith<$Res>
    implements $GetOneTimePinCodeResponseCopyWith<$Res> {
  factory _$$GetOneTimePinCodeResponseOkCopyWith(
          _$GetOneTimePinCodeResponseOk value,
          $Res Function(_$GetOneTimePinCodeResponseOk) then) =
      __$$GetOneTimePinCodeResponseOkCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, int numberOfDigits, String userEmail});
}

/// @nodoc
class __$$GetOneTimePinCodeResponseOkCopyWithImpl<$Res>
    extends _$GetOneTimePinCodeResponseCopyWithImpl<$Res,
        _$GetOneTimePinCodeResponseOk>
    implements _$$GetOneTimePinCodeResponseOkCopyWith<$Res> {
  __$$GetOneTimePinCodeResponseOkCopyWithImpl(
      _$GetOneTimePinCodeResponseOk _value,
      $Res Function(_$GetOneTimePinCodeResponseOk) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? numberOfDigits = null,
    Object? userEmail = null,
  }) {
    return _then(_$GetOneTimePinCodeResponseOk(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfDigits: null == numberOfDigits
          ? _value.numberOfDigits
          : numberOfDigits // ignore: cast_nullable_to_non_nullable
              as int,
      userEmail: null == userEmail
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetOneTimePinCodeResponseOk extends GetOneTimePinCodeResponseOk {
  const _$GetOneTimePinCodeResponseOk(
      {required this.id,
      required this.numberOfDigits,
      required this.userEmail,
      final String? $type})
      : $type = $type ?? 'ok',
        super._();

  factory _$GetOneTimePinCodeResponseOk.fromJson(Map<String, dynamic> json) =>
      _$$GetOneTimePinCodeResponseOkFromJson(json);

  @override
  final String id;
  @override
  final int numberOfDigits;
  @override
  final String userEmail;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'GetOneTimePinCodeResponse.ok(id: $id, numberOfDigits: $numberOfDigits, userEmail: $userEmail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOneTimePinCodeResponseOk &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.numberOfDigits, numberOfDigits) ||
                other.numberOfDigits == numberOfDigits) &&
            (identical(other.userEmail, userEmail) ||
                other.userEmail == userEmail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, numberOfDigits, userEmail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOneTimePinCodeResponseOkCopyWith<_$GetOneTimePinCodeResponseOk>
      get copyWith => __$$GetOneTimePinCodeResponseOkCopyWithImpl<
          _$GetOneTimePinCodeResponseOk>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, int numberOfDigits, String userEmail)
        ok,
    required TResult Function(String userEmail) blocked,
    required TResult Function(String userEmail) noUser,
  }) {
    return ok(id, numberOfDigits, userEmail);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, int numberOfDigits, String userEmail)? ok,
    TResult? Function(String userEmail)? blocked,
    TResult? Function(String userEmail)? noUser,
  }) {
    return ok?.call(id, numberOfDigits, userEmail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, int numberOfDigits, String userEmail)? ok,
    TResult Function(String userEmail)? blocked,
    TResult Function(String userEmail)? noUser,
    required TResult orElse(),
  }) {
    if (ok != null) {
      return ok(id, numberOfDigits, userEmail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetOneTimePinCodeResponseOk value) ok,
    required TResult Function(GetOneTimePinCodeResponseBlocked value) blocked,
    required TResult Function(GetOneTimePinCodeResponseNoUser value) noUser,
  }) {
    return ok(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetOneTimePinCodeResponseOk value)? ok,
    TResult? Function(GetOneTimePinCodeResponseBlocked value)? blocked,
    TResult? Function(GetOneTimePinCodeResponseNoUser value)? noUser,
  }) {
    return ok?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetOneTimePinCodeResponseOk value)? ok,
    TResult Function(GetOneTimePinCodeResponseBlocked value)? blocked,
    TResult Function(GetOneTimePinCodeResponseNoUser value)? noUser,
    required TResult orElse(),
  }) {
    if (ok != null) {
      return ok(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$GetOneTimePinCodeResponseOkToJson(
      this,
    );
  }
}

abstract class GetOneTimePinCodeResponseOk extends GetOneTimePinCodeResponse {
  const factory GetOneTimePinCodeResponseOk(
      {required final String id,
      required final int numberOfDigits,
      required final String userEmail}) = _$GetOneTimePinCodeResponseOk;
  const GetOneTimePinCodeResponseOk._() : super._();

  factory GetOneTimePinCodeResponseOk.fromJson(Map<String, dynamic> json) =
      _$GetOneTimePinCodeResponseOk.fromJson;

  String get id;
  int get numberOfDigits;
  @override
  String get userEmail;
  @override
  @JsonKey(ignore: true)
  _$$GetOneTimePinCodeResponseOkCopyWith<_$GetOneTimePinCodeResponseOk>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetOneTimePinCodeResponseBlockedCopyWith<$Res>
    implements $GetOneTimePinCodeResponseCopyWith<$Res> {
  factory _$$GetOneTimePinCodeResponseBlockedCopyWith(
          _$GetOneTimePinCodeResponseBlocked value,
          $Res Function(_$GetOneTimePinCodeResponseBlocked) then) =
      __$$GetOneTimePinCodeResponseBlockedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userEmail});
}

/// @nodoc
class __$$GetOneTimePinCodeResponseBlockedCopyWithImpl<$Res>
    extends _$GetOneTimePinCodeResponseCopyWithImpl<$Res,
        _$GetOneTimePinCodeResponseBlocked>
    implements _$$GetOneTimePinCodeResponseBlockedCopyWith<$Res> {
  __$$GetOneTimePinCodeResponseBlockedCopyWithImpl(
      _$GetOneTimePinCodeResponseBlocked _value,
      $Res Function(_$GetOneTimePinCodeResponseBlocked) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userEmail = null,
  }) {
    return _then(_$GetOneTimePinCodeResponseBlocked(
      userEmail: null == userEmail
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetOneTimePinCodeResponseBlocked
    extends GetOneTimePinCodeResponseBlocked {
  const _$GetOneTimePinCodeResponseBlocked(
      {required this.userEmail, final String? $type})
      : $type = $type ?? 'blocked',
        super._();

  factory _$GetOneTimePinCodeResponseBlocked.fromJson(
          Map<String, dynamic> json) =>
      _$$GetOneTimePinCodeResponseBlockedFromJson(json);

  @override
  final String userEmail;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'GetOneTimePinCodeResponse.blocked(userEmail: $userEmail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOneTimePinCodeResponseBlocked &&
            (identical(other.userEmail, userEmail) ||
                other.userEmail == userEmail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userEmail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOneTimePinCodeResponseBlockedCopyWith<
          _$GetOneTimePinCodeResponseBlocked>
      get copyWith => __$$GetOneTimePinCodeResponseBlockedCopyWithImpl<
          _$GetOneTimePinCodeResponseBlocked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, int numberOfDigits, String userEmail)
        ok,
    required TResult Function(String userEmail) blocked,
    required TResult Function(String userEmail) noUser,
  }) {
    return blocked(userEmail);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, int numberOfDigits, String userEmail)? ok,
    TResult? Function(String userEmail)? blocked,
    TResult? Function(String userEmail)? noUser,
  }) {
    return blocked?.call(userEmail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, int numberOfDigits, String userEmail)? ok,
    TResult Function(String userEmail)? blocked,
    TResult Function(String userEmail)? noUser,
    required TResult orElse(),
  }) {
    if (blocked != null) {
      return blocked(userEmail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetOneTimePinCodeResponseOk value) ok,
    required TResult Function(GetOneTimePinCodeResponseBlocked value) blocked,
    required TResult Function(GetOneTimePinCodeResponseNoUser value) noUser,
  }) {
    return blocked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetOneTimePinCodeResponseOk value)? ok,
    TResult? Function(GetOneTimePinCodeResponseBlocked value)? blocked,
    TResult? Function(GetOneTimePinCodeResponseNoUser value)? noUser,
  }) {
    return blocked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetOneTimePinCodeResponseOk value)? ok,
    TResult Function(GetOneTimePinCodeResponseBlocked value)? blocked,
    TResult Function(GetOneTimePinCodeResponseNoUser value)? noUser,
    required TResult orElse(),
  }) {
    if (blocked != null) {
      return blocked(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$GetOneTimePinCodeResponseBlockedToJson(
      this,
    );
  }
}

abstract class GetOneTimePinCodeResponseBlocked
    extends GetOneTimePinCodeResponse {
  const factory GetOneTimePinCodeResponseBlocked(
      {required final String userEmail}) = _$GetOneTimePinCodeResponseBlocked;
  const GetOneTimePinCodeResponseBlocked._() : super._();

  factory GetOneTimePinCodeResponseBlocked.fromJson(Map<String, dynamic> json) =
      _$GetOneTimePinCodeResponseBlocked.fromJson;

  @override
  String get userEmail;
  @override
  @JsonKey(ignore: true)
  _$$GetOneTimePinCodeResponseBlockedCopyWith<
          _$GetOneTimePinCodeResponseBlocked>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetOneTimePinCodeResponseNoUserCopyWith<$Res>
    implements $GetOneTimePinCodeResponseCopyWith<$Res> {
  factory _$$GetOneTimePinCodeResponseNoUserCopyWith(
          _$GetOneTimePinCodeResponseNoUser value,
          $Res Function(_$GetOneTimePinCodeResponseNoUser) then) =
      __$$GetOneTimePinCodeResponseNoUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userEmail});
}

/// @nodoc
class __$$GetOneTimePinCodeResponseNoUserCopyWithImpl<$Res>
    extends _$GetOneTimePinCodeResponseCopyWithImpl<$Res,
        _$GetOneTimePinCodeResponseNoUser>
    implements _$$GetOneTimePinCodeResponseNoUserCopyWith<$Res> {
  __$$GetOneTimePinCodeResponseNoUserCopyWithImpl(
      _$GetOneTimePinCodeResponseNoUser _value,
      $Res Function(_$GetOneTimePinCodeResponseNoUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userEmail = null,
  }) {
    return _then(_$GetOneTimePinCodeResponseNoUser(
      userEmail: null == userEmail
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetOneTimePinCodeResponseNoUser
    extends GetOneTimePinCodeResponseNoUser {
  const _$GetOneTimePinCodeResponseNoUser(
      {required this.userEmail, final String? $type})
      : $type = $type ?? 'noUser',
        super._();

  factory _$GetOneTimePinCodeResponseNoUser.fromJson(
          Map<String, dynamic> json) =>
      _$$GetOneTimePinCodeResponseNoUserFromJson(json);

  @override
  final String userEmail;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'GetOneTimePinCodeResponse.noUser(userEmail: $userEmail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOneTimePinCodeResponseNoUser &&
            (identical(other.userEmail, userEmail) ||
                other.userEmail == userEmail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userEmail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOneTimePinCodeResponseNoUserCopyWith<_$GetOneTimePinCodeResponseNoUser>
      get copyWith => __$$GetOneTimePinCodeResponseNoUserCopyWithImpl<
          _$GetOneTimePinCodeResponseNoUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, int numberOfDigits, String userEmail)
        ok,
    required TResult Function(String userEmail) blocked,
    required TResult Function(String userEmail) noUser,
  }) {
    return noUser(userEmail);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, int numberOfDigits, String userEmail)? ok,
    TResult? Function(String userEmail)? blocked,
    TResult? Function(String userEmail)? noUser,
  }) {
    return noUser?.call(userEmail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, int numberOfDigits, String userEmail)? ok,
    TResult Function(String userEmail)? blocked,
    TResult Function(String userEmail)? noUser,
    required TResult orElse(),
  }) {
    if (noUser != null) {
      return noUser(userEmail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetOneTimePinCodeResponseOk value) ok,
    required TResult Function(GetOneTimePinCodeResponseBlocked value) blocked,
    required TResult Function(GetOneTimePinCodeResponseNoUser value) noUser,
  }) {
    return noUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetOneTimePinCodeResponseOk value)? ok,
    TResult? Function(GetOneTimePinCodeResponseBlocked value)? blocked,
    TResult? Function(GetOneTimePinCodeResponseNoUser value)? noUser,
  }) {
    return noUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetOneTimePinCodeResponseOk value)? ok,
    TResult Function(GetOneTimePinCodeResponseBlocked value)? blocked,
    TResult Function(GetOneTimePinCodeResponseNoUser value)? noUser,
    required TResult orElse(),
  }) {
    if (noUser != null) {
      return noUser(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$GetOneTimePinCodeResponseNoUserToJson(
      this,
    );
  }
}

abstract class GetOneTimePinCodeResponseNoUser
    extends GetOneTimePinCodeResponse {
  const factory GetOneTimePinCodeResponseNoUser(
      {required final String userEmail}) = _$GetOneTimePinCodeResponseNoUser;
  const GetOneTimePinCodeResponseNoUser._() : super._();

  factory GetOneTimePinCodeResponseNoUser.fromJson(Map<String, dynamic> json) =
      _$GetOneTimePinCodeResponseNoUser.fromJson;

  @override
  String get userEmail;
  @override
  @JsonKey(ignore: true)
  _$$GetOneTimePinCodeResponseNoUserCopyWith<_$GetOneTimePinCodeResponseNoUser>
      get copyWith => throw _privateConstructorUsedError;
}
