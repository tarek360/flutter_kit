import 'dart:io';

import 'package:core/src/package_info/app_info_entity.dart';
import 'package:core/src/utils/date_utils.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';

DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

final packageInfoServiceProvider = Provider((ref) => PackageInfoService());

class PackageInfoService {
  late final PackageInfo _packageInfo;
  late final BaseDeviceInfo _deviceInfo;

  static final PackageInfoService _instance = PackageInfoService._();

  PackageInfoService._();

  factory PackageInfoService() {
    return _instance;
  }

  Future<void> init() async {
    _packageInfo = await PackageInfo.fromPlatform();

    if (kIsWeb) {
      _deviceInfo = await deviceInfo.webBrowserInfo;
    } else if (Platform.isAndroid) {
      _deviceInfo = await deviceInfo.androidInfo;
    } else if (Platform.isIOS) {
      _deviceInfo = await deviceInfo.iosInfo;
    } else if (Platform.isMacOS) {
      _deviceInfo = await deviceInfo.macOsInfo;
    } else if (kIsWeb) {
      _deviceInfo = await deviceInfo.webBrowserInfo;
    }
  }

  int get buildNumber {
    return int.parse(_packageInfo.buildNumber);
  }

  String get version {
    return _packageInfo.version;
  }

  String get formattedVersion {
    return '$version+$buildNumber';
  }

  String get appId => _packageInfo.packageName;

  String get deviceModel {
    final device = _deviceInfo;
    String? model;

    if (device is WebBrowserInfo) {
      model = 'web-${device.userAgent}';
    } else if (device is AndroidDeviceInfo) {
      model = '${device.manufacturer} ${device.model}';
    } else if (device is IosDeviceInfo) {
      model = device.utsname.machine;
    } else if (device is MacOsDeviceInfo) {
      model = device.model;
    }

    return model ?? 'unknown';
  }

  String get osVersion {
    final device = _deviceInfo;
    String? version;

    if (device is WebBrowserInfo) {
      version = device.appVersion;
    } else if (device is AndroidDeviceInfo) {
      final release = device.version.release;
      final sdkInt = device.version.sdkInt;
      version = 'Android $release (SDK $sdkInt)';
    } else if (device is IosDeviceInfo) {
      final systemName = device.systemName;
      final systemVersion = device.systemVersion;
      version = '$systemName $systemVersion';
    } else if (device is MacOsDeviceInfo) {
      version = device.osRelease;
    }

    return version ?? 'unknown';
  }

  String get operatingSystem {
    return defaultTargetPlatform.name;
  }

  AppInfoEntity getAppInfoEntity({
    required String deviceLocale,
    required String appLocale,
  }) {
    return AppInfoEntity(
      appId: appId,
      appBuildNumber: buildNumber,
      appVersion: version,
      osType: operatingSystem,
      osVersion: osVersion,
      deviceModel: deviceModel,
      timeZoneOffset: localTimeZoneOffset,
      deviceLocale: deviceLocale,
      appLocale: appLocale,
    );
  }

  /// (Not reliable) Might be unavailable on the latest Android and iOS versions.
// Future<String?> getDeviceId() async {
//   final targetPlatform = defaultTargetPlatform;
//   if (targetPlatform == TargetPlatform.iOS) {
//     final iosDeviceInfo = await deviceInfo.iosInfo;
//     return iosDeviceInfo.identifierForVendor;
//   } else if (targetPlatform == TargetPlatform.android) {
//     final androidDeviceInfo = await deviceInfo.androidInfo;
//     return androidDeviceInfo.id;
//   } else if (targetPlatform == TargetPlatform.macOS) {
//     final macOsInfo = await deviceInfo.macOsInfo;
//     return macOsInfo.systemGUID;
//   }
//   return null;
// }
}
