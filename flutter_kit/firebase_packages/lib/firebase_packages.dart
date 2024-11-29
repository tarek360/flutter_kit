library core;

import 'package:core/src/cache/app_shared_preferences.dart';
import 'package:core/src/package_info/package_info_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

export 'package:network/network.dart';

export 'src/notification/fcm_handler.dart';
export 'src/notification/models.dart';
export 'src/notification/notification_permission_handler.dart';
export 'src/notification/notification_service.dart';

abstract class Core {
  Core._();

  static Future<void> init(WidgetRef ref) async {
    await ref.read(appSharedPreferenceProvider).init();
    await ref.read(packageInfoServiceProvider).init();
  }
}
