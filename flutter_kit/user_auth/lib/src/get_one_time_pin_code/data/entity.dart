import 'package:json_annotation/json_annotation.dart';

part 'entity.g.dart';

@JsonSerializable()
class GetOneTimePinCodeRequestEntity {
  GetOneTimePinCodeRequestEntity({
    this.email,
  });

  @JsonKey(name: 'Data')
  final String? email;

  factory GetOneTimePinCodeRequestEntity.fromJson(Map<String, dynamic> json) =>
      _$GetOneTimePinCodeRequestEntityFromJson(json);

  Map<String, dynamic> toJson() => _$GetOneTimePinCodeRequestEntityToJson(this);
}

@JsonSerializable()
class GetOneTimePinCodeResponseEntity {
  GetOneTimePinCodeResponseEntity({
    this.id,
    this.numberOfDigits,
    this.expiryDuration,
    this.error,
  });

  @JsonKey(name: 'ID')
  final String? id;

  @JsonKey(name: 'NumOfDigits')
  final int? numberOfDigits;

  @JsonKey(name: 'ExpiryDuration')
  final int? expiryDuration;

  @JsonKey(name: 'error')
  final GetOneTimePinCodeResponseErrorEntity? error;

  factory GetOneTimePinCodeResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$GetOneTimePinCodeResponseEntityFromJson(json);

  Map<String, dynamic> toJson() => _$GetOneTimePinCodeResponseEntityToJson(this);
}

enum GetOneTimePinCodeResponseErrorEntity {
  @JsonValue('blocked')
  blocked,
}
