import 'package:json_annotation/json_annotation.dart';

part 'entity.g.dart';

@JsonSerializable()
class LogoutResponseEntity {
  LogoutResponseEntity({
    this.success,
  });

  @JsonKey(name: 'success')
  final bool? success;

  factory LogoutResponseEntity.fromJson(Map<String, dynamic> json) => _$LogoutResponseEntityFromJson(json);

  Map<String, dynamic> toJson() => _$LogoutResponseEntityToJson(this);
}
