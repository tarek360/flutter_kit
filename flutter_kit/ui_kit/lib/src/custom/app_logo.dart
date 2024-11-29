import 'package:design_system/design_system.dart';
import 'package:flutter/widgets.dart';
import 'package:resources/resources.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SvgImage.asset(
      SVGs.logoLight,
      width: width,
      height: height,
    );
  }
}
