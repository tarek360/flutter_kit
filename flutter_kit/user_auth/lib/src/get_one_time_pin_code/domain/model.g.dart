// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetOneTimePinCodeResponseOk _$$GetOneTimePinCodeResponseOkFromJson(
        Map<String, dynamic> json) =>
    _$GetOneTimePinCodeResponseOk(
      id: json['id'] as String,
      numberOfDigits: json['numberOfDigits'] as int,
      userEmail: json['userEmail'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$GetOneTimePinCodeResponseOkToJson(
        _$GetOneTimePinCodeResponseOk instance) =>
    <String, dynamic>{
      'id': instance.id,
      'numberOfDigits': instance.numberOfDigits,
      'userEmail': instance.userEmail,
      'runtimeType': instance.$type,
    };

_$GetOneTimePinCodeResponseBlocked _$$GetOneTimePinCodeResponseBlockedFromJson(
        Map<String, dynamic> json) =>
    _$GetOneTimePinCodeResponseBlocked(
      userEmail: json['userEmail'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$GetOneTimePinCodeResponseBlockedToJson(
        _$GetOneTimePinCodeResponseBlocked instance) =>
    <String, dynamic>{
      'userEmail': instance.userEmail,
      'runtimeType': instance.$type,
    };

_$GetOneTimePinCodeResponseNoUser _$$GetOneTimePinCodeResponseNoUserFromJson(
        Map<String, dynamic> json) =>
    _$GetOneTimePinCodeResponseNoUser(
      userEmail: json['userEmail'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$GetOneTimePinCodeResponseNoUserToJson(
        _$GetOneTimePinCodeResponseNoUser instance) =>
    <String, dynamic>{
      'userEmail': instance.userEmail,
      'runtimeType': instance.$type,
    };
