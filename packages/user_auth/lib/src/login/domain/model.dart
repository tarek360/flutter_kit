import 'package:core/core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';

@freezed
class LoginRequest with _$LoginRequest {
  const factory LoginRequest({
    required String pinID,
    required int pinCode,
  }) = _LoginRequest;

  const LoginRequest._();
}

@freezed
class LoginResponse with _$LoginResponse {
  const factory LoginResponse.success({
    required String token,
  }) = _LoginResponseSuccess;

  const factory LoginResponse.invalidCode() = _LoginResponseInvalidCode;

  const factory LoginResponse.expiredCode() = _LoginResponseExpiredCode;

  const factory LoginResponse.otherError(ResultErrorType errorType) = _LoginResponseOtherError;

  const LoginResponse._();
}

enum LoginResponseError {
  invalidCode(0),
  expiredCode(1);

  final int value;

  const LoginResponseError(this.value);
}
