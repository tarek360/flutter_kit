import 'package:flutter/material.dart';

/// Example on how to use:
///
/// decoration: BoxDecoration(
///   color: Colors.white,
///   borderRadius: const BorderRadius.all(Radius.circular(8)),
///   boxShadow: [
///     boxShadowLarge,
///   ],
/// ),
///
///
///

abstract class AppShadows {
  AppShadows._();

  static const boxShadowLarge = BoxShadow(
    color: Color(0x2D000000),
    blurRadius: 48,
    offset: Offset(0, 16),
  );

  static const boxShadowRegular = BoxShadow(
    color: Color(0x26000000),
    blurRadius: 3,
    offset: Offset(0, 1),
  );

  static const boxShadowSmall = BoxShadow(
    color: Color(0x13000000),
    blurRadius: 4,
    offset: Offset(0, 2),
  );
}
