import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

import 'frog_theme.dart';

class AnimationData {
  const AnimationData(this.value, {this.lightAndDark = false});

  final String value;

  final bool lightAndDark;
}

enum SimpleAnimationViewType {
  asset,
  network,
  file,
}

class SimpleAnimationView extends StatelessWidget {
  final SimpleAnimationViewType type;
  final String path;
  final double? width;
  final double? height;
  final Map<String, int> sequencedAnimations;
  final VoidCallback? onAnimationStarted;
  final BoxFit? fit;
  final bool supportDarkMode;
  final String? animation;
  final String? artboard;

  SimpleAnimationView.asset(
    AnimationData asset, {
    this.width,
    this.height,
    this.onAnimationStarted,
    this.sequencedAnimations = const {},
    this.animation,
    this.artboard,
    this.fit,
  })  : type = SimpleAnimationViewType.asset,
        path = 'assets/animations/${asset.value}.riv',
        supportDarkMode = asset.lightAndDark;

  SimpleAnimationView.network(
    String url, {
    this.width,
    this.height,
    this.onAnimationStarted,
    this.sequencedAnimations = const {},
    this.animation,
    this.artboard,
    this.fit,
  })  : type = SimpleAnimationViewType.network,
        path = url,
        supportDarkMode = _hasDark(url);

  const SimpleAnimationView.file(
    String url, {
    this.width,
    this.height,
    this.onAnimationStarted,
    this.sequencedAnimations = const {},
    this.animation,
    this.fit,
    this.artboard,
    this.supportDarkMode = false,
  })  : type = SimpleAnimationViewType.file,
        path = url;

  static bool _hasDark(String url) {
    return Uri.parse(url).queryParameters['has_dark']?.toLowerCase() == 'true';
  }

  @override
  Widget build(BuildContext context) {
    final artBoardName = supportDarkMode
        ? switch (FrogTheme.of(context).brightness) {
            Brightness.light => artboard == null ? 'light' : '${artboard}_light',
            Brightness.dark => artboard == null ? 'dark' : '${artboard}_dark',
          }
        : artboard;

    final rive = () {
      switch (type) {
        case SimpleAnimationViewType.asset:
          return RiveAnimation.asset(
            path,
            fit: fit,
            placeHolder: const SizedBox.expand(),
            artboard: artBoardName,
            stateMachines: const ['default'],
            animations: [animation ?? 'animation'],
            onInit: _getOnInit(),
            // onInit: (artboard) async {
            //   // TODO: remove
            //   // await Future.delayed(const Duration(seconds: 3));
            //   final animation = SimpleAnimation('animation');
            //   artboard.addController(animation);
            //
            //   // animation.isActive = true;
            //   // await Future.delayed(const Duration(seconds: 12));
            //   //
            //   //
            //   // final idle = SimpleAnimation('idle');
            //   // artboard.addController(idle);
            //   // idle.isActive = true;
            // },
          );
        case SimpleAnimationViewType.network:
          return RiveAnimation.network(
            path,
            fit: fit,
            artboard: artBoardName,
            placeHolder: const SizedBox.expand(),
          );
        case SimpleAnimationViewType.file:
          return RiveAnimation.file(
            path,
            fit: fit,
            artboard: artBoardName,
            placeHolder: const SizedBox.expand(),
          );
      }
    }();
    return SizedBox(
      width: width,
      height: height,
      child: rive,
    );
  }

  OnInitCallback? _getOnInit() {
    if (sequencedAnimations.isEmpty) {
      return null;
    }

    return (artboard) async {
      onAnimationStarted?.call();
      for (final animationName in sequencedAnimations.keys) {
        artboard.addController(SimpleAnimation(animationName));
        final delay = sequencedAnimations[animationName];
        if (delay != null && animationName != sequencedAnimations.keys.last) {
          await Future.delayed(Duration(milliseconds: delay));
        }
      }
    };
  }

  static Future<Size> getArtBoardSize(String filePath) async {
    final file = await RiveFile.file(filePath);
    return Size(file.mainArtboard.width, file.mainArtboard.height);
  }
}
