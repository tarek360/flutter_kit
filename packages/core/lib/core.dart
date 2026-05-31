library core;

import 'package:core/src/cache/app_shared_preferences.dart';
import 'package:core/src/package_info/package_info_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

export 'package:network/network.dart';

export 'src/app_lifecycle/app_lifecycle.dart';
export 'src/cache/app_shared_preferences.dart';
export 'src/cache/file_cache_manager.dart';
export 'src/environment.dart';
export 'src/logger/logger.dart';
export 'src/models/get_cache_then_update.dart';
export 'src/models/result.dart';
export 'src/models/tuples.dart';
export 'src/models/x_state.dart';
export 'src/network/json_date_time_converter.dart';
export 'src/network/models/model.dart';
export 'src/network/request_headers_interceptor.dart';
export 'src/package_info/package_info_service.dart';
export 'src/utils/date_utils.dart';
export 'src/utils/helpers.dart';
export 'src/utils/locale_fallback.dart';
export 'src/utils/navigation_utils.dart';
export 'src/utils/os_utils.dart';

abstract class Core {
  Core._();

  static Future<void> init(WidgetRef ref) async {
    await ref.read(appSharedPreferenceProvider).init();
    await ref.read(packageInfoServiceProvider).init();
  }
}
