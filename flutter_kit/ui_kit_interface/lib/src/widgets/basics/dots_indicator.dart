import 'package:flutter/widgets.dart';
import 'package:ui_kit_interface/src/exception/ui_kit.dart';
import 'package:ui_kit_interface/ui_kit_interface.dart';

typedef DotsIndicatorBuilder = Widget Function({
  required int dotsCount,
  required int position,
});

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({
    super.key,
    required this.dotsCount,
    required this.position,
  });

  final int dotsCount;
  final int position;

  @override
  Widget build(BuildContext context) {
    final builder = UIKit.of(context).dotsIndicatorBuilder;

    if (builder == null) {
      throw UnimplementedUIComponent();
    }

    return builder(dotsCount: dotsCount, position: position);
  }
}
