import 'package:flutter/material.dart';
import 'package:ui_kit_interface/src/exception/ui_kit.dart';
import 'package:ui_kit_interface/ui_kit_interface.dart';

typedef ButtonBuilder = Widget Function({
  required VoidCallback? onPressed,
  required String label,
  required Widget? icon,
  required bool loading,
  required bool iconBefore,
  required ButtonSize size,
  required Color? color,
  required Color? labelColor,
  required Color? borderColor,
  required bool hapticFeedback,
});

enum _ButtonType {
  primary,
  secondary,
  text,
}

enum ButtonSize {
  large,
  medium,
  small,
}

class Button extends StatelessWidget {
  final VoidCallback? onPressed;
  final String label;
  final Widget? icon;
  final bool loading;
  final bool iconBefore;
  final _ButtonType _buttonType;
  final ButtonSize size;
  final Color? color;
  final Color? labelColor;
  final Color? borderColor;
  final bool hapticFeedback;

  const Button({
    required this.onPressed,
    required this.label,
    this.icon,
    this.labelColor,
    this.loading = false,
    this.iconBefore = false,
    this.size = ButtonSize.medium,
    this.color,
    this.hapticFeedback = true,
  })  : _buttonType = _ButtonType.primary,
        borderColor = null;

  const Button.text({
    required this.onPressed,
    required this.label,
    this.icon,
    this.loading = false,
    this.iconBefore = false,
    this.size = ButtonSize.medium,
    this.labelColor,
    this.hapticFeedback = false,
  })  : color = null,
        borderColor = null,
        _buttonType = _ButtonType.text;

  const Button.secondary({
    required this.onPressed,
    required this.label,
    this.borderColor,
    this.labelColor,
    this.icon,
    this.loading = false,
    this.iconBefore = false,
    this.size = ButtonSize.medium,
    this.hapticFeedback = true,
  })  : color = null,
        _buttonType = _ButtonType.secondary;

  @override
  Widget build(BuildContext context) {
    final uiKit = UIKit.of(context);
    final primaryButtonBuilder = uiKit.primaryButtonBuilder;
    final secondaryButtonBuilder = uiKit.secondaryButtonBuilder;
    final textButtonBuilder = uiKit.textButtonBuilder;

    switch (_buttonType) {
      case _ButtonType.primary:
        if (primaryButtonBuilder != null) {
          return primaryButtonBuilder(
            onPressed: onPressed,
            label: label,
            icon: icon,
            loading: loading,
            iconBefore: iconBefore,
            size: size,
            color: color,
            labelColor: labelColor,
            borderColor: borderColor,
            hapticFeedback: hapticFeedback,
          );
        }
        break;
      case _ButtonType.secondary:
        if (secondaryButtonBuilder != null) {
          return secondaryButtonBuilder(
            onPressed: onPressed,
            label: label,
            icon: icon,
            loading: loading,
            iconBefore: iconBefore,
            size: size,
            color: color,
            labelColor: labelColor,
            borderColor: borderColor,
            hapticFeedback: hapticFeedback,
          );
        }
        break;
      case _ButtonType.text:
        if (textButtonBuilder != null) {
          return textButtonBuilder(
            onPressed: onPressed,
            label: label,
            icon: icon,
            loading: loading,
            iconBefore: iconBefore,
            size: size,
            color: color,
            labelColor: labelColor,
            borderColor: borderColor,
            hapticFeedback: hapticFeedback,
          );
        }
        break;
    }

    throw UnimplementedUIComponent();
  }
}
