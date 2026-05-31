import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class FrogTheme extends InheritedWidget {
  const FrogTheme({
    super.key,
    required this.data,
    // required UIKitBuilder uiKitBuilder,
    required super.child,
  })
      // : _uiKit = uiKitBuilder(data)
  ;

  final FrogThemeData data;
  // final UIKitBuilders _uiKit;

  static FrogTheme of(BuildContext context) {
    final FrogTheme? result = context.dependOnInheritedWidgetOfExactType<FrogTheme>();
    assert(result != null, 'No FrogTheme found in context');
    return result!;
  }

  /// This property isn't expected to be called directly from the app,
  /// It's exposed to be called by the UIKit author.
  // UIKitBuilders get uiKit => _uiKit;

  Brightness get brightness => data.brightness;

  FrogColorScheme get colors => data.colorScheme;

  FrogTextTheme get textStyles => data.textStyles;

  String? get resourcesPackage => data.resourcesPackage;

  @override
  bool updateShouldNotify(FrogTheme old) => data.brightness != old.data.brightness;
}

class FrogThemeData {
  final Brightness brightness;
  final ScriptCategory scriptCategory;
  final FrogColorScheme colorScheme;
  final FrogTypography typography;
  final FrogTextTheme textStyles;
  final String? resourcesPackage;

  FrogThemeData({
    this.brightness = Brightness.light,
    this.scriptCategory = ScriptCategory.englishLike,
    this.typography = DefaultFrogTheme.typography,
    FrogColorScheme? colorScheme,
    this.resourcesPackage,
  })  : textStyles = _getTextStyles(scriptCategory, typography),
        colorScheme = colorScheme ?? _getFrogColorScheme(brightness);

  static FrogTextTheme _getTextStyles(ScriptCategory scriptCategory, FrogTypography typography) {
    switch (scriptCategory) {
      case ScriptCategory.englishLike:
        return typography.englishLike;
      case ScriptCategory.dense:
        return typography.dense;
      case ScriptCategory.tall:
        return typography.tall;
    }
  }

  static FrogColorScheme _getFrogColorScheme(Brightness brightness) {
    switch (brightness) {
      case Brightness.dark:
        return DefaultFrogTheme.darkColorScheme;

      case Brightness.light:
        return DefaultFrogTheme.lightColorScheme;
    }
  }
}
