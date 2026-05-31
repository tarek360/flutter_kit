import 'dart:math' as math;

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class ChatUICircularIndicator extends StatelessWidget {
  const ChatUICircularIndicator({
    super.key,
    this.color,
    this.width = 25.0,
    this.height = 25.0,
    this.strokeWidth = 1.5,
  });

  final Color? color;
  final double width;
  final double height;
  final double strokeWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: CircularProgressIndicator(
        color: color,
        strokeWidth: strokeWidth,
      ),
    );
  }
}

class ChatUIProgressIndicator extends StatelessWidget {
  const ChatUIProgressIndicator({
    super.key,
    required this.progress,
    this.foregroundColor,
    this.backgroundColor,
    this.duration = const Duration(milliseconds: 300),
    this.onEnd,
  });

  final double progress;
  final Color? foregroundColor;
  final Color? backgroundColor;

  final Duration duration;
  final VoidCallback? onEnd;

  @override
  Widget build(BuildContext context) {
    const height = 4.0;
    const halfHeight = height / 2;

    final borderRadius = BorderRadius.circular(halfHeight);
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          height: height,
          decoration: BoxDecoration(
            color: backgroundColor ?? FrogTheme.of(context).colors.neutral130,
            borderRadius: borderRadius,
          ),
          child: Align(
            alignment: Alignment.centerLeft,
            child: AnimatedContainer(
              onEnd: onEnd,
              width: progress * constraints.maxWidth,
              duration: duration,
              curve: Curves.ease,
              decoration: BoxDecoration(
                color: foregroundColor ?? FrogTheme.of(context).colors.brand,
                borderRadius: borderRadius,
              ),
            ),
          ),
        );
      },
    );
  }
}

class ArcIndicator extends StatelessWidget {
  const ArcIndicator({
    super.key,
    required this.progress,
    this.strokeWidth = 2,
    this.size = 28,
    this.color,
  });

  final double progress;
  final double strokeWidth;
  final double size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return progress < 1
        ? CustomPaint(
            size: Size(size, size),
            painter: _ArcIndicatorPainter(
              progress: progress,
              strokeWidth: strokeWidth,
              color: color ?? FrogTheme.of(context).colors.brand,
            ),
          )
        : ChatUICircularIndicator(
            strokeWidth: strokeWidth,
            width: size,
            height: size,
            color: color,
          );
  }
}

class _ArcIndicatorPainter extends CustomPainter {
  final double progress;
  final double strokeWidth;
  final Color color;

  _ArcIndicatorPainter({
    required this.progress,
    required this.strokeWidth,
    required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Offset.zero & size;
    const startAngle = -math.pi / 2;
    final sweepAngle = math.pi * 2 * progress;
    final paint = Paint()
      ..color = color
      ..isAntiAlias = true
      ..style = PaintingStyle.fill;

    canvas.drawArc(rect, startAngle, sweepAngle, true, paint);

    paint
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;

    canvas.drawCircle(rect.center, (rect.height / 2) - strokeWidth / 2, paint);
  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return false;
  }
}
