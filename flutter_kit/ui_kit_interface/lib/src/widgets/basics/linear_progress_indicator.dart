import 'package:flutter/widgets.dart';
import 'package:ui_kit_interface/src/exception/ui_kit.dart';
import 'package:ui_kit_interface/ui_kit_interface.dart';

typedef LinearIndicatorBuilder = Widget Function({
  required double progress,
  required Color? foregroundColor,
  required Color? backgroundColor,
});

class LinearIndicator extends StatelessWidget {
  const LinearIndicator({
    super.key,
    required this.progress,
    this.foregroundColor,
    this.backgroundColor,
  });

  final double progress;
  final Color? foregroundColor;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final builder = UIKit.of(context).linearIndicatorBuilder;

    if (builder == null) {
      throw UnimplementedUIComponent();
    }

    return builder(
      progress: progress,
      foregroundColor: foregroundColor,
      backgroundColor: backgroundColor,
    );
  }
}
