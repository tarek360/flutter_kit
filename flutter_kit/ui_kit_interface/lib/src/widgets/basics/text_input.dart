import 'package:flutter/material.dart';
import 'package:ui_kit_interface/src/exception/ui_kit.dart';
import 'package:ui_kit_interface/ui_kit_interface.dart';

typedef TextInputBuilder = Widget Function({
  required FocusNode? focusNode,
  required ValueChanged<String>? onFieldSubmitted,
  required TextInputAction? textInputAction,
  required bool autofocus,
  required String? initialValue,
  required String? label,
  required VoidCallback? onInfoIconTapped,
  required VoidCallback? onPrefixIconTapped,
  required bool requiredIcon,
  required String? message,
  required String? error,
  required String? hint,
  required bool obscureText,
  required String? suffixText,
  required VoidCallback? onTap,
  required TextEditingController? controller,
  required bool isReadOnly,
  required bool isEnabled,
  required Widget? suffix,
  required Widget? suffixIcon,
  required Widget? prefixIcon,
  required TextStyle? hintStyle,
  required TextStyle? labelStyle,
  required int? minLines,
  required int? maxLines,
  required bool expands,
  required InputCounterWidgetBuilder? counterWidgetBuilder,
  required int? maxLength,
  required TextInputType? keyboardType,
  required ValueChanged<String>? onChanged,
  required FormFieldValidator<String>? validator,
  required RegExp? allowedInputRegExp,
  required TextCapitalization textCapitalization,
  required bool showMaxCharacterFooter,
});

class TextInput extends StatelessWidget {
  const TextInput({
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

  @override
  Widget build(BuildContext context) {
    final textInputBuilder = UIKit.of(context).textInputBuilder;

    if (textInputBuilder == null) {
      throw UnimplementedUIComponent();
    }

    return textInputBuilder(
      focusNode: focusNode,
      onFieldSubmitted: onFieldSubmitted,
      textInputAction: textInputAction,
      autofocus: autofocus,
      initialValue: initialValue,
      label: label,
      maxLines: maxLines,
      minLines: minLines,
      expands: expands,
      onInfoIconTapped: onInfoIconTapped,
      requiredIcon: requiredIcon,
      message: message,
      error: error,
      hint: hint,
      onPrefixIconTapped: onPrefixIconTapped,
      prefixIcon: prefixIcon,
      suffixText: suffixText,
      maxLength: maxLength,
      keyboardType: keyboardType,
      onChanged: onChanged,
      counterWidgetBuilder: counterWidgetBuilder,
      validator: validator,
      onTap: onTap,
      controller: controller,
      isReadOnly: isReadOnly,
      isEnabled: isEnabled,
      obscureText: obscureText,
      suffix: suffix,
      suffixIcon: suffixIcon,
      hintStyle: hintStyle,
      labelStyle: labelStyle,
      allowedInputRegExp: allowedInputRegExp,
      textCapitalization: textCapitalization,
      showMaxCharacterFooter: showMaxCharacterFooter,
    );
  }
}
