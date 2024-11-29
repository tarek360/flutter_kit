import 'package:flutter/widgets.dart';
import 'package:ui_kit_interface/src/exception/ui_kit.dart';
import 'package:ui_kit_interface/ui_kit_interface.dart';

class IndeterminateLoader extends StatelessWidget {
  const IndeterminateLoader({super.key});

  @override
  Widget build(BuildContext context) {
    final builder = UIKit.of(context).indeterminateLoaderBuilder;

    if (builder == null) {
      throw UnimplementedUIComponent();
    }

    return builder();
  }
}
