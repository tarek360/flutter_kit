import 'package:design_system/design_system.dart';
import 'package:flutter/widgets.dart';

enum FrogTextStyle {
  displayLarge,
  displayMedium,
  displaySmall,
  headlineLarge,
  headlineMedium,
  headlineSmall,
  titleLarge,
  titleMedium,
  titleSmall,
  bodyLarge,
  bodyMedium,
  bodySmall,
  labelLarge,
  labelMedium,
  labelSmall,
}

class FrogText extends StatelessWidget {
  const FrogText(
    this.text, {
    super.key,
    required this.textStyle,
    this.color,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.weight,
    this.lineHeight,
    this.decoration,
    this.textScaler,
  });

  const FrogText.displayLarge(
    this.text, {
    super.key,
    this.color,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.weight,
    this.lineHeight,
    this.decoration,
    this.textScaler,
  }) : textStyle = FrogTextStyle.displayLarge;

  const FrogText.displayMedium(
    this.text, {
    super.key,
    this.color,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.weight,
    this.lineHeight,
    this.decoration,
    this.textScaler,
  }) : textStyle = FrogTextStyle.displayMedium;

  const FrogText.displaySmall(
    this.text, {
    super.key,
    this.color,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.weight,
    this.lineHeight,
    this.decoration,
    this.textScaler,
  }) : textStyle = FrogTextStyle.displaySmall;

  const FrogText.headlineLarge(
    this.text, {
    super.key,
    this.color,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.weight,
    this.lineHeight,
    this.decoration,
    this.textScaler,
  }) : textStyle = FrogTextStyle.headlineLarge;

  const FrogText.headlineMedium(
    this.text, {
    super.key,
    this.color,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.weight,
    this.lineHeight,
    this.decoration,
    this.textScaler,
  }) : textStyle = FrogTextStyle.headlineMedium;

  const FrogText.headlineSmall(
    this.text, {
    super.key,
    this.color,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.weight,
    this.lineHeight,
    this.decoration,
    this.textScaler,
  }) : textStyle = FrogTextStyle.headlineSmall;

  const FrogText.titleLarge(
    this.text, {
    super.key,
    this.color,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.weight,
    this.lineHeight,
    this.decoration,
    this.textScaler,
  }) : textStyle = FrogTextStyle.titleLarge;

  const FrogText.titleMedium(
    this.text, {
    super.key,
    this.color,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.weight,
    this.lineHeight,
    this.decoration,
    this.textScaler,
  }) : textStyle = FrogTextStyle.titleMedium;

  const FrogText.titleSmall(
    this.text, {
    super.key,
    this.color,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.weight,
    this.lineHeight,
    this.decoration,
    this.textScaler,
  }) : textStyle = FrogTextStyle.titleSmall;

  const FrogText.bodyLarge(
    this.text, {
    super.key,
    this.color,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.weight,
    this.lineHeight,
    this.decoration,
    this.textScaler,
  }) : textStyle = FrogTextStyle.bodyLarge;

  const FrogText.bodyMedium(
    this.text, {
    super.key,
    this.color,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.weight,
    this.lineHeight,
    this.decoration,
    this.textScaler,
  }) : textStyle = FrogTextStyle.bodyMedium;

  const FrogText.bodySmall(
    this.text, {
    super.key,
    this.color,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.weight,
    this.lineHeight,
    this.decoration,
    this.textScaler,
  }) : textStyle = FrogTextStyle.bodySmall;

  const FrogText.labelLarge(
    this.text, {
    super.key,
    this.color,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.weight,
    this.lineHeight,
    this.decoration,
    this.textScaler,
  }) : textStyle = FrogTextStyle.labelLarge;

  const FrogText.labelMedium(
    this.text, {
    super.key,
    this.color,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.weight,
    this.lineHeight,
    this.decoration,
    this.textScaler,
  }) : textStyle = FrogTextStyle.labelMedium;

  const FrogText.labelSmall(
    this.text, {
    super.key,
    this.color,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.weight,
    this.lineHeight,
    this.decoration,
    this.textScaler,
  }) : textStyle = FrogTextStyle.labelSmall;

  final String text;
  final FrogTextStyle textStyle;
  final Color? color;
  final FontWeight? weight;
  final double? lineHeight;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextAlign? textAlign;
  final TextDecoration? decoration;
  final TextScaler? textScaler;

  @override
  Widget build(BuildContext context) {
    final textScaler = this.textScaler;

    final theme = FrogTheme.of(context);
    final color = this.color ?? theme.colors.neutral150;
    return Text(
      text,
      style: _getTextStyle(theme.textStyles).copyWith(
        color: color,
        fontWeight: weight,
        height: lineHeight,
        decoration: decoration,
      ),
      maxLines: maxLines,
      overflow: overflow,
      textAlign: textAlign,
      textScaler: textScaler ?? _clampTextScaler(MediaQuery.textScalerOf(context)),
    );
  }

  TextStyle _getTextStyle(FrogTextTheme textStyles) {
    switch (textStyle) {
      case FrogTextStyle.displayLarge:
        return textStyles.displayLarge;
      case FrogTextStyle.displayMedium:
        return textStyles.displayMedium;
      case FrogTextStyle.displaySmall:
        return textStyles.displaySmall;
      case FrogTextStyle.headlineLarge:
        return textStyles.headlineLarge;
      case FrogTextStyle.headlineMedium:
        return textStyles.headlineMedium;
      case FrogTextStyle.headlineSmall:
        return textStyles.headlineSmall;
      case FrogTextStyle.titleLarge:
        return textStyles.titleLarge;
      case FrogTextStyle.titleMedium:
        return textStyles.titleMedium;
      case FrogTextStyle.titleSmall:
        return textStyles.titleSmall;
      case FrogTextStyle.bodyLarge:
        return textStyles.bodyLarge;
      case FrogTextStyle.bodyMedium:
        return textStyles.bodyMedium;
      case FrogTextStyle.bodySmall:
        return textStyles.bodySmall;
      case FrogTextStyle.labelLarge:
        return textStyles.labelLarge;
      case FrogTextStyle.labelMedium:
        return textStyles.labelMedium;
      case FrogTextStyle.labelSmall:
        return textStyles.labelSmall;
    }
  }

  TextScaler _clampTextScaler(TextScaler baseTextScaler) {
    return switch (textStyle) {
      FrogTextStyle.displayLarge => baseTextScaler.clamp(minScaleFactor: 0.8, maxScaleFactor: 1.0),
      FrogTextStyle.displayMedium => baseTextScaler.clamp(minScaleFactor: 0.8, maxScaleFactor: 1.0),
      FrogTextStyle.displaySmall => baseTextScaler.clamp(minScaleFactor: 0.8, maxScaleFactor: 1.0),
      FrogTextStyle.headlineLarge => baseTextScaler.clamp(minScaleFactor: 0.8, maxScaleFactor: 1.0),
      FrogTextStyle.headlineMedium => baseTextScaler.clamp(minScaleFactor: 0.8, maxScaleFactor: 1.0),
      FrogTextStyle.headlineSmall => baseTextScaler.clamp(minScaleFactor: 0.8, maxScaleFactor: 1.0),
      FrogTextStyle.titleLarge => baseTextScaler.clamp(minScaleFactor: 0.8, maxScaleFactor: 1.4),
      FrogTextStyle.titleMedium => baseTextScaler.clamp(minScaleFactor: 0.8, maxScaleFactor: 1.5),
      FrogTextStyle.titleSmall => baseTextScaler.clamp(minScaleFactor: 0.8, maxScaleFactor: 1.7),
      FrogTextStyle.bodyLarge => baseTextScaler.clamp(minScaleFactor: 0.8, maxScaleFactor: 1.8),
      FrogTextStyle.bodyMedium => baseTextScaler.clamp(minScaleFactor: 0.8, maxScaleFactor: 2.0),
      FrogTextStyle.bodySmall => baseTextScaler.clamp(minScaleFactor: 0.8, maxScaleFactor: 2.0),
      FrogTextStyle.labelLarge => baseTextScaler.clamp(minScaleFactor: 0.8, maxScaleFactor: 2.0),
      FrogTextStyle.labelMedium => baseTextScaler.clamp(minScaleFactor: 0.8, maxScaleFactor: 2.0),
      FrogTextStyle.labelSmall => baseTextScaler.clamp(minScaleFactor: 0.8, maxScaleFactor: 2.0),
    };
  }
}
