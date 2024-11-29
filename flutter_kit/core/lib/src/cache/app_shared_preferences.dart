import 'dart:convert';

import 'package:core/core.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

final appSharedPreferenceProvider = Provider<AppSharedPreferences>((ref) {
  return AppSharedPreferences();
});

class AppSharedPreferences {
  static const _userPinCodeSentKey = "_userPinCodeSentKey";
  static const _isAnonymousUser = "_isAnonymousUser";
  static const _userTokenKey = "_userTokenKey";
  static const _userDataKey = "_userDataKey";
  static const _fcmTokenSentKey = "_fcmTokenSent";
  static const _environmentKey = "_environmentKey";
  static const _lastRefreshTokenTimeKey = "_lastRefreshTokenTimeKey";
  static const _appFirstInstallationDateKey = "_appFirstInstallationDateKey";

  late SharedPreferences _sharedPreferences;

  static final AppSharedPreferences _instance = AppSharedPreferences._();
  static const _secureStorage = FlutterSecureStorage();

  factory AppSharedPreferences() {
    return _instance;
  }

  AppSharedPreferences._();

  Future<void> init() async {
    _setFirstInstallationDate();
    _sharedPreferences = await SharedPreferences.getInstance();
    // _sharedPreferences.clear();
  }

  Object? get(String key) {
    return _sharedPreferences.get(key);
  }

  int? getInt(String key) {
    return _sharedPreferences.getInt(key);
  }

  void setInt(String key, int value) {
    _sharedPreferences.setInt(key, value);
  }

  String? getString(String key) {
    return _sharedPreferences.getString(key);
  }

  void setString(String key, String value) {
    _sharedPreferences.setString(key, value);
  }

  bool? getBool(String key) {
    return _sharedPreferences.getBool(key);
  }

  // ignore: avoid_positional_boolean_parameters
  void setBool(String key, bool value) {
    _sharedPreferences.setBool(key, value);
  }

  T? getObject<T>(String key, T Function(Map<String, dynamic>) fromJson) {
    final data = _sharedPreferences.getString(key);
    if (data == null) {
      return null;
    }
    final map = jsonDecode(data) as Map<String, dynamic>;

    return fromJson(map);
  }

  void setObject(String key, Object? object) {
    _sharedPreferences.setString(key, jsonEncode(object));
  }

  void clearObject(String key) {
    _sharedPreferences.remove(key);
  }

  void markFcmTokenAsSent() {
    _sharedPreferences.setInt(_fcmTokenSentKey, DateTime.now().millisecondsSinceEpoch);
  }

  DateTime? getLastFcmTokenSentDate() {
    final milliseconds = _sharedPreferences.getInt(_fcmTokenSentKey);
    if (milliseconds == null) {
      return null;
    }
    return DateTime.fromMillisecondsSinceEpoch(milliseconds);
  }

  void setUserData(String user) {
    _sharedPreferences.setString(_userDataKey, user);
  }

  String? getUserData() {
    return _sharedPreferences.getString(_userDataKey);
  }

  void setLastRefreshTokenTime(int time) {
    _sharedPreferences.setInt(_lastRefreshTokenTimeKey, time);
  }

  int? getLastRefreshTokenTime() {
    return _sharedPreferences.getInt(_lastRefreshTokenTimeKey);
  }

  String? getUserToken() => _sharedPreferences.getString(_userTokenKey);

  bool isUserLoggedIn() => getUserToken() != null;

  Future<void> setUserToken(String token) => _sharedPreferences.setString(_userTokenKey, token);

  Future<void> cleanUserToken() => _sharedPreferences.remove(_userTokenKey);

  bool hasPinCodeSent() => _sharedPreferences.getBool(_userPinCodeSentKey) ?? false;

  void markPinCodeAsSent() => _sharedPreferences.setBool(_userPinCodeSentKey, true);

  void resetPinCodeAsSent() => _sharedPreferences.setBool(_userPinCodeSentKey, false);

  bool isAnonymousUser() => _sharedPreferences.getBool(_isAnonymousUser) ?? false;

  // ignore: avoid_positional_boolean_parameters
  Future<void> setAnonymousUser(bool value) => _sharedPreferences.setBool(_isAnonymousUser, value);

  Environment? getEnvironment() {
    final name = _sharedPreferences.getString(_environmentKey);
    return name == null ? null : Environment.values.byName(name);
  }

  void setEnvironment(Environment environment) => _sharedPreferences.setString(_environmentKey, environment.name);

  Future<void> _setFirstInstallationDate() async {
    try {
      final data = await _secureStorage.read(key: _appFirstInstallationDateKey);
      if (data == null) {
        await _secureStorage.write(key: _appFirstInstallationDateKey, value: DateTime.now().toIso8601String());
      }
    } on PlatformException catch (e, s) {
      Logger.er('Failed to set first installation date: $e', stackTrace: s);
    }
  }

  Future<DateTime?> getFirstInstallationDate() async {
    String? data;
    try {
      data = await _secureStorage.read(key: _appFirstInstallationDateKey);
    } on PlatformException catch (e, s) {
      Logger.er('Failed to get first installation date: $e', stackTrace: s);
    }
    if (data == null) return null;
    return DateTime.tryParse(data);
  }

  void clear() {
    final environment = getEnvironment();
    _sharedPreferences.clear();
    if (environment != null) {
      setEnvironment(environment);
    }
  }

  Set<String> getKeys() {
    return _sharedPreferences.getKeys();
  }

  /// Returns true if the key is expired and marks it as renewed if [markAsRenewed] is true.
  bool isExpired(String key, {required Duration duration, bool markAsRenewed = false}) {
    final now = DateTime.now();

    final bool isExpired;
    final lastDisplayDate = getInt(key);
    if (lastDisplayDate != null) {
      final expiryDate = DateTime.fromMillisecondsSinceEpoch(lastDisplayDate).add(duration);
      isExpired = expiryDate.isBefore(now);
    } else {
      isExpired = true;
    }

    if (isExpired && markAsRenewed) {
      setInt(key, now.millisecondsSinceEpoch);
    }

    return isExpired;
  }

  void markAsRenewedNow(String key) {
    setInt(key, DateTime.now().millisecondsSinceEpoch);
  }
}
