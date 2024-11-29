import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgIcon extends StatelessWidget {
  final SvgIconData icon;
  final Color? color;
  final double size;
  final String? semanticsLabel;

  const SvgIcon(
    this.icon, {
    super.key,
    this.color,
    this.size = 24,
    this.semanticsLabel,
  });

  @override
  Widget build(BuildContext context) {
    final String fileName;

    if (icon.lightAndDark) {
      switch (FrogTheme.of(context).brightness) {
        case Brightness.dark:
          fileName = '${icon.name}_dark';
          break;
        case Brightness.light:
          fileName = '${icon.name}_light';
          break;
      }
    } else {
      fileName = icon.name;
    }

    return SvgPicture.asset(
      'assets/svg/$fileName.svg',
      package: FrogTheme.of(context).resourcesPackage,
      semanticsLabel: semanticsLabel,
      color: color,
      width: size,
      height: size,
    );
  }
}

class SvgIconData {
  final String name;
  final bool lightAndDark;

  const SvgIconData(this.name, {this.lightAndDark = false});
}
