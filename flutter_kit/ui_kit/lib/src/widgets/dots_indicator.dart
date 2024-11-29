import 'package:design_system/design_system.dart';
import 'package:dots_indicator/dots_indicator.dart' as dots_indicator;
import 'package:flutter/cupertino.dart';

class ChatUIDotsIndicator extends StatelessWidget {
  const ChatUIDotsIndicator({
    super.key,
    required this.dotsCount,
    required this.position,
  });

  final int dotsCount;
  final int position;

  @override
  Widget build(BuildContext context) => dotsCount > 0
      ? dots_indicator.DotsIndicator(
          dotsCount: dotsCount,
          position: position,
          decorator: dots_indicator.DotsDecorator(
            size: const Size.square(6),
            activeSize: const Size.square(6),
            color: FrogTheme.of(context).colors.neutral20,
            activeColor: FrogTheme.of(context).colors.brand,
          ),
        )
      : const SizedBox.shrink();
}
