import 'package:ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

void showErrorSnackBar(
  BuildContext context, {
  required String message,
}) {
  final colors = FrogTheme.of(context).colors;
  showTopSnackBar(
    Overlay.of(context),
    _CustomSnackBar(
      message: message,
      color: colors.negative100,
    ),
  );
}

void showSuccessSnackBar(
  BuildContext context, {
  required String message,
  Duration? displayDuration,
}) {
  final colors = FrogTheme.of(context).colors;
  showTopSnackBar(
    Overlay.of(context),
    _CustomSnackBar(
      message: message,
      color: colors.positive60,
    ),
    displayDuration: displayDuration ?? const Duration(milliseconds: 3000),
  );
}

class _CustomSnackBar extends StatelessWidget {
  const _CustomSnackBar({
    required this.message,
    required this.color,
  });

  final String message;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final colors = FrogTheme.of(context).colors;
    return Card(
      margin: EdgeInsets.zero,
      color: color,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: FrogText.titleSmall(
                message,
                color: colors.neutral00,
              ),
            ),
            const SizedBox(width: 8),
            const Icon(
              Icons.error_rounded,
              color: Color(0x15000000),
              size: 40,
            )
          ],
        ),
      ),
    );
  }
}
