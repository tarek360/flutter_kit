import 'dart:ui';

import 'package:flutter/material.dart';

class FrogColorScheme {
  const FrogColorScheme({
    required this.brand,
    required this.onBrand,
    required this.primary130,
    required this.primary100,
    required this.primary80,
    required this.primary50,
    required this.primary20,
    required this.secondary120,
    required this.secondary100,
    required this.secondary80,
    required this.secondary60,
    required this.tertiary120,
    required this.tertiary100,
    required this.tertiary80,
    required this.tertiary60,
    required this.neutral150,
    required this.neutral140,
    required this.neutral130,
    required this.neutral120,
    required this.neutral110,
    required this.neutral100,
    required this.neutral90,
    required this.neutral80,
    required this.neutral70,
    required this.neutral60,
    required this.neutral50,
    required this.neutral40,
    required this.neutral30,
    required this.neutral20,
    required this.neutral10,
    required this.neutral00,
    required this.positive140,
    required this.positive120,
    required this.positive100,
    required this.positive110,
    required this.positive90,
    required this.positive80,
    required this.positive70,
    required this.positive60,
    required this.positive50,
    required this.positive40,
    required this.positive30,
    required this.positive20,
    required this.positive10,
    required this.negative120,
    required this.negative100,
    required this.negative80,
    required this.negative70,
    required this.negative60,
    required this.negative50,
    required this.negative40,
    required this.negative30,
    required this.negative20,
    required this.negative10,
  });

  /// ************ common colors

  Color get white => const Color(0xffffffff);

  Color get black => const Color(0xff000000);

  Color get black50a => const Color(0x80000000);

  Color get transparent => const Color(0x00000000);

  /// ************ flexible colors

  final Color brand;
  final Color onBrand;

  final Color primary130;
  final Color primary100;
  final Color primary80;
  final Color primary50;
  final Color primary20;

  final Color secondary120;
  final Color secondary100;
  final Color secondary80;
  final Color secondary60;

  final Color tertiary120;
  final Color tertiary100;
  final Color tertiary80;
  final Color tertiary60;

  final Color neutral150;
  final Color neutral140;
  final Color neutral130;
  final Color neutral120;
  final Color neutral110;
  final Color neutral100;
  final Color neutral90;
  final Color neutral80;
  final Color neutral70;
  final Color neutral60;
  final Color neutral50;
  final Color neutral40;
  final Color neutral30;
  final Color neutral20;
  final Color neutral10;
  final Color neutral00;

  final Color positive140;
  final Color positive120;
  final Color positive110;
  final Color positive100;
  final Color positive90;
  final Color positive80;
  final Color positive70;
  final Color positive60;
  final Color positive50;
  final Color positive40;
  final Color positive30;
  final Color positive20;
  final Color positive10;

  final Color negative120;
  final Color negative100;
  final Color negative80;
  final Color negative70;
  final Color negative60;
  final Color negative50;
  final Color negative40;
  final Color negative30;
  final Color negative20;
  final Color negative10;
}
