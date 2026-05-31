// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$LoginRequestEntityToJson(LoginRequestEntity instance) =>
    <String, dynamic>{
      'PinID': instance.pinID,
      'Pin': instance.pinCode,
    };

Map<String, dynamic> _$OnboardingInfoEntityToJson(
        OnboardingInfoEntity instance) =>
    <String, dynamic>{
      'TargetLanguage': instance.targetLanguage,
      'NativeLanguage': instance.nativeLanguage,
    };

LoginResponseEntity _$LoginResponseEntityFromJson(Map<String, dynamic> json) =>
    LoginResponseEntity(
      token: json['Token'] as String?,
    );
