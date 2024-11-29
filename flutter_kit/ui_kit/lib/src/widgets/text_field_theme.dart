import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class TextInputStyle {
  const TextInputStyle(this.colors, this.appTextTheme);

  final FrogColorScheme colors;
  final FrogTextTheme appTextTheme;

  InputDecorationTheme get inputDecorationTheme => InputDecorationTheme(
        border: _enabledInputBorder,
        enabledBorder: _enabledInputBorder,
        focusedBorder: _focusedInputBorder,
        errorBorder: errorInputBorder,
        focusedErrorBorder: focusedErrorInputBorder,
        labelStyle: appTextTheme.labelMedium,
        hintStyle: appTextTheme.labelMedium,
        helperStyle: appTextTheme.labelMedium,
        errorStyle: appTextTheme.labelMedium.copyWith(color: colors.negative70),
      );

  OutlineInputBorder get _focusedInputBorder => OutlineInputBorder(
        borderSide: BorderSide(color: colors.brand, width: 1),
        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
      );

  OutlineInputBorder get _enabledInputBorder => OutlineInputBorder(
        borderSide: BorderSide(color: colors.neutral70, width: 1),
        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
      );

  OutlineInputBorder get errorInputBorder => OutlineInputBorder(
        borderSide: BorderSide(color: colors.negative80, width: 1),
        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
      );

  OutlineInputBorder get focusedErrorInputBorder => OutlineInputBorder(
        borderSide: BorderSide(color: colors.negative80, width: 1.5),
        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
      );
}
