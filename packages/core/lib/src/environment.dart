import 'package:core/core.dart';

/// *************************************************************
/// ******** CHANGE THIS VALUE TO SWITCH THE ENVIRONMENT ********
/// *************************************************************

Environment? _environment;

Environment get environment {
  return _environment ?? _fromString(const String.fromEnvironment('ENVIRONMENT'));
}

Environment _fromString(String value) {
  switch (value) {
    case 'local':
      return Environment.local;
    case 'test':
      return Environment.test;
    case 'staging':
      return Environment.staging;
    case 'prod':
      return Environment.prod;
    default:
      return Environment.local;
  }
}

void restoreEnvironment(AppSharedPreferences sharedPreferences) {
  final restoredValue = sharedPreferences.getEnvironment();
  if (restoredValue != null) {
    _environment = restoredValue;
  }
}

void updateEnvironment(Environment value) {
  _environment = value;
}

enum Environment {
  local,
  test,
  staging,
  prod,
}

extension EnvironmentExtension on Environment {
  bool get isProd => this == Environment.prod;
}
// '2VgE0V178XvdGq9M4rDUPpMies1', '2S3KT6BhXZlTh4ZmbfrO2h2IX6T', '2SID89BYDt7QzI9IuPUkdyUziAS', '2Vg6xRSO1mQFPRfsgMGIqQOzR5u'
