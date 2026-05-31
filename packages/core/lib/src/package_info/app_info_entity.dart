import 'package:json_annotation/json_annotation.dart';

part 'app_info_entity.g.dart';

@JsonSerializable(createFactory: false)
class AppInfoEntity {
  AppInfoEntity({
    required this.appId,
    required this.appVersion,
    required this.appBuildNumber,
    required this.osType,
    required this.osVersion,
    required this.deviceModel,
    required this.timeZoneOffset,
    required this.deviceLocale,
    required this.appLocale,
  });

  @JsonKey(name: 'app_id')
  final String appId;

  @JsonKey(name: 'app_version')
  final String appVersion;

  @JsonKey(name: 'app_build_number')
  final int appBuildNumber;

  @JsonKey(name: 'os_type')
  final String osType;

  @JsonKey(name: 'os_version')
  final String osVersion;

  @JsonKey(name: 'device_model')
  final String deviceModel;

  @JsonKey(name: 'time_offset')
  final int timeZoneOffset;

  @JsonKey(name: 'device_locale')
  final String deviceLocale;

  @JsonKey(name: 'app_locale')
  final String appLocale;

  Map<String, dynamic> toJson() => _$AppInfoEntityToJson(this);
}
