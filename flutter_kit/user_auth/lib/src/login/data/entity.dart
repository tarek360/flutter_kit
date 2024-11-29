import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'entity.g.dart';

@JsonSerializable(createFactory: false)
class LoginRequestEntity {
  LoginRequestEntity({
    required this.pinID,
    required this.pinCode,
  });

  @JsonKey(name: 'PinID')
  final String pinID;
  @JsonKey(name: 'Pin')
  final int pinCode;

  Map<String, dynamic> toJson() => _$LoginRequestEntityToJson(this);
}

@JsonSerializable(createFactory: false)
class OnboardingInfoEntity {
  OnboardingInfoEntity({
    required this.targetLanguage,
    required this.nativeLanguage,
  });

  @JsonKey(name: 'TargetLanguage')
  final String targetLanguage;

  @JsonKey(name: 'NativeLanguage')
  final String? nativeLanguage;

  Map<String, dynamic> toJson() => _$OnboardingInfoEntityToJson(this);
}

@JsonSerializable(createToJson: false)
class LoginResponseEntity {
  LoginResponseEntity({
    this.token,
  });

  @JsonKey(name: 'Token')
  final String? token;

  factory LoginResponseEntity.fromJson(Map<String, dynamic> json) => _$LoginResponseEntityFromJson(json);
}

enum LoginResponseErrorCode {
  invalidCode(1),
  expiredCode(2);

  const LoginResponseErrorCode(this.code);

  final int code;

  static LoginResponseErrorCode? valueOf(int value) {
    return LoginResponseErrorCode.values.firstWhereOrNull((element) => element.code == value);
  }
}
