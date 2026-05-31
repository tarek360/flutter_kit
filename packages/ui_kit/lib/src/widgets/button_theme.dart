// // ignore_for_file: avoid_redundant_argument_values
//
// import 'package:design_system/design_system.dart';
// import 'package:flutter/material.dart';
//
// class AppButtonStyle {
//   AppButtonStyle(this.colors, this.appTextTheme);
//
//   final FrogColorScheme colors;
//   final FrogTextTheme appTextTheme;
//
//   static final _buttonShape = WidgetStateProperty.all<RoundedRectangleBorder>(
//     const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
//   );
//
//   Color get defaultForegroundColor => colors.white;
//
//   Color get outlineForegroundColor => colors.brand;
//
//   Color get _defaultBackgroundColor => colors.brand;
//
//   Color get _outlineBackgroundColor => colors.transparent;
//
//   static final _elevation = WidgetStateProperty.all<double>(0);
//
//   static const _defaultMinimumHeight = 44.0;
//   static const _defaultMinimumWidth = 72.0;
//
//   static const _smallMinimumHeight = 28.0;
//   static const _smallMinimumWidth = 56.0;
//
//   static const _largeMinimumHeight = 48.0;
//   static const _largeMinimumWidth = 80.0;
//
//   static final _defaultMinimumSize =
//       WidgetStateProperty.all<Size>(const Size(_defaultMinimumWidth, _defaultMinimumHeight));
//   static final _smallMinimumSize = WidgetStateProperty.all<Size>(const Size(_smallMinimumWidth, _smallMinimumHeight));
//   static final _largeMinimumSize = WidgetStateProperty.all<Size>(const Size(_largeMinimumWidth, _largeMinimumHeight));
//
//   static final _smallFixedSize = WidgetStateProperty.all<Size>(const Size.fromHeight(_smallMinimumHeight));
//   static final _defaultFixedSize = WidgetStateProperty.all<Size>(const Size.fromHeight(_defaultMinimumHeight));
//   static final _largeFixedSize = WidgetStateProperty.all<Size>(const Size.fromHeight(_largeMinimumHeight));
//
//
//   static final _smallPadding =
//   WidgetStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4));
//   static final _defaultPadding =
//       WidgetStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10));
//   static final _largePadding =
//       WidgetStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16));
//
//   late final _smallTextStyle = WidgetStateProperty.all<TextStyle>(appTextTheme.bodyMedium);
//   late final _defaultTextStyle = WidgetStateProperty.all<TextStyle>(appTextTheme.bodyLarge);
//   late final _largeTextStyle = WidgetStateProperty.all<TextStyle>(appTextTheme.titleMedium);
//
//   ButtonStyle get defaultButtonStyle => ButtonStyle(
//         backgroundColor: WidgetStateProperty.resolveWith<Color?>((Set<WidgetState> states) {
//           if (states.contains(WidgetState.disabled)) {
//             return colors.primary50;
//           }
//           return _defaultBackgroundColor;
//         }),
//         foregroundColor: WidgetStateProperty.all<Color>(defaultForegroundColor),
//         elevation: _elevation,
//         shape: _buttonShape,
//         minimumSize: _defaultMinimumSize,
//         fixedSize: _defaultFixedSize,
//         padding: _defaultPadding,
//         textStyle: _defaultTextStyle,
//       );
//
//   ButtonStyle get textButtonStyle => ButtonStyle(
//         backgroundColor: WidgetStateProperty.all<Color>(_outlineBackgroundColor),
//         foregroundColor: WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
//           if (states.contains(WidgetState.disabled)) {
//             return colors.primary20;
//           }
//           return outlineForegroundColor;
//         }),
//         elevation: _elevation,
//         shape: _buttonShape,
//         minimumSize: _defaultMinimumSize,
//         fixedSize: _defaultFixedSize,
//         padding: _defaultPadding,
//         textStyle: _defaultTextStyle,
//         side: null,
//       );
//
//   ButtonStyle get outlineButtonStyle => ButtonStyle(
//         backgroundColor: WidgetStateProperty.all<Color>(_outlineBackgroundColor),
//         foregroundColor: WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
//           if (states.contains(WidgetState.disabled)) {
//             return colors.primary20;
//           }
//           return outlineForegroundColor;
//         }),
//         elevation: _elevation,
//         shape: _buttonShape,
//         minimumSize: _defaultMinimumSize,
//         fixedSize: _defaultFixedSize,
//         padding: _defaultPadding,
//         textStyle: _defaultTextStyle,
//         side: WidgetStateProperty.resolveWith<BorderSide>((Set<WidgetState> states) {
//           final color = states.contains(WidgetState.disabled) ? colors.primary20 : outlineForegroundColor;
//           return BorderSide(color: color, width: 1);
//         }),
//       );
//
//   ButtonStyle get segmentedButtonStyle => ButtonStyle(
//         overlayColor: WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
//           if (states.contains(WidgetState.pressed) && !states.contains(WidgetState.selected)) {
//             return colors.neutral00;
//           }
//           if (states.contains(WidgetState.pressed)) {
//             return colors.primary20;
//           }
//           return colors.primary20.withOpacity(0.3);
//         }),
//         backgroundColor: WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
//           if (states.contains(WidgetState.selected)) {
//             return colors.primary20;
//           }
//           return _outlineBackgroundColor;
//         }),
//         foregroundColor: WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
//           if (states.contains(WidgetState.selected)) {
//             return colors.neutral00;
//           }
//           if (states.contains(WidgetState.disabled)) {
//             return colors.primary20;
//           }
//           return colors.primary50;
//         }),
//         elevation: _elevation,
//         shape: _buttonShape,
//         minimumSize: _defaultMinimumSize,
//         fixedSize: _defaultFixedSize,
//         padding: _defaultPadding,
//         textStyle: _defaultTextStyle,
//         side: WidgetStateProperty.resolveWith<BorderSide>((Set<WidgetState> states) {
//           final color = states.contains(WidgetState.disabled) ? colors.primary20 : colors.neutral70;
//           return BorderSide(color: color, width: 1);
//         }),
//       );
//
//   ButtonStyle get smallDefaultButtonStyle => _makeSmallSizeStyle(defaultButtonStyle);
//   ButtonStyle get largeDefaultButtonStyle => _makeLargeSizeStyle(defaultButtonStyle);
//
//
//   ButtonStyle get smallOutlineButtonStyle => _makeSmallSizeStyle(outlineButtonStyle);
//   ButtonStyle get largeOutlineButtonStyle => _makeLargeSizeStyle(outlineButtonStyle);
//
//   ButtonStyle get smallTextButtonStyle => _makeSmallSizeStyle(textButtonStyle);
//   ButtonStyle get largeTextButtonStyle => _makeLargeSizeStyle(textButtonStyle);
//
//   ButtonStyle _makeSmallSizeStyle(ButtonStyle style) {
//     return style.copyWith(
//       minimumSize: _smallMinimumSize,
//       fixedSize: _smallFixedSize,
//       padding: _smallPadding,
//       textStyle: _smallTextStyle,
//     );
//   }
//
//   ButtonStyle _makeLargeSizeStyle(ButtonStyle style) {
//     return style.copyWith(
//       minimumSize: _largeMinimumSize,
//       fixedSize: _largeFixedSize,
//       padding: _largePadding,
//       textStyle: _largeTextStyle,
//     );
//   }
// }
