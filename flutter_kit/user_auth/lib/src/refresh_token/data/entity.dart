import 'package:json_annotation/json_annotation.dart';

part 'entity.g.dart';

@JsonSerializable(createToJson: false)
class RefreshTokenResponseEntity {
  RefreshTokenResponseEntity({
    this.token,
  });

  @JsonKey(name: 'Token')
  final String? token;

  factory RefreshTokenResponseEntity.fromJson(Map<String, dynamic> json) => _$RefreshTokenResponseEntityFromJson(json);

}
