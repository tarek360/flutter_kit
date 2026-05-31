import 'package:core/core.dart';

import 'notification_service.dart';

typedef UpdateFcm = Future<bool> Function(String fcmToken);

class FCMHandler {
  final AppSharedPreferences _appSharedPreferences;
  final UpdateFcm _updateFcm;

  FCMHandler(
    this._appSharedPreferences,
    this._updateFcm,
  );

  void sync() {
    _onTokenRefresh();
    update();
  }

  void _onTokenRefresh() {
    if (isNotMobileOS) {
      return;
    }
    NotificationService.onTokenRefresh().listen((token) async {
      final ok = await _updateFcm(token);
      if (ok) {
        _appSharedPreferences.markFcmTokenAsSent();
      }
    });
  }

  Future<void> update({bool forceUpdate = false}) async {
    if (isNotMobileOS) {
      return;
    }
    if (forceUpdate || _shouldSendFcmTokenSent()) {
      final token = await NotificationService.getToken();
      if (token != null) {
        final ok = await _updateFcm(token);
        if (ok) {
          _appSharedPreferences.markFcmTokenAsSent();
        }
      }
    }
  }

  bool _shouldSendFcmTokenSent() {
    const expiryDuration = Duration(days: 30);
    final cacheDate = _appSharedPreferences.getLastFcmTokenSentDate();
    if (cacheDate == null) {
      return true;
    }
    return cacheDate.add(expiryDuration).isBefore(DateTime.now());
  }
}
