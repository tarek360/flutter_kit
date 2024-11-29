import 'dart:ui';

import 'package:collection/collection.dart';

Locale getLocaleFallback(List<Locale> supportedLocales) {
  final locale = PlatformDispatcher.instance.locale;

  /// Assume the device locale is "ar_EG"

  /// If exactly the same locale matched e.g "ar_EG"
  if (supportedLocales.contains(locale)) {
    return locale;
  }

  /// If same language matched with a base locale e.g "ar"
  final noCountriesLocales = supportedLocales.where((element) => element.countryCode == null).toList();
  final baseLanguageMatch =
      noCountriesLocales.firstWhereOrNull((element) => element.languageCode == locale.languageCode);
  if (baseLanguageMatch != null) {
    return baseLanguageMatch;
  }

  /// If same language matched with a base locale e.g "ar_SA"
  final anyCountryMatch = supportedLocales.firstWhereOrNull((element) => element.languageCode == locale.languageCode);
  if (anyCountryMatch != null) {
    return anyCountryMatch;
  }

  return supportedLocales.first;
}
