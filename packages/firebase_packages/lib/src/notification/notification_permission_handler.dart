import 'package:core/core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:permission_handler/permission_handler.dart';

final notificationPermissionHandlerProvider = Provider(
  (ref) => NotificationPermissionHandler(),
);

class NotificationPermissionHandler {
  Future<void> request() async {
    if (isNotMobileOS) {
      return;
    }
    Logger.d('NotificationPermissionHandler: request()');

    const permission = Permission.notification;
    final status = await permission.status;
    if (status.isGranted) {
      Logger.d('User granted this permission before');
    } else {
      final before = await permission.shouldShowRequestRationale;
      final rs = await permission.request();
      final after = await permission.shouldShowRequestRationale;

      if (rs.isGranted) {
        Logger.d('User granted this permission');
      } else if (!before && after) {
        Logger.d('Show permission request pop-up and user denied first time');
      } else if (before && !after) {
        Logger.d('Show permission request pop-up and user denied a second time');
      } else if (!before && !after) {
        Logger.d('No more permission pop-ups displayed');
      }

      Logger.d('isDenied: ${await permission.isDenied}');
    }
  }
}

bool get isNotMobileOS =>
    defaultTargetPlatform != TargetPlatform.android && defaultTargetPlatform != TargetPlatform.iOS;
