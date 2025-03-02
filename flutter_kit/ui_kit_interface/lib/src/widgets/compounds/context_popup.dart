import 'package:flutter/material.dart';

class ContextPopup<T> extends StatelessWidget {
  const ContextPopup({
    super.key,
    this.controller,
    required this.child,
    required this.popupBuilder,
    required this.popupSize,
    this.popupShape,
    this.onPop,
  });

  final ValueChanged<T?>? onPop;
  final ContextPopupController? controller;
  final Widget child;
  final WidgetBuilder popupBuilder;
  final Size popupSize;
  final ShapeBorder? popupShape;

  @override
  Widget build(BuildContext context) {
    controller?._onShow = () => _show(context);
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () => _show(context),
      child: child,
    );
  }

  void _show(BuildContext context) {
    _showContextWidget(context: context, builder: popupBuilder);
  }

  Future<void> _showContextWidget({
    required BuildContext context,
    required WidgetBuilder builder,
    bool barrierDismissible = true,
    String? barrierLabel,
    bool useRootNavigator = true,
  }) async {
    final result = await Navigator.of(context, rootNavigator: useRootNavigator).push<T>(
      _ContextPopupRoute<T>(
        popupSize: popupSize,
        popupShape: popupShape,
        childContext: context,
        builder: builder,
        dismissible: barrierDismissible,
        barrierLabel: barrierLabel ?? MaterialLocalizations.of(context).modalBarrierDismissLabel,
      ),
    );

    onPop?.call(result);
  }
}

class _ContextPopupRoute<T> extends PopupRoute<T> {
  _ContextPopupRoute({
    required this.builder,
    required this.popupSize,
    this.popupShape,
    required this.childContext,
    this.elevation = 4.0,
    required this.barrierLabel,
    this.dismissible = true,
    this.color,
  });

  final WidgetBuilder builder;
  final double elevation;
  final Color? color;
  final bool dismissible;
  final Size popupSize;
  final BuildContext childContext;
  final ShapeBorder? popupShape;

  @override
  Animation<double> createAnimation() {
    return CurvedAnimation(
      parent: super.createAnimation(),
      curve: Curves.ease,
      reverseCurve: Curves.ease,
    );
  }

  @override
  Duration get transitionDuration => Duration.zero;

  @override
  bool get barrierDismissible => dismissible;

  @override
  Color? get barrierColor => null;

  @override
  final String barrierLabel;

  @override
  Widget buildPage(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
    final position = _getOffset(childContext);
    return Stack(
      children: [
        Positioned(
          left: position.dx,
          top: position.dy,
          child: Card(
            clipBehavior: Clip.hardEdge,
            elevation: elevation,
            shape: popupShape,
            child: builder(context),
          ),
        ),
      ],
    );
  }

  Offset _getOffset(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    // ignore: cast_nullable_to_non_nullable
    final renderBox = context.findRenderObject() as RenderBox;
    final size = renderBox.size;
    final Offset offset = renderBox.localToGlobal(Offset.zero);

    if (offset.dy + size.height + popupSize.height <= screen.height) {
      return Offset(offset.dx, offset.dy + size.height);
    } else if (offset.dy - popupSize.height >= 0) {
      return Offset(offset.dx, offset.dy + -popupSize.height);
    } else if (popupSize.height < screen.height) {
      return Offset(offset.dx, (screen.height - popupSize.height) / 2);
    } else {
      return Offset(offset.dx, 0);
    }
  }
}

class ContextPopupController {
  VoidCallback? _onShow;

  void show() => _onShow?.call();
}
