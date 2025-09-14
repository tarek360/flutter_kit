import 'package:flutter/widgets.dart';

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
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(8),
      child: const Text('WEB IS UNSUPPORTED!'),
    );
  }
}
