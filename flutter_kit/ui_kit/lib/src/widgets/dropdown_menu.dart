import 'package:flutter/material.dart';
import 'package:ui_kit_interface/ui_kit_interface.dart';

import 'text_fields.dart';

class ChatUIDropdownMenu<T> extends StatelessWidget {
  static const _menuSize = Size(140, 180);

  const ChatUIDropdownMenu({
    super.key,
    this.label,
    this.hint,
    this.onInfoIconTapped,
    this.menuSize = _menuSize,
    this.initialValue,
    required this.onValueChanged,
    required this.values,
    required this.labelBuilder,
    this.requiredIcon,
  });

  final Size menuSize;
  final bool? requiredIcon;
  final String? label;
  final String? hint;
  final VoidCallback? onInfoIconTapped;
  final ValueChanged<T> onValueChanged;
  final T? initialValue;
  final List<T> values;
  final String Function(T) labelBuilder;

  @override
  Widget build(BuildContext context) {
    final contextPopupController = ContextPopupController();
    return ContextPopup(
      controller: contextPopupController,
      popupShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(menuSize.width / 16)),
      popupSize: menuSize,
      popupBuilder: (BuildContext context) => SizedBox(
        width: menuSize.width,
        height: menuSize.height,
        child: SelectableList<T>(
          onValueChanged: (value) {
            Navigator.of(context).pop();
            onValueChanged(value);
          },
          initialValue: initialValue,
          values: values,
          labelBuilder: labelBuilder,
        ),
      ),
      child: DropdownInput(
        onInfoIconTapped: onInfoIconTapped,
        text: initialValue != null ? labelBuilder(initialValue as T) : '',
        label: label,
        hint: hint,
        requiredIcon: requiredIcon,
        onTap: contextPopupController.show,
      ),
    );
  }
}

class SelectableList<T> extends StatelessWidget {
  const SelectableList({
    super.key,
    this.initialValue,
    required this.onValueChanged,
    required this.values,
    required this.labelBuilder,
  });

  final ValueChanged<T> onValueChanged;
  final T? initialValue;
  final List<T> values;
  final String Function(T) labelBuilder;

  @override
  Widget build(BuildContext context) {
    final colors = FrogTheme.of(context).colors;
    final initial = initialValue;
    return SingleChildScrollView(
      controller: ScrollController(initialScrollOffset: initial != null ? (values.indexOf(initial) - 1) * 48 : 0),
      child: Column(
        children: values
            .map(
              (t) => ListTile(
                hoverColor: colors.primary100.withOpacity(0.05),
                selected: initialValue == t,
                selectedTileColor: colors.primary100.withOpacity(0.1),
                onTap: () => onValueChanged(t),
                title: FrogText.labelLarge(labelBuilder(t)),
                selectedColor: colors.primary100,
                trailing: initialValue == t ? const Icon(Icons.check_rounded) : null,
              ),
            )
            .toList(),
      ),
    );
  }
}
