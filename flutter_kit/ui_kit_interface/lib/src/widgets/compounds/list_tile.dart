import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class FrogListTile extends StatelessWidget {
  const FrogListTile({
    super.key,
    required this.title,
    this.subtitle,
    this.trailing,
    this.onTap,
    this.dense = false,
    this.contentPadding,
  });

  final String title;
  final String? subtitle;
  final Widget? trailing;
  final VoidCallback? onTap;
  final bool dense;
  final EdgeInsetsGeometry? contentPadding;

  @override
  Widget build(BuildContext context) {
    final frogTheme = FrogTheme.of(context);
    final colors = FrogTheme.of(context).colors;
    return ListTile(
      contentPadding: contentPadding?? const EdgeInsets.symmetric(horizontal: 16),
      splashColor: colors.transparent,
      dense: dense,
      onTap: onTap,
      title: FrogText.bodyLarge(
        title,
        color: onTap != null ? frogTheme.colors.neutral120 : frogTheme.colors.neutral50,
      ),
      subtitle: subtitle != null
          ? FrogText.labelLarge(
              subtitle!,
              color: onTap != null ? frogTheme.colors.neutral70 : frogTheme.colors.neutral50,
            )
          : null,
      trailing: trailing,
    );
  }
}

class ListOption extends StatelessWidget {
  const ListOption({
    super.key,
    required this.title,
    this.onTap,
    this.isSelected = false,
  });

  final String title;
  final VoidCallback? onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return FrogListTile(
      dense: true,
      onTap: onTap,
      title: title,
      trailing: isSelected
          ? Icon(
              Icons.check_rounded,
              color: FrogTheme.of(context).colors.brand,
            )
          : null,
    );
  }
}
