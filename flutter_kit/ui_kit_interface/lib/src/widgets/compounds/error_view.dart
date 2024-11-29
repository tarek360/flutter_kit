import 'package:flutter/widgets.dart';
import 'package:ui_kit_interface/src/exception/ui_kit.dart';
import 'package:ui_kit_interface/ui_kit_interface.dart';

typedef ErrorViewBuilder = Widget Function({
  required String error,
  required ErrorViewType errorType,
  String? media,
  required VoidCallback onTryAgainButtonPressed,
});

enum ErrorViewType {
  noInternet,
  other,
}

class ErrorView extends StatelessWidget {
  const ErrorView({
    required this.error,
    required this.errorType,
    this.media,
    required this.onTryAgainButtonPressed,
  });

  final String error;
  final ErrorViewType errorType;
  final String? media;
  final VoidCallback onTryAgainButtonPressed;

  @override
  Widget build(BuildContext context) {
    final builder = UIKit.of(context).errorViewBuilder;

    if (builder == null) {
      throw UnimplementedUIComponent();
    }

    return builder(
      error: error,
      errorType: errorType,
      media: media,
      onTryAgainButtonPressed: onTryAgainButtonPressed,
    );
  }
}
