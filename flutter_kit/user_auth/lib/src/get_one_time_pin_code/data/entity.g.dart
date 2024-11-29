// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetOneTimePinCodeRequestEntity _$GetOneTimePinCodeRequestEntityFromJson(
        Map<String, dynamic> json) =>
    GetOneTimePinCodeRequestEntity(
      email: json['Data'] as String?,
    );

Map<String, dynamic> _$GetOneTimePinCodeRequestEntityToJson(
        GetOneTimePinCodeRequestEntity instance) =>
    <String, dynamic>{
      'Data': instance.email,
    };

GetOneTimePinCodeResponseEntity _$GetOneTimePinCodeResponseEntityFromJson(
        Map<String, dynamic> json) =>
    GetOneTimePinCodeResponseEntity(
      id: json['ID'] as String?,
      numberOfDigits: json['NumOfDigits'] as int?,
      expiryDuration: json['ExpiryDuration'] as int?,
      error: $enumDecodeNullable(
          _$GetOneTimePinCodeResponseErrorEntityEnumMap, json['error']),
    );

Map<String, dynamic> _$GetOneTimePinCodeResponseEntityToJson(
        GetOneTimePinCodeResponseEntity instance) =>
    <String, dynamic>{
      'ID': instance.id,
      'NumOfDigits': instance.numberOfDigits,
      'ExpiryDuration': instance.expiryDuration,
      'error': _$GetOneTimePinCodeResponseErrorEntityEnumMap[instance.error],
    };

const _$GetOneTimePinCodeResponseErrorEntityEnumMap = {
  GetOneTimePinCodeResponseErrorEntity.blocked: 'blocked',
};
