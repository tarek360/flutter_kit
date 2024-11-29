import 'package:ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit_interface/ui_kit_interface.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  const TopBar({
    this.title,
    this.leading,
    this.trailing,
    this.exitButton = false,
    this.onExitButtonPressed,
  });

  final String? title;
  final Widget? leading;
  final Widget? trailing;
  final bool exitButton;
  final VoidCallback? onExitButtonPressed;

  @override
  Size get preferredSize => const Size.fromHeight(56.0);

  @override
  Widget build(BuildContext context) {
    final ModalRoute<dynamic>? parentRoute = ModalRoute.of(context);
    final colors = FrogTheme.of(context).colors;

    return AppBar(
      automaticallyImplyLeading: !exitButton,
      backgroundColor: colors.neutral00,
      centerTitle: true,
      leading: parentRoute?.canPop == true
          ? exitButton
              ? ExitButton(onPressed: onExitButtonPressed)
              : GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: Navigator.of(context).maybePop,
                  child: SizedBox(
                    width: 40,
                    child: Icon(
                      switch (Directionality.of(context)) {
                        TextDirection.ltr => ChatUIIcons.arrow_line_left,
                        TextDirection.rtl => ChatUIIcons.arrow_line_right,
                      },
                      size: 24,
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                )
          : leading,
      title: title != null ? FrogText.headlineSmall(title!, color: colors.neutral80) : null,
      actions: [
        if (trailing != null) trailing!,
      ],
    );
  }
}

class ExitButton extends StatelessWidget {
  const ExitButton({super.key, this.onPressed});

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final colors = FrogTheme.of(context).colors;
    return ButtonIcon(
      size: 40,
      onPressed: onPressed ?? Navigator.of(context).maybePop,
      icon: Icon(
        ChatUIIcons.close_default,
        color: colors.neutral100,
        size: 24,
      ),
    );
  }
}
