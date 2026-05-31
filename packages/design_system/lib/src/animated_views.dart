import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

import '../design_system.dart';

class AnimationData {
  const AnimationData(this.value, {this.lightAndDark = false});

  final String value;
  final bool lightAndDark;
}

enum SimpleAnimationViewType { asset, network, file }

class SimpleAnimationView extends StatefulWidget {
  final SimpleAnimationViewType type;
  final String path;
  final double? width;
  final double? height;
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
    this.animation,
    this.artboard,
    this.fit,
  }) : type = SimpleAnimationViewType.asset,
       path = 'assets/animations/${asset.value}.riv',
       supportDarkMode = asset.lightAndDark;

  SimpleAnimationView.network(
    String url, {
    this.width,
    this.height,
    this.onAnimationStarted,
    this.animation,
    this.artboard,
    this.fit,
  }) : type = SimpleAnimationViewType.network,
       path = url,
       supportDarkMode = _hasDark(url);

  const SimpleAnimationView.file(
    String filePath, {
    this.width,
    this.height,
    this.onAnimationStarted,
    this.animation,
    this.fit,
    this.artboard,
    this.supportDarkMode = false,
  }) : type = SimpleAnimationViewType.file,
       path = filePath;

  static bool _hasDark(String url) {
    return Uri.parse(url).queryParameters['has_dark']?.toLowerCase() == 'true';
  }

  @override
  State<SimpleAnimationView> createState() => _SimpleAnimationViewState();

  static Future<Size> getArtBoardSize(String filePath) async {
    final file = await File.path(filePath, riveFactory: Factory.rive);
    final artboard = file!.defaultArtboard()!;
    return Size(artboard.width, artboard.height);
  }
}

class _SimpleAnimationViewState extends State<SimpleAnimationView> {
  File? riveFile;

  @override
  void initState() {
    super.initState();
    //post frame callback to ensure context is available
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        _initRive(FrogTheme.of(context).brightness);
      }
    });
  }

  Future<void> _initRive(Brightness brightness) async {
    // Load Rive file based on source type
    switch (widget.type) {
      case SimpleAnimationViewType.asset:
        riveFile = await File.asset(widget.path, riveFactory: Factory.rive);
        break;
      case SimpleAnimationViewType.network:
        riveFile = await File.url(widget.path, riveFactory: Factory.rive);
        break;
      case SimpleAnimationViewType.file:
        riveFile = await File.path(widget.path, riveFactory: Factory.rive);
        break;
    }

    if (riveFile == null) return;

    setState(() {});
  }

  @override
  void dispose() {
    riveFile?.dispose();
    super.dispose();
  }

  String? getArtboardName(Brightness brightness) {
    if (widget.supportDarkMode) {
      return brightness == Brightness.light
          ? (widget.artboard == null ? 'light' : '${widget.artboard}_light')
          : (widget.artboard == null ? 'dark' : '${widget.artboard}_dark');
    } else {
      return widget.artboard;
    }
  }

  @override
  Widget build(BuildContext context) {
    final riveFile = this.riveFile;

    final artboardName = getArtboardName(FrogTheme.of(context).brightness);
    final artboard =
        riveFile?.defaultArtboard() ??
        (artboardName != null ? riveFile?.artboard(artboardName) : null);

    return SizedBox(
      width: widget.width,
      height: widget.height,
      child:
          riveFile != null
              ? RiveFileWidget(
                file: riveFile,
                painter:
                    artboard?.stateMachineCount() == 1
                        ? StateMachinePainter()
                        : SingleAnimationPainter(
                          widget.animation ?? 'animation',
                        ),
                artboardName: artboardName,
              )
              : const SizedBox.shrink(),
    );
  }
}

Fit mapBoxFitToFit(BoxFit? boxFit) {
  switch (boxFit) {
    case BoxFit.fill:
      return Fit.fill;
    case BoxFit.contain:
      return Fit.contain;
    case BoxFit.cover:
      return Fit.cover;
    case BoxFit.fitWidth:
      return Fit.fitWidth;
    case BoxFit.fitHeight:
      return Fit.fitHeight;
    case BoxFit.none:
      return Fit.none;
    case BoxFit.scaleDown:
      return Fit.scaleDown;
    case null:
      return Fit.contain;
  }
}
