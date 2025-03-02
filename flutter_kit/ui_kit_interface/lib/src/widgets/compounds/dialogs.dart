import 'package:flutter/material.dart';
import 'package:ui_kit_interface/ui_kit_interface.dart';

const _defaultDialogWidth = 320.0;

void showFrogLoadingDialog(BuildContext context) {
  showFrogDialog(
    context,
    padding: const EdgeInsets.only(top: 24),
    body: const Center(child: IndeterminateLoader()),
    isDismissible: false,
  );
}

Future<T?> showFrogDialog<T>(
  BuildContext context, {
  required Widget body,
  String? primaryButtonLabel,
  String? secondaryButtonLabel,
  VoidCallback? onSecondaryButtonPressed,
  VoidCallback? onPrimaryButtonPressed,
  bool buttonsVerticalAlign = true,
  bool isDismissible = true,
  double width = _defaultDialogWidth,
  EdgeInsets? padding,
}) {
  return showDialog<T>(
    context: context,
    barrierDismissible: isDismissible,
    builder: (context) => FrogDialog(
      body: body,
      primaryButtonLabel: primaryButtonLabel,
      onPrimaryButtonPressed: onPrimaryButtonPressed,
      secondaryButtonLabel: secondaryButtonLabel,
      onSecondaryButtonPressed: onSecondaryButtonPressed,
      buttonsVerticalAlign: buttonsVerticalAlign,
      width: width,
      padding: padding,
    ),
  );
}

Future<bool?> showFrogConfirmationPopup(
  BuildContext context, {
  required String title,
  String? message,
  Widget? body,
  required String positiveButtonLabel,
  required String negativeButtonLabel,
  required VoidCallback onPositiveButtonPressed,
  required VoidCallback onNegativeButtonPressed,
  bool isDismissible = true,
  bool? buttonsVerticalAlign,
  Color? positiveButtonColor,
  Color? negativeButtonColor,
}) =>
    _showDialog<bool>(
      context: context,
      isDismissible: isDismissible,
      builder: (context) => FrogConfirmationDialog(
        title: title,
        message: message,
        body: body,
        positiveButtonLabel: positiveButtonLabel,
        negativeButtonLabel: negativeButtonLabel,
        onPositiveButtonPressed: onPositiveButtonPressed,
        onNegativeButtonPressed: onNegativeButtonPressed,
        buttonsVerticalAlign: buttonsVerticalAlign ?? true,
        positiveButtonColor: positiveButtonColor,
        negativeButtonColor: negativeButtonColor,
      ),
    );

Future<bool?> showFrogInputPopup(
  BuildContext context, {
  required String title,
  String? message,
  String? initialValue,
  String? hint,
  required String positiveButtonLabel,
  required String negativeButtonLabel,
  required ValueChanged<String> onPositiveButtonPressed,
  required VoidCallback onNegativeButtonPressed,
  bool isDismissible = true,
  bool? buttonsVerticalAlign,
}) {
  final textEditingController = TextEditingController(text: initialValue);
  return _showDialog<bool>(
    context: context,
    isDismissible: isDismissible,
    builder: (context) => FrogInputDialog(
      textEditingController: textEditingController,
      title: title,
      message: message,
      positiveButtonLabel: positiveButtonLabel,
      negativeButtonLabel: negativeButtonLabel,
      onPositiveButtonPressed: onPositiveButtonPressed,
      onNegativeButtonPressed: onNegativeButtonPressed,
      buttonsVerticalAlign: buttonsVerticalAlign ?? true,
    ),
  );
}

void showFrogInfoPopup(
  BuildContext context, {
  required String title,
  String? message,
  Widget? body,
  required String positiveButtonLabel,
  required VoidCallback onPositiveButtonPressed,
  bool barrierDismissible = true,
  Color? backgroundColor,
}) =>
    _showDialog(
      context: context,
      isDismissible: barrierDismissible,
      builder: (context) => FrogInfoDialog(
        title: title,
        message: message,
        body: body,
        positiveButtonLabel: positiveButtonLabel,
        onPositiveButtonPressed: onPositiveButtonPressed,
        backgroundColor: backgroundColor,
      ),
    );

Future<T?> _showDialog<T>({
  required BuildContext context,
  required WidgetBuilder builder,
  bool isDismissible = true,
  Color? backgroundColor,
}) {
  return showDialog<T>(
    context: context,
    barrierDismissible: isDismissible,
    builder: (context) => WillPopScope(
      onWillPop: () => Future.value(isDismissible),
      child: builder(context),
    ),
  );
}

class FrogConfirmationDialog extends StatelessWidget {
  const FrogConfirmationDialog({
    required this.title,
    this.message,
    this.body,
    required this.positiveButtonLabel,
    required this.negativeButtonLabel,
    required this.onPositiveButtonPressed,
    required this.onNegativeButtonPressed,
    required this.buttonsVerticalAlign,
    this.positiveButtonColor,
    this.negativeButtonColor,
  });

  final String title;
  final String? message;
  final Widget? body;
  final String positiveButtonLabel;
  final String negativeButtonLabel;
  final VoidCallback onNegativeButtonPressed;
  final VoidCallback onPositiveButtonPressed;
  final bool buttonsVerticalAlign;
  final Color? positiveButtonColor;
  final Color? negativeButtonColor;

  @override
  Widget build(BuildContext context) {
    final frogTheme = FrogTheme.of(context);
    final textScaler = MediaQuery.textScalerOf(context);

    return FrogDialog(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: frogTheme.textStyles.titleLarge.copyWith(
              color: frogTheme.colors.neutral130,
            ),
            textScaler:
                textScaler.clamp(minScaleFactor: 1.0, maxScaleFactor: 1.4),
          ),
          if (message != null || body != null) ...[
            const SizedBox(height: 16),
            if (message != null)
              Text(
                message!,
                textAlign: TextAlign.center,
                style: frogTheme.textStyles.bodyLarge
                    .copyWith(color: frogTheme.colors.neutral70),
                textScaler:
                    textScaler.clamp(minScaleFactor: 1.0, maxScaleFactor: 1.6),
              ),
            if (body != null) body!,
          ],
        ],
      ),
      primaryButtonLabel: positiveButtonLabel,
      onPrimaryButtonPressed: onPositiveButtonPressed,
      secondaryButtonLabel: negativeButtonLabel,
      onSecondaryButtonPressed: onNegativeButtonPressed,
      buttonsVerticalAlign: buttonsVerticalAlign,
      primaryButtonColor: positiveButtonColor,
      secondaryButtonColor: negativeButtonColor,
    );
  }
}

class FrogInputDialog extends StatelessWidget {
  const FrogInputDialog({
    required this.title,
    this.message,
    this.hint,
    required this.positiveButtonLabel,
    required this.negativeButtonLabel,
    required this.onPositiveButtonPressed,
    required this.onNegativeButtonPressed,
    this.buttonsVerticalAlign = false,
    required this.textEditingController,
  });

  final String title;
  final String? message;
  final String? hint;
  final String positiveButtonLabel;
  final String negativeButtonLabel;
  final VoidCallback onNegativeButtonPressed;
  final ValueChanged<String> onPositiveButtonPressed;
  final bool buttonsVerticalAlign;
  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return FrogConfirmationDialog(
      title: title,
      message: message,
      body: Padding(
        padding: const EdgeInsets.only(top: 12.0),
        child: TextInput(
          autofocus: true,
          controller: textEditingController,
          hint: hint,
        ),
      ),
      positiveButtonLabel: positiveButtonLabel,
      negativeButtonLabel: negativeButtonLabel,
      onPositiveButtonPressed: () =>
          onPositiveButtonPressed(textEditingController.text),
      onNegativeButtonPressed: onNegativeButtonPressed,
      buttonsVerticalAlign: buttonsVerticalAlign,
    );
  }
}

class FrogInfoDialog extends StatelessWidget {
  const FrogInfoDialog({
    required this.title,
    this.message,
    this.body,
    required this.positiveButtonLabel,
    required this.onPositiveButtonPressed,
    this.backgroundColor,
  });

  final String title;
  final String? message;
  final Widget? body;
  final String positiveButtonLabel;
  final VoidCallback onPositiveButtonPressed;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final frogTheme = FrogTheme.of(context);

    return FrogDialog(
      backgroundColor: backgroundColor,
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: frogTheme.textStyles.titleLarge
                .copyWith(color: frogTheme.colors.neutral130),
          ),
          if (message != null || body != null) ...[
            const SizedBox(height: 16),
            if (message != null)
              Text(
                message!,
                textAlign: TextAlign.center,
                style: frogTheme.textStyles.bodyLarge
                    .copyWith(color: frogTheme.colors.neutral70),
              ),
            if (body != null) body!,
          ],
        ],
      ),
      secondaryButtonLabel: positiveButtonLabel,
      onSecondaryButtonPressed: onPositiveButtonPressed,
    );
  }
}

class FrogDialog extends StatelessWidget {
  const FrogDialog({
    required this.body,
    this.primaryButtonLabel,
    this.secondaryButtonLabel,
    this.onPrimaryButtonPressed,
    this.onSecondaryButtonPressed,
    this.buttonsVerticalAlign = true,
    this.width = _defaultDialogWidth,
    this.primaryButtonColor,
    this.secondaryButtonColor,
    this.padding,
    this.backgroundColor,
  });

  final Widget body;
  final String? primaryButtonLabel;
  final String? secondaryButtonLabel;
  final VoidCallback? onSecondaryButtonPressed;
  final VoidCallback? onPrimaryButtonPressed;
  final bool buttonsVerticalAlign;
  final double width;
  final Color? primaryButtonColor;
  final Color? secondaryButtonColor;
  final EdgeInsets? padding;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return FrogDialogScaffold(
      backgroundColor: backgroundColor,
      padding: padding,
      width: width,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          body,
          const SizedBox(height: 24),
          if (buttonsVerticalAlign) ...[
            if (primaryButtonLabel != null)
              SizedBox(
                width: double.infinity,
                child: Button(
                  label: primaryButtonLabel!,
                  onPressed: onPrimaryButtonPressed,
                  color: primaryButtonColor,
                ),
              ),
            if (primaryButtonLabel != null && secondaryButtonLabel != null)
              const SizedBox(height: 8),
            if (secondaryButtonLabel != null)
              SizedBox(
                width: double.infinity,
                child: Button.secondary(
                  label: secondaryButtonLabel!,
                  onPressed: onSecondaryButtonPressed,
                  labelColor: secondaryButtonColor,
                  borderColor: secondaryButtonColor,
                ),
              ),
          ] else
            Row(
              children: [
                if (primaryButtonLabel != null)
                  Expanded(
                    child: Button.secondary(
                      label: secondaryButtonLabel!,
                      onPressed: onSecondaryButtonPressed,
                      labelColor: secondaryButtonColor,
                      borderColor: secondaryButtonColor,
                    ),
                  ),
                if (primaryButtonLabel != null && secondaryButtonLabel != null)
                  const SizedBox(width: 8),
                if (primaryButtonLabel != null)
                  Expanded(
                    child: Button(
                      label: primaryButtonLabel!,
                      onPressed: onPrimaryButtonPressed,
                      color: primaryButtonColor,
                    ),
                  ),
              ],
            ),
        ],
      ),
    );
  }
}

class FrogDialogScaffold extends StatelessWidget {
  const FrogDialogScaffold({
    super.key,
    required this.child,
    this.padding,
    this.backgroundColor,
    this.width = _defaultDialogWidth,
  });

  final Widget child;
  final EdgeInsetsGeometry? padding;
  final Color? backgroundColor;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: backgroundColor,
      child: Padding(
        padding: padding ??
            const EdgeInsets.only(right: 16.0, left: 16.0, top: 24, bottom: 16),
        child: SizedBox(
          width: width,
          child: child,
        ),
      ),
    );
  }
}

const _sheetBorderRadius = BorderRadius.vertical(top: Radius.circular(16));

Future<T?> showFrogBottomSheetOverlay<T>({
  required BuildContext context,
  required WidgetBuilder builder,
  bool enableDrag = true,
  bool isDismissible = true,
  bool dragBar = true,
}) {
  return showModalBottomSheet<T>(
    context: context,
    enableDrag: enableDrag,
    isDismissible: isDismissible,
    isScrollControlled: true,
    backgroundColor: FrogTheme.of(context).colors.neutral00,
    builder: (context) => SafeArea(
      child: FractionallySizedBox(
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: FrogTheme.of(context).colors.neutral00,
            borderRadius: _sheetBorderRadius,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (dragBar)
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 8, 0, 4),
                  width: 28,
                  height: 3,
                  decoration: BoxDecoration(
                    color: FrogTheme.of(context).colors.neutral30,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              builder(context),
            ],
          ),
        ),
      ),
    ),
  );
}

Future<T?> showFrogFullSlidingBottomSheet<T>({
  required BuildContext context,
  required ScrollableWidgetBuilder builder,
  bool dragBar = true,
  AppBar? appBar,
  double initialChildSize = 0.95,
}) {
  return showFrogSlidingBottomSheet<T>(
    context: context,
    builder: builder,
    dragBar: dragBar,
    initialChildSize: initialChildSize,
  );
}

Future<T?> showFrogSlidingBottomSheet<T>({
  required BuildContext context,
  required ScrollableWidgetBuilder builder,
  bool isDismissible = true,
  double initialChildSize = 0.5,
  double minChildSize = 0.5,
  double maxChildSize = 0.95,
  bool dragBar = true,
  AppBar? appBar,
  Widget? footer,
}) {
  final theme = Theme.of(context);
  return showModalBottomSheet<T>(
    context: context,
    isDismissible: isDismissible,
    enableDrag: false,
    shape: const RoundedRectangleBorder(
      borderRadius: _sheetBorderRadius,
    ),
    isScrollControlled: true,
    backgroundColor: FrogTheme.of(context).colors.neutral00,
    builder: (context) => DraggableScrollableSheet(
      expand: false,
      initialChildSize: initialChildSize,
      minChildSize: minChildSize,
      maxChildSize: maxChildSize,
      builder: (context, scrollController) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (dragBar)
            Container(
              margin: const EdgeInsets.fromLTRB(0, 8, 0, 4),
              width: 28,
              height: 3,
              decoration: BoxDecoration(
                color: FrogTheme.of(context).colors.neutral30,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          if (appBar != null)
            Theme(
              data: theme.copyWith(
                appBarTheme: theme.appBarTheme.copyWith(
                  centerTitle: true,
                  toolbarHeight: 48,
                ),
              ),
              child: appBar,
            ),
          Expanded(
            child: ClipRRect(
              borderRadius: _sheetBorderRadius,
              child: builder(
                context,
                scrollController,
              ),
            ),
          ),
          if (footer != null) footer,
        ],
      ),
    ),
  );
}

typedef WidgetListBuilder = List<Widget> Function(BuildContext context);

Future<T?> showFrogBottomSheetListOptions<T>({
  required BuildContext context,
  required WidgetListBuilder builder,
  bool clipTop = false,
  double? childSize,
  double? initialScrollOffset,
  bool dragBar = true,
}) {
  final divideColor = FrogTheme.of(context).colors.neutral20;
  if (childSize == null) {
    return showFrogBottomSheetOverlay<T>(
      context: context,
      dragBar: dragBar,
      builder: (context) => SafeArea(
        minimum: const EdgeInsets.only(bottom: 16),
        child: Column(
          children: ListTile.divideTiles(
            context: context,
            color: divideColor,
            tiles: builder(context),
          ).toList(),
        ),
      ),
    );
  }

  return showFrogBottomSheetOverlay<T>(
    context: context,
    dragBar: dragBar,
    builder: (context) {
      final child = SafeArea(
        child: SizedBox(
          height: childSize,
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(top: 8, bottom: 16),
            controller:
                ScrollController(initialScrollOffset: initialScrollOffset ?? 0),
            child: Column(
              children: ListTile.divideTiles(
                context: context,
                color: divideColor,
                tiles: builder(context),
              ).toList(),
            ),
          ),
        ),
      );

      if (!clipTop) {
        return child;
      }

      return ClipRRect(
        borderRadius: _sheetBorderRadius,
        child: child,
      );
    },
  );
}
