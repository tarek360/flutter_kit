import 'package:flutter/widgets.dart';

class ButtonIcon extends StatelessWidget {
  const ButtonIcon({
    super.key,
    this.onPressed,
    required this.icon,
    this.size = 40.0,
  });

  final VoidCallback? onPressed;
  final double size;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      behavior: HitTestBehavior.translucent,
      child: SizedBox(
        width: size,
        height: size,
        child: icon,
      ),
    );
  }
}
