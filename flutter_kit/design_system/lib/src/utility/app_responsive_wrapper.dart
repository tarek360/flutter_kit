import 'package:flutter/widgets.dart';
import 'package:responsive_framework/responsive_framework.dart';

abstract class AppResponsiveWrapper {
  AppResponsiveWrapper._();

  static Widget builder(BuildContext context, Widget? child) {
    return ResponsiveBreakpoints.builder(
      child: child!,
      breakpoints: const [
        Breakpoint(start: 0, end: 414, name: MOBILE),
        Breakpoint(start: 414, end: 800, name: TABLET),
        Breakpoint(start: 800, end: 1000, name: DESKTOP),
        Breakpoint(start: 1000, end: 2460, name: '4K'),
      ],
    );
  }
}
