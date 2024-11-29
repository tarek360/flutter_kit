import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class ChatUIErrorView extends StatelessWidget {
  const ChatUIErrorView({
    super.key,
    required this.error,
    required this.errorType,
    this.media,
    required this.onTryAgainButtonPressed,
    required this.tryAgainButtonLabel,
    this.illustrationSize,
  });

  final String error;
  final ErrorViewType errorType;
  final String? media;
  final VoidCallback onTryAgainButtonPressed;
  final String tryAgainButtonLabel;
  final double? illustrationSize;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final imageSize = illustrationSize ?? min(size.width, size.height) * (isMobile(context) ? 0.5 : 0.3);

    final colors = FrogTheme.of(context).colors;
    return Align(
      alignment: const Alignment(0.0, -0.2),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: imageSize,
            height: imageSize,
            child: UIKit.of(context).errorImageBuilder?.call() ?? Icon(Icons.error, size: imageSize),
          ),
          const SizedBox(height: 56),
          FrogText.bodyMedium(
            error,
            textAlign: TextAlign.center,
            color: colors.neutral100,
          ),
          const SizedBox(height: 16),
          Button(
            onPressed: onTryAgainButtonPressed,
            label: tryAgainButtonLabel,
            size: ButtonSize.small,
            // color: colors.neutral80,
            // labelColor: colors.neutral00,
          ),
        ],
      ),
    );
  }
}
