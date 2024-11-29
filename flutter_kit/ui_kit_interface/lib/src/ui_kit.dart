import 'package:flutter/widgets.dart';
import 'package:ui_kit_interface/ui_kit_interface.dart';

typedef UIComponentBuilder = Widget Function();

@immutable
class UIKitComponents {
  final ButtonBuilder? primaryButtonBuilder;
  final ButtonBuilder? secondaryButtonBuilder;
  final ButtonBuilder? textButtonBuilder;
  final TextInputBuilder? textInputBuilder;
  final UIComponentBuilder? indeterminateLoaderBuilder;
  final LinearIndicatorBuilder? linearIndicatorBuilder;
  final DotsIndicatorBuilder? dotsIndicatorBuilder;
  final ToggleBuilder? toggleBuilder;
  final ErrorViewBuilder? errorViewBuilder;

  const UIKitComponents({
    this.primaryButtonBuilder,
    this.secondaryButtonBuilder,
    this.textButtonBuilder,
    this.textInputBuilder,
    this.indeterminateLoaderBuilder,
    this.linearIndicatorBuilder,
    this.dotsIndicatorBuilder,
    this.toggleBuilder,
    this.errorViewBuilder,
  });
}

class UIKit extends StatelessWidget {
  const UIKit({
    super.key,
    required this.frogThemeData,
    required this.kitBuilder,
    required this.child,
  });

  final Widget child;
  final FrogThemeData frogThemeData;
  final UIKitComponents Function(FrogThemeData frogTheme) kitBuilder;

  static UIKitComponents of(BuildContext context) {
    final _InheritedUIKit? result = context.dependOnInheritedWidgetOfExactType<_InheritedUIKit>();
    assert(result != null, 'No UIKit found in context');
    return result!.uiKit;
  }

  @override
  Widget build(BuildContext context) {
    return FrogTheme(
      data: frogThemeData,
      child: _InheritedUIKit(
        uiKit: kitBuilder(frogThemeData),
        child: child,
      ),
    );
  }
}

class _InheritedUIKit extends InheritedWidget {
  const _InheritedUIKit({
    required this.uiKit,
    required super.child,
  });

  final UIKitComponents uiKit;

  @override
  bool updateShouldNotify(_InheritedUIKit old) => uiKit != old.uiKit;
}
