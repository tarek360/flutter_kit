import 'dart:math';

import 'package:ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:resources/resources.dart';

class ChatUIErrorView extends StatelessWidget {
  const ChatUIErrorView({
    super.key,
    required this.error,
    required this.errorType,
    this.media,
    required this.onTryAgainButtonPressed,
    this.illustrationSize,
  });

  final String error;
  final ErrorViewType errorType;
  final String? media;
  final VoidCallback onTryAgainButtonPressed;
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
            child: const SvgImage.asset(SVGs.error),
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
            label: Strings.of(context).tryAgainButtonLabel,
            size: ButtonSize.small,
            // color: colors.neutral80,
            // labelColor: colors.neutral00,
          ),
        ],
      ),
    );
  }

  AnimationData _getAnimationData() {
    if (media != null) {
      return AnimationData(media!);
    }
    switch (errorType) {
      case ErrorViewType.noInternet:
        return AppAnimations.noInternetConnection;
      case ErrorViewType.other:
        return AppAnimations.genericError;
    }
  }
}
