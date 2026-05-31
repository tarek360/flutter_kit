import 'dart:io';

import 'package:design_system/design_system.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'svg_image_file/_svg_Image_file_io.dart' if (dart.library.html) 'svg_image_file/_svg_image_file_none.dart';

class SvgImageData {
  final String name;

  final bool lightAndDark;

  const SvgImageData(this.name, {this.lightAndDark = false});
}

enum _SvgImageType {
  asset,
  file,
  network,
}

class SvgImage extends StatelessWidget {
  final SvgImageData? image;
  final String? filePath;
  final double? width;
  final double? height;
  final String? semanticsLabel;
  final _SvgImageType _type;
  final Map<String, String>? headers;
  final WidgetBuilder? placeholderBuilder;
  final BoxFit fit;

  const SvgImage.asset(
    this.image, {
    super.key,
    this.width,
    this.height,
    this.semanticsLabel,
    this.placeholderBuilder,
    this.fit = BoxFit.contain,
  })  : _type = _SvgImageType.asset,
        filePath = null,
        headers = null;

  const SvgImage.network(
    String url, {
    super.key,
    this.width,
    this.height,
    this.semanticsLabel,
    this.headers,
    this.placeholderBuilder,
    this.fit = BoxFit.contain,
  })  : _type = _SvgImageType.network,
        filePath = url,
        image = null;

  const SvgImage.file(
    String path, {
    super.key,
    this.width,
    this.height,
    this.semanticsLabel,
    this.placeholderBuilder,
    this.fit = BoxFit.contain,
  })  : _type = _SvgImageType.file,
        filePath = path,
        image = null,
        headers = null;

  @override
  Widget build(BuildContext context) {
    switch (_type) {
      case _SvgImageType.asset:
        final String fileName = image!.lightAndDark
            ? switch (FrogTheme.of(context).brightness) {
                Brightness.dark => '${image!.name}_dark',
                Brightness.light => '${image!.name}_light',
              }
            : image!.name;

        return SvgPicture.asset(
          'assets/svg/$fileName.svg',
          package: FrogTheme.of(context).resourcesPackage,
          semanticsLabel: semanticsLabel,
          width: width,
          height: height,
          placeholderBuilder: placeholderBuilder,
          fit: fit,
        );
      case _SvgImageType.file:
        return SvgImageFile(
          filePath!,
          semanticsLabel: semanticsLabel,
          width: width,
          height: height,
          fit: fit,
        );
      case _SvgImageType.network:
        if (kIsWeb) {
          return SvgPicture.network(
            filePath!,
            semanticsLabel: semanticsLabel,
            width: width,
            height: height,
            headers: headers,
            fit: fit,
          );
        } else {
          return _SvgImageNetwork(
            filePath!,
            semanticsLabel: semanticsLabel,
            width: width,
            height: height,
            headers: headers,
            fit: fit,
          );
        }
    }
  }
}

class _SvgImageNetwork extends StatefulWidget {
  const _SvgImageNetwork(
    this.url, {
    this.width,
    this.height,
    this.semanticsLabel,
    this.headers,
    this.fit = BoxFit.contain,
  });

  final String url;
  final double? width;
  final double? height;
  final String? semanticsLabel;
  final Map<String, String>? headers;
  final BoxFit fit;

  @override
  State<_SvgImageNetwork> createState() => _SvgImageNetworkState();
}

class _SvgImageNetworkState extends State<_SvgImageNetwork> {
  late Future<File> _future;

  @override
  void initState() {
    super.initState();
    _future = _getLocalFile(widget.url);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<File>(
      future: _future,
      builder: (context, snapshot) {
        final file = snapshot.data;
        if (file != null) {
          return SvgImageFile(
            file.path,
            semanticsLabel: widget.semanticsLabel,
            width: widget.width,
            height: widget.height,
            fit: widget.fit,
          );
        } else {
          return ImagePlaceholder(
            width: widget.width,
            height: widget.height,
          );
        }
      },
    );
  }

  Future<File> _getLocalFile(String url) async {
    return DefaultCacheManager().getSingleFile(url, headers: widget.headers);
  }
}
