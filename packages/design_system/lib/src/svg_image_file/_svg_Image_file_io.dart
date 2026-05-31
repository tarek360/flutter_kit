import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgImageFile extends StatelessWidget {
  const SvgImageFile(
    this.filePath, {
    super.key,
    this.width,
    this.height,
    this.semanticsLabel,
    this.fit = BoxFit.contain,
  });

  final String filePath;
  final double? width;
  final double? height;
  final String? semanticsLabel;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.file(
      File(filePath),
      width: width,
      height: height,
      semanticsLabel: semanticsLabel,
      fit: fit,
    );
  }
}
