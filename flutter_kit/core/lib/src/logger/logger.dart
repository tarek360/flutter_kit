// ignore_for_file: avoid_annotating_with_dynamic

import 'dart:collection';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart' as logger;

class Logger {
  Logger._();

  static final logger.Logger _logger = logger.Logger(
    printer: logger.PrettyPrinter(
      methodCount: 4,
    ),
  );
  static final errors = Queue<String>();

  @Deprecated("[Level.verbose] is being deprecated in favor of [Level.trace], use [t] instead.")
  static void v(String message, [StackTrace? stackTrace]) {
    _logger.t(message, stackTrace: stackTrace);
  }

  static void t(String message, [StackTrace? stackTrace]) {
    _logger.t(message, stackTrace: stackTrace);
  }

  static void d(String message, [StackTrace? stackTrace]) {
    _logger.d(message, stackTrace: stackTrace);
  }

  static void i(String message, [StackTrace? stackTrace]) {
    _logger.i(message, stackTrace: stackTrace);
  }

  static void w(String message, [StackTrace? stackTrace]) {
    _logger.w(message, stackTrace: stackTrace);
  }

  static void e(String message, {StackTrace? stackTrace}) {
    _logger.e(message, stackTrace: stackTrace);
    errors.add(message);
    if (errors.length > 100) {
      errors.removeFirst();
    }
  }

  ///Remote log to Firebase Crashlytics
  static void er(
    String message, {
    StackTrace? stackTrace,
    Iterable<Object> information = const [],
  }) {
    if (!kDebugMode) {
      FirebaseCrashlytics.instance.recordError(message, stackTrace, information: information);
    }
    e(message, stackTrace: stackTrace);
  }

  static void rSetCustomKey(String key, Object value) {
    if (!kDebugMode) {
      FirebaseCrashlytics.instance.setCustomKey(key, value);
    }
  }

  static void rSetUserIdentifier(String userID) {
    if (!kDebugMode) {
      FirebaseCrashlytics.instance.setUserIdentifier(userID);
    }
  }
}
