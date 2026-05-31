import 'package:flutter/material.dart';

/// It fades in and slide from bottom to top when appear
/// and it fades out only when disappear.
class AnimatedAppearance extends StatelessWidget {
  final bool appear;
  final Widget child;
  final Offset? offset;
  final Duration? duration;

  const AnimatedAppearance({
    required this.appear,
    required this.child,
    this.duration,
    this.offset,
  });

  static const _duration = Duration(milliseconds: 200);

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: duration ?? _duration,
      opacity: appear ? 1 : 0,
      child: AnimatedSlide(
        offset: appear ? Offset.zero : offset ?? const Offset(0, 0.5),
        curve: appear ? Curves.ease : _NoAnimation(),
        duration: duration ?? _duration,
        child: IgnorePointer(
          ignoring: !appear,
          child: child,
        ),
      ),
    );
  }
}

class _NoAnimation extends Curve {
  @override
  double transformInternal(double t) => 0;
}
