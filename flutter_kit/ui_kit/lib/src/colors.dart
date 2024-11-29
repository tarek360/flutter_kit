// ignore_for_file: unused_field

import 'package:design_system/design_system.dart';
import 'package:flutter/widgets.dart';

class ChatUIKitColorScheme extends FrogColorScheme {
  ChatUIKitColorScheme({
    required super.brand,
    required super.onBrand,
    required super.primary130,
    required super.primary100,
    required super.primary80,
    required super.primary50,
    required super.primary20,
    required super.secondary120,
    required super.secondary100,
    required super.secondary80,
    required super.secondary60,
    required super.tertiary120,
    required super.tertiary100,
    required super.tertiary80,
    required super.tertiary60,
    required super.neutral150,
    required super.neutral140,
    required super.neutral130,
    required super.neutral120,
    required super.neutral110,
    required super.neutral100,
    required super.neutral90,
    required super.neutral80,
    required super.neutral70,
    required super.neutral60,
    required super.neutral50,
    required super.neutral40,
    required super.neutral30,
    required super.neutral20,
    required super.neutral10,
    required super.neutral00,
    required super.positive140,
    required super.positive120,
    required super.positive110,
    required super.positive100,
    required super.positive90,
    required super.positive80,
    required super.positive70,
    required super.positive60,
    required super.positive50,
    required super.positive40,
    required super.positive30,
    required super.positive20,
    required super.positive10,
    required super.negative120,
    required super.negative100,
    required super.negative80,
    required super.negative70,
    required super.negative60,
    required super.negative50,
    required super.negative40,
    required super.negative30,
    required super.negative20,
    required super.negative10,
  });
}

abstract class ChatUIKitColors {
  const ChatUIKitColors._();

  static ChatUIKitColorScheme of(BuildContext context) {
    return FrogTheme.of(context).colors as ChatUIKitColorScheme;
  }

  static const Color _undefinedColor = Color(0x00000000);

  static final light = ChatUIKitColorScheme(
    brand: _FigmaColors.lightBrand,
    onBrand: Color(0xffFFFFFF),
    primary130: _FigmaColors.lightPrimary130,
    primary100: _FigmaColors.lightPrimary100,
    primary80: _FigmaColors.lightPrimary80,
    primary50: _FigmaColors.lightPrimary50,
    primary20: _FigmaColors.lightPrimary20,
    secondary120: _FigmaColors.lightSecondary120,
    secondary100: _FigmaColors.lightSecondary100,
    secondary80: _FigmaColors.lightSecondary80,
    secondary60: _FigmaColors.lightSecondary60,
    tertiary120: _FigmaColors.lightTertiary120,
    tertiary100: _FigmaColors.lightTertiary100,
    tertiary80: _FigmaColors.lightTertiary80,
    tertiary60: _FigmaColors.lightTertiary60,
    neutral150: _FigmaColors.lightNeutral150,
    neutral140: const Color(0xff3a393f),
    neutral130: _FigmaColors.lightNeutral130,
    neutral120: const Color(0xff4e4c54),
    neutral110: const Color(0xff58565e),
    neutral100: _FigmaColors.lightNeutral100,
    neutral90: const Color(0xff727078),
    neutral80: const Color(0xff817F87),
    neutral70: _FigmaColors.lightNeutral70,
    neutral60: _FigmaColors.lightNeutral60,
    neutral50: _FigmaColors.lightNeutral50,
    neutral40: _FigmaColors.lightNeutral40,
    neutral30: _FigmaColors.lightNeutral30,
    neutral20: _FigmaColors.lightNeutral20,
    neutral10: _FigmaColors.lightNeutral10,
    neutral00: _FigmaColors.lightNeutral00,
    positive140: _undefinedColor,
    positive120: _undefinedColor,
    positive110: _FigmaColors.lightPositive110,
    positive100: _undefinedColor,
    positive90: _FigmaColors.lightPositive90,
    positive80: _undefinedColor,
    positive70: _undefinedColor,
    positive60: _FigmaColors.lightPositive60,
    positive50: _undefinedColor,
    positive40: _undefinedColor,
    positive30: _undefinedColor,
    positive20: _undefinedColor,
    positive10: _undefinedColor,
    negative120: _FigmaColors.lightNegative120,
    negative100: _FigmaColors.lightNegative100,
    negative80: _FigmaColors.lightNegative80,
    negative70: _undefinedColor,
    negative60: _undefinedColor,
    negative50: _undefinedColor,
    negative40: _undefinedColor,
    negative30: _undefinedColor,
    negative20: _undefinedColor,
    negative10: _undefinedColor,
  );

  static final dark = ChatUIKitColorScheme(
    brand: _FigmaColors.darkBrand,
    onBrand: Color(0xffFFFFFF),
    primary130: _FigmaColors.darkPrimary130,
    primary100: _FigmaColors.darkPrimary100,
    primary80: _FigmaColors.darkPrimary80,
    primary50: _FigmaColors.darkPrimary50,
    primary20: _FigmaColors.darkPrimary20,
    secondary120: _FigmaColors.darkSecondary120,
    secondary100: _FigmaColors.darkSecondary100,
    secondary80: _FigmaColors.darkSecondary80,
    secondary60: _FigmaColors.darkSecondary60,
    tertiary120: _FigmaColors.darkTertiary120,
    tertiary100: _FigmaColors.darkTertiary100,
    tertiary80: _FigmaColors.darkTertiary80,
    tertiary60: _FigmaColors.darkTertiary60,
    neutral150: _FigmaColors.darkNeutral150,
    neutral140: const Color(0xffDFDFE1),
    neutral130: _FigmaColors.darkNeutral130,
    neutral120: const Color(0xffC8C6CC),
    neutral110: const Color(0xffBAB9BF),
    neutral100: _FigmaColors.darkNeutral100,
    neutral90: const Color(0xff939196),
    neutral80: const Color(0xff838287),
    neutral70: _FigmaColors.darkNeutral70,
    neutral60: _FigmaColors.darkNeutral60,
    neutral50: _FigmaColors.darkNeutral50,
    neutral40: _FigmaColors.darkNeutral40,
    neutral30: _FigmaColors.darkNeutral30,
    neutral20: _FigmaColors.darkNeutral20,
    neutral10: _FigmaColors.darkNeutral10,
    neutral00: _FigmaColors.darkNeutral00,
    positive140: _undefinedColor,
    positive120: _undefinedColor,
    positive110: _FigmaColors.darkPositive110,
    positive100: _undefinedColor,
    positive90: _FigmaColors.darkPositive90,
    positive80: _undefinedColor,
    positive70: _undefinedColor,
    positive60: _FigmaColors.darkPositive60,
    positive50: _undefinedColor,
    positive40: _undefinedColor,
    positive30: _undefinedColor,
    positive20: _undefinedColor,
    positive10: _undefinedColor,
    negative120: _FigmaColors.darkNegative120,
    negative100: _FigmaColors.darkNegative100,
    negative80: _FigmaColors.darkNegative80,
    negative70: _undefinedColor,
    negative60: _undefinedColor,
    negative50: _undefinedColor,
    negative40: _undefinedColor,
    negative30: _undefinedColor,
    negative20: _undefinedColor,
    negative10: _undefinedColor,
  );
}

abstract class _FigmaColors {
  const _FigmaColors();

  static const Color lightBrand = Color(0xff0278cc);
  static const Color lightPrimary130 = Color(0xff0058a4);
  static const Color lightPrimary100 = Color(0xff0278cc);
  static const Color lightPrimary80 = Color(0xff3396e6);
  static const Color lightPrimary50 = Color(0xff80c0ff);
  static const Color lightPrimary20 = Color(0xffcce7ff);
  static const Color lightSecondary120 = Color(0xffcb5500);
  static const Color lightSecondary100 = Color(0xff00FFFF);
  static const Color lightSecondary80 = Color(0xfffe8833);
  static const Color lightSecondary60 = Color(0xffffa566);
  static const Color lightCalendarHighlight = Color(0xfff8eee3);
  static const Color lightTertiary120 = Color(0xffcbc100);
  static const Color lightTertiary100 = Color(0xffe8dd09);
  static const Color lightTertiary80 = Color(0xfffef433);
  static const Color lightTertiary60 = Color(0xffffff66);
  static const Color lightNeutral150 = Color(0xff312f35);
  static const Color lightNeutral130 = Color(0xff44424a);
  static const Color lightNeutral100 = Color(0xff626068);
  static const Color lightNeutral70 = Color(0xff918f96);
  static const Color lightNeutral60 = Color(0xffa09fa5);
  static const Color lightNeutral50 = Color(0xffb0afb5);
  static const Color lightNeutral40 = Color(0xffc0bec4);
  static const Color lightNeutral30 = Color(0xffd0cfd3);
  static const Color lightNeutral20 = Color(0xffdfdfe1);
  static const Color lightNeutral10 = Color(0xffefeff0);
  static const Color lightNeutral00 = Color(0xfff7f9fc);
  static const Color lightPositive110 = Color(0xff00A916);
  static const Color lightPositive90 = Color(0xff00CB00);
  static const Color lightPositive60 = Color(0xff66E76A);
  static const Color lightNegative120 = Color(0xffcc291c);
  static const Color lightNegative100 = Color(0xfff44336);
  static const Color lightNegative80 = Color(0xffff5c4f);
  static const Color lightRM1SeaFrame = Color(0xff80c0ff);
  static const Color lightRM1SeaIndicator = Color(0xff0278cc);
  static const Color darkBrand = Color(0xff3591d4);
  static const Color darkPrimary130 = Color(0xffcce6ff);
  static const Color darkPrimary100 = Color(0xff8cc6fa);
  static const Color darkPrimary80 = Color(0xff51a2e0);
  static const Color darkPrimary50 = Color(0xff2d7bba);
  static const Color darkPrimary20 = Color(0xff205487);
  static const Color darkSecondary120 = Color(0xffff964d);
  static const Color darkSecondary100 = Color(0xff00FFFF);
  static const Color darkSecondary80 = Color(0xffdb6100);
  static const Color darkSecondary60 = Color(0xffb34a00);
  static const Color darkCalendarHighlight = Color(0xff262017);
  static const Color darkTertiary120 = Color(0xfff7f794);
  static const Color darkTertiary100 = Color(0xfff7f563);
  static const Color darkTertiary80 = Color(0xffede432);
  static const Color darkTertiary60 = Color(0xffd4ca15);
  static const Color darkNeutral150 = Color(0xffeaeff3);
  static const Color darkNeutral130 = Color(0xffd4d8df);
  static const Color darkNeutral100 = Color(0xffb4b7c0);
  static const Color darkNeutral70 = Color(0xff6f737b);
  static const Color darkNeutral60 = Color(0xff5f636c);
  static const Color darkNeutral50 = Color(0xff565962);
  static const Color darkNeutral40 = Color(0xff4c4f59);
  static const Color darkNeutral30 = Color(0xff42454f);
  static const Color darkNeutral20 = Color(0xff393d45);
  static const Color darkNeutral10 = Color(0xff30333b);
  static const Color darkNeutral00 = Color(0xff141b20);

  static const Color darkPositive110 = Color(0xff62DE6D);
  static const Color darkPositive90 = Color(0xff26BF40);
  static const Color darkPositive60 = Color(0xff22A82A);

  static const Color darkNegative120 = Color(0xfff79f97);
  static const Color darkNegative100 = Color(0xfff77e74);
  static const Color darkNegative80 = Color(0xfff76359);
}
