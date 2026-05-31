import 'dart:io';
import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImageFromVersions extends StatelessWidget {
  const ImageFromVersions(
    this.path, {
    super.key,
    this.width,
    this.height,
    this.fit,
    this.border,
    this.borderRadius,
    this.placeHolder,
    this.cacheKey,
    this.color,
  });

  final String path;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final BoxBorder? border;
  final BorderRadius? borderRadius;
  final Widget? placeHolder;
  final String? cacheKey;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, boxConstraints) {
        final double imageWidth = width ?? boxConstraints.maxWidth;
        if (path.contains('http')) {
          return ImageNetwork(
            path,
            width: imageWidth,
            height: height,
            fit: fit,
            border: border,
            borderRadius: borderRadius,
            placeHolder: placeHolder,
            cacheKey: cacheKey,
            color: color,
          );
        } else {
          return ImageFromFile(
            path,
            width: imageWidth,
            height: height,
            fit: fit,
            borderRadius: borderRadius,
          );
        }
      },
    );
  }
}

class ImageNetwork extends StatelessWidget {
  const ImageNetwork(
    this.imageUrl, {
    super.key,
    this.width,
    this.height,
    this.fit,
    this.border,
    this.borderRadius,
    this.placeHolder,
    this.cacheKey,
    this.color,
  });

  final String? imageUrl;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final BoxBorder? border;
  final BorderRadius? borderRadius;
  final Widget? placeHolder;
  final String? cacheKey;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final placeholder = placeHolder ?? ImagePlaceholder(width: width, height: height);

    final imageUrl = this.imageUrl;
    Widget image;

    if (imageUrl != null) {
      image = _isSvg(imageUrl)
          ? SvgPicture.network(
              imageUrl,
              width: width,
              height: height,
            )
          : CachedNetworkImage(
              imageUrl: imageUrl,
              width: width,
              height: height,
              fit: fit,
              cacheKey: cacheKey,
              fadeOutDuration: const Duration(milliseconds: 400),
              fadeInDuration: const Duration(milliseconds: 300),
              placeholder: (context, url) => placeholder,
              errorWidget: (context, url, error) => placeholder,
            );
    } else {
      image = placeholder;
    }

    final borderRadius = this.borderRadius;

    if (borderRadius == null && border == null) {
      return image;
    } else if (border == null) {
      return ClipRRect(
        borderRadius: borderRadius ?? BorderRadius.zero,
        child: image,
      );
    } else {
      return SizedBox(
        width: width,
        height: height,
        child: Stack(
          children: [
            Positioned.fill(
              child: ClipRRect(
                borderRadius: borderRadius ?? BorderRadius.zero,
                child: image,
              ),
            ),
            Positioned.fill(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  border: border,
                  borderRadius: borderRadius,
                ),
              ),
            ),
          ],
        ),
      );
    }
  }

  bool _isSvg(String imageUrl) => imageUrl.endsWith('.svg');
}

class ImageFromFile extends StatelessWidget {
  const ImageFromFile(
    this.path, {
    super.key,
    this.width,
    this.height,
    this.fit,
    this.borderRadius,
  });

  final String path;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    final image = Image.file(
      File(path),
      width: width,
      height: height,
      fit: fit,
    );

    final borderRadius = this.borderRadius;
    if (borderRadius == null) {
      return image;
    } else {
      return ClipRRect(
        borderRadius: borderRadius,
        child: image,
      );
    }
  }
}

class ImageNetworkBlur extends StatelessWidget {
  const ImageNetworkBlur(
    this.imageUrl, {
    super.key,
    this.fit,
    this.width,
    this.height,
  });

  final String? imageUrl;
  final double? width;
  final double? height;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    final imageUrl = this.imageUrl;
    if (imageUrl == null) {
      return Container(
        color: FrogTheme.of(context).colors.black,
        width: width,
        height: height,
      );
    }
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: CachedNetworkImageProvider(imageUrl),
          fit: fit,
        ),
      ),
      child: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            alignment: Alignment.center,
            color: Colors.white.withOpacity(0.0),
          ),
        ),
      ),
    );
  }
}

class ImagePlaceholder extends StatelessWidget {
  const ImagePlaceholder({
    super.key,
    this.width,
    this.height,
    this.color,
  });

  final double? width;
  final double? height;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color ?? FrogTheme.of(context).colors.transparent,
      width: width,
      height: height,
    );
  }
}
