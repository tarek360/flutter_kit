import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class BottomBar extends StatelessWidget {
  final List<BottomBarItem> items;

  const BottomBar({
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    final colors = FrogTheme.of(context).colors;
    return DecoratedBox(
      decoration: ShapeDecoration(
        color: colors.neutral00,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12)),
        ),
        shadows: [
          BoxShadow(
            color: colors.neutral10,
            blurRadius: 0,
            offset: const Offset(0, -4),
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0.18),
        child: Row(
          mainAxisAlignment: isMobile(context) ? MainAxisAlignment.spaceAround : MainAxisAlignment.start,
          children: items,
        ),
      ),
    );
  }
}

class BottomBarItem extends StatelessWidget {
  final Widget? icon;
  final Widget? label;
  final int badgeCount;
  final VoidCallback onTap;
  final bool isSelected;
  final bool dense;

  const BottomBarItem({
    this.icon,
    this.label,
    this.badgeCount = 0,
    required this.onTap,
    required this.isSelected,
    this.dense = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final label = this.label;
    final icon = this.icon;
    final colors = FrogTheme.of(context).colors;
    final tab = GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null)
            SizedBox(
              width: dense ? 32 : 48,
              height: dense ? 32 : 48,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  icon,
                  Align(
                    alignment: const Alignment(0.0, -2),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: _NotificationBadge(number: badgeCount),
                    ),
                  ),
                ],
              ),
            ),
          if (label != null) ...[
            label
          ],
          if (isSelected)
            Container(
              width: 32,
              height: 3,
              decoration: BoxDecoration(
                color: colors.neutral50,
                borderRadius: BorderRadius.circular(16),
              ),
            ),
        ],
      ),
    );

    return isMobile(context)
        ? Expanded(child: tab)
        : SizedBox(
            width: 200,
            child: tab,
          );
  }
}

class _NotificationBadge extends StatelessWidget {
  final int number;
  static const int _maxNumber = 99;

  const _NotificationBadge({
    this.number = 0,
  });

  @override
  Widget build(BuildContext context) {
    final frogTheme = FrogTheme.of(context);
    return number == 0
        ? const SizedBox.shrink()
        : Container(
            padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 6),
            decoration: BoxDecoration(
              color: FrogTheme.of(context).colors.brand,
              borderRadius: BorderRadius.circular(40),
            ),
            constraints: const BoxConstraints(minWidth: 12, minHeight: 12),
            child: Text(
              '${number > _maxNumber ? '+$_maxNumber' : number}',
              style: frogTheme.textStyles.bodySmall.copyWith(
                color: FrogTheme.of(context).colors.neutral100,
              ),
              textAlign: TextAlign.center,
            ),
          );
  }
}
