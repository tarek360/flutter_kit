import 'package:flutter/widgets.dart';

bool isSmallMobile(BuildContext context) => MediaQuery.of(context).size.width < 375;

bool isMobile(BuildContext context) => MediaQuery.of(context).size.width < 850;

bool isTablet(BuildContext context) =>
    MediaQuery.of(context).size.width < 1100 && MediaQuery.of(context).size.width >= 850;

bool isDesktop(BuildContext context) => MediaQuery.of(context).size.width >= 1100;

/// Limit the width of the screen to 600 on tablet and desktop
double maxScreenWidth(BuildContext context) => MediaQuery.of(context).size.width > 700 ? 700 : double.infinity;

class ResponsiveWidget extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  const ResponsiveWidget({
    super.key,
    required this.mobile,
    this.tablet,
    required this.desktop,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    // If our width is more than 1100 then we consider it a desktop
    if (size.width >= 1100) {
      return desktop;
    }
    // If width it less then 1100 and more then 850 we consider it as tablet
    else if (size.width >= 850 && tablet != null) {
      return tablet!;
    }
    // Or less then that we called it mobile
    else {
      return mobile;
    }
  }
}

class ResponsiveValue {
  final BuildContext context;

  const ResponsiveValue(this.context);

  T when<T>({
    required T mobile,
    required T tablet,
    required T desktop,
  }) {
    if (isDesktop(context)) {
      return desktop;
    }
    if (isTablet(context)) {
      return tablet;
    }
    return mobile;
  }

  T maybeWhen<T>({
    T? mobile,
    T? tablet,
    T? desktop,
    required T other,
  }) {
    if (isDesktop(context)) {
      return desktop ?? other;
    }
    if (isTablet(context)) {
      return tablet ?? other;
    }
    return mobile ?? other;
  }
}
