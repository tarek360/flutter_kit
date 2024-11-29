import 'package:flutter/widgets.dart';
import 'package:ui_kit_interface/src/exception/ui_kit.dart';
import 'package:ui_kit_interface/ui_kit_interface.dart';

typedef ToggleBuilder = Widget Function({
  required ValueChanged<bool>? onChanged,
  required bool value,
});

class Toggle extends StatelessWidget {
  const Toggle({
    required this.onChanged,
    required this.value,
  });

  final ValueChanged<bool>? onChanged;
  final bool value;

  @override
  Widget build(BuildContext context) {
    final builder = UIKit.of(context).toggleBuilder;

    if (builder == null) {
      throw UnimplementedUIComponent();
    }

    return builder(onChanged: onChanged, value: value);
  }
}
