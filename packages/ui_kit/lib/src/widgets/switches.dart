import 'package:design_system/design_system.dart';
import 'package:flutter/cupertino.dart';

class ChatUISwitch extends StatelessWidget {
  const ChatUISwitch({
    required this.onChanged,
    required this.value,
  });

  final ValueChanged<bool>? onChanged;
  final bool value;

  @override
  Widget build(BuildContext context) {
    final colors = FrogTheme.of(context).colors;
    return SizedBox(
      height: 24,
      width: 40,
      child: Transform.scale(
        scale: 0.8,
        child: CupertinoSwitch(
          activeColor: colors.brand,
          trackColor: colors.neutral20,
          thumbColor: colors.neutral00,
          value: value,
          onChanged: onChanged,
        ),
      ),
    );
  }
}
