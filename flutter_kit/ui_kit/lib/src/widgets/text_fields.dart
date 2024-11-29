import 'package:ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ChatUITextInput extends StatelessWidget {

  final FocusNode? focusNode;
  final ValueChanged<String>? onFieldSubmitted;
  final TextInputAction? textInputAction;
  final bool autofocus;
  final String? initialValue;
  final String? label;
  final VoidCallback? onInfoIconTapped;
  final VoidCallback? onPrefixIconTapped;
  final bool requiredIcon;
  final String? message;
  final String? error;
  final String? hint;
  final bool obscureText;
  final String? suffixText;
  final VoidCallback? onTap;
  final TextEditingController? controller;
  final bool isReadOnly;
  final bool isEnabled;
  final Widget? suffix;
  final Widget? suffixIcon;
  final Widget? prefixIcon;

  final TextStyle? hintStyle;
  final TextStyle? labelStyle;
  final bool restrictField;
  final int? minLines;
  final int? maxLines;
  final bool expands;
  final InputCounterWidgetBuilder? counterWidgetBuilder;
  final int? maxLength;
  final TextInputType? keyboardType;
  final ValueChanged<String>? onChanged;
  final FormFieldValidator<String>? validator;
  final RegExp? allowedInputRegExp;
  final TextCapitalization textCapitalization;
  final bool showMaxCharacterFooter;

  const ChatUITextInput({
    super.key,
    this.focusNode,
    this.onFieldSubmitted,
    this.textInputAction,
    this.autofocus = false,
    this.initialValue,
    this.label,
    this.maxLines = 1,
    this.minLines,
    this.expands = false,
    this.restrictField = false,
    this.onInfoIconTapped,
    this.requiredIcon = false,
    this.message,
    this.error,
    this.hint,
    this.onPrefixIconTapped,
    this.prefixIcon,
    this.suffixText,
    this.maxLength,
    this.keyboardType,
    this.onChanged,
    this.counterWidgetBuilder,
    this.validator,
    this.onTap,
    this.controller,
    this.isReadOnly = false,
    this.isEnabled = true,
    this.obscureText = false,
    this.suffix,
    this.suffixIcon,
    this.hintStyle,
    this.labelStyle,
    this.allowedInputRegExp,
    this.textCapitalization = TextCapitalization.none,
    this.showMaxCharacterFooter = true,
  });

  @override
  Widget build(BuildContext context) {
    final frogTheme = FrogTheme.of(context);
    final textInputStyle = ChatUIKit.of(context).textInputStyle;

    final textFormField = TextFormField(
      focusNode: focusNode,
      textInputAction: textInputAction,
      onFieldSubmitted: onFieldSubmitted,
      textAlign: TextAlign.start,
      textAlignVertical: TextAlignVertical.center,
      style: frogTheme.textStyles.bodyLarge.copyWith(
        color: frogTheme.colors.neutral130,
        height: keyboardType == TextInputType.multiline ? null : 1.2,
      ),
      autofocus: autofocus,
      initialValue: initialValue,
      maxLength: showMaxCharacterFooter ? maxLength : null,
      keyboardType: keyboardType,
      onChanged: onChanged,
      obscureText: obscureText,
      validator: validator,
      enabled: isEnabled,
      readOnly: isReadOnly,
      inputFormatters: _listOfFilteringTextInputFormatter(),
      controller: controller,
      onTap: onTap,
      minLines: minLines,
      maxLines: maxLines,
      expands: expands,
      buildCounter: counterWidgetBuilder,
      textCapitalization: textCapitalization,
      decoration: InputDecoration(
        prefixIcon: prefixIcon != null
            ? GestureDetector(
                onTap: onPrefixIconTapped,
                child: Padding(padding: const EdgeInsetsDirectional.only(start: 12.0, end: 8), child: prefixIcon),
              )
            : null,
        isDense: true,
        suffixText: suffixText,
        suffixStyle: frogTheme.textStyles.bodyMedium.copyWith(color: frogTheme.colors.neutral70),
        suffix: suffix,
        suffixIcon: suffixIcon != null ? Padding(padding: const EdgeInsets.all(8.0), child: suffixIcon) : null,
        suffixIconConstraints: const BoxConstraints(minHeight: 5, minWidth: 5),
        contentPadding: const EdgeInsetsDirectional.only(start: 12.0, end: 8, top: 14, bottom: 14),
        hintStyle: frogTheme.textStyles.bodyMedium.copyWith(color: frogTheme.colors.neutral50),
        hintText: hint,
        enabledBorder: error != null ? textInputStyle.errorInputBorder : null,
        focusedBorder: error != null ? textInputStyle.focusedErrorInputBorder : null,
      ),
    );

    return Theme(
      data: Theme.of(context).copyWith(inputDecorationTheme: textInputStyle.inputDecorationTheme),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (label != null) ...[
            Row(
              children: [
                Text(
                  label!,
                  style: labelStyle ??
                      frogTheme.textStyles.labelMedium.copyWith(
                        color: frogTheme.colors.neutral100,
                        fontWeight: FontWeight.w700,
                      ),
                ),
                if (onInfoIconTapped != null)
                  GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: onInfoIconTapped,
                    child: Row(
                      children: [const _InfoIcon.information(), if (requiredIcon) const _InfoIcon.required()],
                    ),
                  )
                else if (requiredIcon)
                  const _InfoIcon.required(),
              ],
            ),
            const SizedBox(height: 8),
          ],
          if (expands) Expanded(child: textFormField) else textFormField,
          if (error != null || message != null) const SizedBox(height: 4),
          if (error != null)
            Text(
              error!,
              style: frogTheme.textStyles.labelMedium.copyWith(color: frogTheme.colors.negative100),
            )
          else if (message != null)
            Text(message!, style: frogTheme.textStyles.labelMedium.copyWith(color: frogTheme.colors.neutral70))
        ],
      ),
    );
  }

  List<TextInputFormatter>? _listOfFilteringTextInputFormatter() {
    final list = <TextInputFormatter>[];
    if (allowedInputRegExp != null) {
      list.add(FilteringTextInputFormatter.allow(allowedInputRegExp!));
    }

    if (maxLength != null) {
      list.add(LengthLimitingTextInputFormatter(maxLength));
    }
    return list.isEmpty ? null : list;
  }
}

enum _InfoIconStyle {
  information,
  required,
}

class _InfoIcon extends StatelessWidget {
  const _InfoIcon.information() : style = _InfoIconStyle.information;

  const _InfoIcon.required() : style = _InfoIconStyle.required;

  final _InfoIconStyle style;

  @override
  Widget build(BuildContext context) {
    final frogTheme = FrogTheme.of(context);

    switch (style) {
      case _InfoIconStyle.information:
        return SizedBox(
          width: 24,
          height: 16,
          child: Center(
            child: Icon(
              Icons.star,
              size: 16,
              color: frogTheme.colors.negative100,
            ),
          ),
        );

      case _InfoIconStyle.required:
        return SizedBox(
          width: 16,
          height: 16,
          child: Center(
            child: FrogText.labelLarge(
              '*',
              color: frogTheme.colors.negative100,
            ),
          ),
        );
    }
  }
}

class DropdownInput extends StatelessWidget {
  final String? text;
  final String? label;
  final String? hint;
  final VoidCallback? onInfoIconTapped;
  final VoidCallback? onTap;
  final bool? requiredIcon;

  const DropdownInput({
    this.text,
    this.label,
    this.hint,
    this.onInfoIconTapped,
    this.onTap,
    this.requiredIcon,
  });

  @override
  Widget build(BuildContext context) {
    return ChatUITextInput(
      key: ValueKey(text),
      onTap: onTap,
      initialValue: text,
      label: label,
      hint: hint,
      onInfoIconTapped: onInfoIconTapped,
      isReadOnly: true,
      requiredIcon: requiredIcon ?? false,
      keyboardType: TextInputType.text,
      suffixIcon: Padding(
        padding: const EdgeInsets.only(top: 2.0, right: 4),
        child: Icon(
          Icons.keyboard_arrow_down_outlined,
          size: 16,
          color: FrogTheme.of(context).colors.neutral40,
        ),
      ),
    );
  }
}
