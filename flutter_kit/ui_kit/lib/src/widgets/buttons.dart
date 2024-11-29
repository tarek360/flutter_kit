import 'package:ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

enum ButtonType {
  primary,
  outline,
  text,
}

class ChatUIButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String label;
  final Widget? icon;
  final Widget? child;
  final bool loading;
  final bool iconBefore;
  final ButtonType _buttonType;
  final ButtonSize size;
  final Color? color;
  final Color? labelColor;
  final Color? borderColor;
  final bool hapticFeedback;

  const ChatUIButton({
    required this.onPressed,
    required this.label,
    this.icon,
    this.child,
    this.loading = false,
    this.iconBefore = false,
    this.size = ButtonSize.medium,
    this.color,
    this.labelColor,
    this.borderColor,
    this.hapticFeedback = true,
  }) : _buttonType = ButtonType.primary;

  const ChatUIButton.text({
    required this.onPressed,
    required this.label,
    this.icon,
    this.child,
    this.loading = false,
    this.iconBefore = false,
    this.size = ButtonSize.medium,
    this.color,
    this.labelColor,
    this.borderColor,
    this.hapticFeedback = false,
  }) : _buttonType = ButtonType.text;

  const ChatUIButton.secondary({
    required this.onPressed,
    required this.label,
    this.borderColor,
    this.icon,
    this.child,
    this.loading = false,
    this.iconBefore = false,
    this.size = ButtonSize.medium,
    this.color,
    this.labelColor,
    this.hapticFeedback = true,
  }) : _buttonType = ButtonType.outline;

  @override
  Widget build(BuildContext context) {
    final icon = this.icon;

    final frogTheme = FrogTheme.of(context);
    final colors = frogTheme.colors;

    final double iconSize;

    final Color foregroundColor;
    final FrogTextStyle textStyle;
    final FontWeight fontWeight;

    final double height;
    final double cornerRadius;
    switch (size) {
      case ButtonSize.large:
        height = 56;
        cornerRadius = 16;
        iconSize = 24;
        textStyle = FrogTextStyle.titleMedium;
        fontWeight = FontWeight.w600;
        break;
      case ButtonSize.medium:
        height = 40;
        cornerRadius = 12;
        iconSize = 20;
        textStyle = FrogTextStyle.bodyLarge;
        fontWeight = FontWeight.w600;
        break;
      case ButtonSize.small:
        height = 28;
        cornerRadius = 8;
        iconSize = 16;
        textStyle = FrogTextStyle.bodySmall;
        fontWeight = FontWeight.w600;
        break;
    }

    switch (_buttonType) {
      case ButtonType.primary:
        foregroundColor = labelColor ?? (onPressed != null ? colors.neutral00 : colors.neutral50);
        break;
      case ButtonType.outline:
        foregroundColor = labelColor ?? (onPressed != null ? colors.neutral100 : colors.neutral60);
        break;
      case ButtonType.text:
        foregroundColor = labelColor ?? (onPressed != null ? colors.brand : colors.neutral30);
        break;
    }

    final text = FrogText(
      label,
      textStyle: textStyle,
      color: foregroundColor,
      weight: fontWeight,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      lineHeight: 1,
    );

    final customChild = this.child;

    Widget child;

    if (customChild == null) {
      if (icon != null) {
        child = _LabelWithIconChild(
          label: text,
          icon: icon,
          iconColor: foregroundColor,
          iconSize: iconSize,
          iconBefore: iconBefore,
          buttonSize: size,
        );
      } else {
        child = text;
      }
    } else {
      child = customChild;
    }

    Widget content;

    if (loading) {
      content = Stack(
        alignment: Alignment.center,
        children: [
          Opacity(opacity: 0, child: child),
          SizedBox(
            width: iconSize,
            height: iconSize,
            child: ChatUICircularIndicator(
              strokeWidth: size == ButtonSize.medium ? 2 : 1.5,
              color: foregroundColor,
            ),
          ),
        ],
      );
    } else {
      content = Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(child: child),
        ],
      );
    }

    switch (_buttonType) {
      case ButtonType.primary:
        return PressingBuilder(
          onPressed: loading ? () {} : onPressed,
          hapticFeedback: hapticFeedback,
          builder: (pressingState) {
            switch (pressingState) {
              case PressingState.idle:
                return _PressableBackground.normal(
                  height: height,
                  cornerRadius: cornerRadius,
                  isOutline: false,
                  color: color ?? colors.brand,
                  child: content,
                );
              case PressingState.pressed:
                return _PressableBackground.pressed(
                  height: height,
                  cornerRadius: cornerRadius,
                  isOutline: false,
                  color: color ?? colors.brand,
                  child: content,
                );
              case PressingState.disabled:
                return _PressableBackground.normal(
                  height: height,
                  cornerRadius: cornerRadius,
                  isOutline: false,
                  color: color ?? colors.neutral20,
                  child: content,
                );
            }
          },
        );

      case ButtonType.outline:
        return PressingBuilder(
          onPressed: loading ? () {} : onPressed,
          hapticFeedback: hapticFeedback,
          builder: (pressingState) {
            switch (pressingState) {
              case PressingState.idle:
                return _PressableBackground.normal(
                  height: height,
                  cornerRadius: cornerRadius,
                  isOutline: true,
                  color: borderColor ?? colors.neutral30,
                  child: content,
                );
              case PressingState.pressed:
                return _PressableBackground.pressed(
                  height: height,
                  cornerRadius: cornerRadius,
                  isOutline: true,
                  color: borderColor ?? colors.neutral30,
                  child: content,
                );
              case PressingState.disabled:
                return _PressableBackground.normal(
                  height: height,
                  cornerRadius: cornerRadius,
                  isOutline: true,
                  color: borderColor ?? colors.neutral20,
                  child: content,
                );
            }
          },
        );
      case ButtonType.text:
        return PressingBuilder(
          hapticFeedback: hapticFeedback,
          onPressed: loading ? () {} : onPressed,
          builder: (pressingState) {
            switch (pressingState) {
              case PressingState.idle:
                return _PressableBackground.pressed(
                  height: height,
                  cornerRadius: cornerRadius,
                  isOutline: false,
                  color: colors.transparent,
                  child: content,
                );
              case PressingState.pressed:
                return _PressableBackground.pressed(
                  height: height,
                  cornerRadius: cornerRadius,
                  isOutline: false,
                  color: labelColor?.withOpacity(0.05) ?? colors.brand.withOpacity(0.05),
                  child: content,
                );
              case PressingState.disabled:
                return _PressableBackground.normal(
                  height: height,
                  cornerRadius: cornerRadius,
                  isOutline: false,
                  color: colors.transparent,
                  child: content,
                );
            }
          },
        );
    }
  }
}

class _LabelWithIconChild extends StatelessWidget {
  const _LabelWithIconChild({
    required this.label,
    required this.icon,
    required this.iconColor,
    required this.iconSize,
    required this.buttonSize,
    this.iconBefore = false,
  });

  final Widget label;
  final Widget icon;
  final Color iconColor;
  final double iconSize;
  final bool iconBefore;
  final ButtonSize buttonSize;

  @override
  Widget build(BuildContext context) {
    const gap = 8.0;

    final iconWidget = IconTheme(
      data: Theme.of(context).iconTheme.copyWith(
            size: iconSize,
            color: iconColor,
          ),
      child: icon,
    );

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        iconBefore ? iconWidget : Flexible(child: label),
        const SizedBox(width: gap),
        iconBefore ? Flexible(child: label) : iconWidget,
      ],
    );
  }
}

class AppCircularButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget icon;
  final String? title;
  final Color? backgroundColor;
  final double elevation;
  final double padding;
  final double radius;

  const AppCircularButton({
    super.key,
    required this.icon,
    this.onPressed,
    required this.title,
    this.backgroundColor,
    this.elevation = 0,
    this.radius = 56,
    this.padding = 16,
  });

  @override
  Widget build(BuildContext context) {
    final frogTheme = FrogTheme.of(context);
    final circularButton = SizedBox(
      width: radius,
      height: radius,
      child: RawMaterialButton(
        hoverElevation: elevation,
        focusElevation: elevation,
        disabledElevation: elevation,
        highlightElevation: elevation,
        padding: EdgeInsets.all(padding),
        onPressed: onPressed,
        elevation: elevation,
        shape: const CircleBorder(),
        fillColor: backgroundColor ?? frogTheme.colors.neutral130,
        child: icon,
      ),
    );

    if (title == null) {
      return circularButton;
    } else {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          circularButton,
          const SizedBox(
            height: 8,
          ),
          Text(title!, style: frogTheme.textStyles.labelSmall),
        ],
      );
    }
  }
}

enum PressingState {
  idle,
  pressed,
  disabled,
}

typedef PressingWidgetBuilder = Widget Function(PressingState);

class PressingBuilder extends StatefulWidget {
  const PressingBuilder({
    super.key,
    required this.onPressed,
    required this.builder,
    this.selectionMode = false,
    required this.hapticFeedback,
  });

  final PressingWidgetBuilder builder;
  final VoidCallback? onPressed;
  final bool selectionMode;
  final bool hapticFeedback;

  @override
  State<PressingBuilder> createState() => _PressingBuilderState();
}

class _PressingBuilderState extends State<PressingBuilder> {
  PressingState _pressingState = PressingState.idle;

  @override
  Widget build(BuildContext context) {
    final onPressed = widget.onPressed;
    if (onPressed == null) {
      return widget.builder(PressingState.disabled);
    }

    return GestureDetector(
      onTap: () {
        if (widget.hapticFeedback) {
          HapticFeedback.lightImpact();
        }
        onPressed();
      },
      onTapDown: (_) => _setPressingState(PressingState.pressed),
      onTapUp: (_) => _setPressingState(PressingState.idle),
      onTapCancel: () => _setPressingState(PressingState.idle),
      child: widget.builder(_pressingState),
    );
  }

  @override
  void didUpdateWidget(covariant PressingBuilder oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (_pressingState != PressingState.disabled) {
      if (widget.selectionMode) {
        _pressingState = PressingState.pressed;
      } else {
        _pressingState = PressingState.idle;
      }
    }
  }

  Future<void> _setPressingState(PressingState pressingState) async {
    if (_pressingState == pressingState) {
      return;
    }

    if (pressingState == PressingState.idle) {
      await Future.delayed(const Duration(milliseconds: 50));
    }

    if (mounted) {
      setState(() {
        _pressingState = pressingState;
      });
    }
  }
}

class FakeButton extends StatelessWidget {
  const FakeButton({
    this.height = 40,
    this.cornerRadius = 24,
    this.color,
    required this.child,
    this.isOutline = false,
  });

  final double height;
  final double cornerRadius;
  final Color? color;
  final Widget child;
  final bool isOutline;

  @override
  Widget build(BuildContext context) {
    final colors = FrogTheme.of(context).colors;
    return _PressableBackground.normal(
      height: height,
      cornerRadius: cornerRadius,
      isOutline: isOutline,
      color: color ?? (isOutline ? colors.neutral30 : colors.brand),
      child: child,
    );
  }
}

class _PressableBackground extends StatelessWidget {
  const _PressableBackground.normal({
    required this.child,
    required this.color,
    required this.isOutline,
    required this.height,
    required this.cornerRadius,
    this.padding,
  }) : isPressed = false;

  const _PressableBackground.pressed({
    required this.child,
    required this.color,
    required this.isOutline,
    required this.height,
    required this.cornerRadius,
    this.padding,
  }) : isPressed = true;

  final bool isOutline;
  final bool isPressed;
  final Color color;
  final Widget child;
  final double height;
  final double cornerRadius;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: isPressed ? 0.95 : 1.0,
      child: ConstrainedBox(
        constraints: BoxConstraints(minHeight: height),
        child: Container(
          padding: padding ?? const EdgeInsets.symmetric(horizontal: 16),
          decoration: ShapeDecoration(
            color: color,
            shape: SmoothRectangleBorder(
              side: isOutline == true ? BorderSide(color: color, width: 2.0) : BorderSide.none,
              borderRadius: SmoothBorderRadius(
                cornerRadius: cornerRadius,
                cornerSmoothing: 0.6,
              ),
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}

class ActionButtonArea extends StatelessWidget {
  const ActionButtonArea({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0x00ffffff),
            Color(0xffffffff),
          ],
          stops: [0, 1],
        ),
      ),
      child: SafeArea(
        top: false,
        minimum: const EdgeInsets.all(16),
        child: child, //SizedBox(width: double.infinity, child: child),
      ),
    );
  }
}

class RawButton extends StatelessWidget {
  const RawButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.height = 40,
    this.cornerRadius = 16,
    this.borderColor,
    this.elevation,
    this.selectionMode = false,
    this.padding,
    this.hapticFeedback = true,
  });

  final VoidCallback? onPressed;
  final double height;
  final Widget child;
  final double cornerRadius;
  final double? elevation;
  final Color? borderColor;
  final bool selectionMode;
  final EdgeInsets? padding;
  final bool hapticFeedback;

  @override
  Widget build(BuildContext context) {
    final colors = FrogTheme.of(context).colors;

    return PressingBuilder(
      onPressed: onPressed,
      hapticFeedback: hapticFeedback,
      selectionMode: selectionMode,
      builder: (pressingState) {
        switch (pressingState) {
          case PressingState.idle:
            return _PressableBackground.normal(
              padding: padding,
              height: height,
              cornerRadius: cornerRadius,
              isOutline: true,
              color: borderColor ?? colors.neutral30,
              child: child,
            );
          case PressingState.pressed:
            return _PressableBackground.pressed(
              padding: padding,
              height: height,
              cornerRadius: cornerRadius,
              isOutline: true,
              color: borderColor ?? colors.neutral30,
              child: child,
            );
          case PressingState.disabled:
            return _PressableBackground.pressed(
              height: height,
              cornerRadius: cornerRadius,
              isOutline: true,
              color: borderColor ?? colors.neutral20,
              child: child,
            );
        }
      },
    );
  }
}

class SquareButton extends StatelessWidget {
  const SquareButton({
    super.key,
    required this.child,
    required this.onPressed,
    this.color,
    this.cornerRadius,
    this.padding,
    this.size,
    this.hapticFeedback = true,
  })  : _buttonType = ButtonType.primary,
        borderColor = null;

  const SquareButton.secondary({
    super.key,
    required this.child,
    required this.onPressed,
    this.borderColor,
    this.cornerRadius,
    this.padding,
    this.size,
    this.hapticFeedback = true,
  })  : _buttonType = ButtonType.outline,
        color = null;

  final Widget child;
  final VoidCallback onPressed;
  final Color? color;
  final Color? borderColor;
  final double? cornerRadius;
  final EdgeInsets? padding;
  final double? size;
  final ButtonType _buttonType;
  final bool hapticFeedback;

  @override
  Widget build(BuildContext context) {
    final colors = FrogTheme.of(context).colors;

    final cornerRadius = this.cornerRadius ?? 16.0;
    final size = this.size ?? 48.0;

    final Widget button;

    if (_buttonType == ButtonType.primary) {
      button = PressingBuilder(
        hapticFeedback: hapticFeedback,
        onPressed: onPressed,
        builder: (pressingState) {
          switch (pressingState) {
            case PressingState.idle:
              return _PressableBackground.normal(
                height: size,
                cornerRadius: cornerRadius,
                isOutline: false,
                color: color ?? colors.brand,
                padding: padding ?? EdgeInsets.zero,
                child: child,
              );
            case PressingState.pressed:
              return _PressableBackground.pressed(
                height: size,
                cornerRadius: cornerRadius,
                isOutline: false,
                color: color ?? colors.brand,
                padding: padding ?? EdgeInsets.zero,
                child: child,
              );
            case PressingState.disabled:
              return _PressableBackground.pressed(
                height: size,
                cornerRadius: cornerRadius,
                isOutline: false,
                color: color ?? colors.neutral20,
                padding: padding ?? EdgeInsets.zero,
                child: child,
              );
          }
        },
      );
    } else {
      button = RawButton(
        padding: padding ?? EdgeInsets.zero,
        cornerRadius: cornerRadius,
        borderColor: borderColor ?? colors.neutral30,
        onPressed: onPressed,
        hapticFeedback: hapticFeedback,
        child: child,
      );
    }

    return SizedBox(
      width: size,
      height: size,
      child: button,
    );
  }
}
