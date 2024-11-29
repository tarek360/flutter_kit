library design_system;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'src/widgets/dots_indicator.dart';
import 'src/widgets/text_field_theme.dart';
import 'src/widgets/ui_error_view.dart';
import 'ui_kit.dart';

export 'package:design_system/design_system.dart';
export 'package:figma_squircle/figma_squircle.dart';
export 'package:flutter_animate/flutter_animate.dart';
export 'package:ui_kit_interface/ui_kit_interface.dart';

export 'src/colors.dart';
export 'src/custom/app_logo.dart';
export 'src/custom/top_bar.dart';
export 'src/widgets/bottom_bar.dart';
export 'src/widgets/buttons.dart';
export 'src/widgets/dropdown_menu.dart';
export 'src/widgets/icons.dart';
export 'src/widgets/loading_indicators.dart';
export 'src/widgets/search_field.dart';
export 'src/widgets/snack_bar.dart';
export 'src/widgets/switches.dart';
export 'src/widgets/text_fields.dart';

class ChatUIKit extends UIKitComponents {
  ChatUIKit({
    required FrogThemeData frogThemeData,
  })  : textInputStyle = TextInputStyle(frogThemeData.colorScheme, frogThemeData.textStyles),
        super(
          primaryButtonBuilder: ChatUIButton.new,
          secondaryButtonBuilder: ChatUIButton.secondary,
          textButtonBuilder: ChatUIButton.text,
          textInputBuilder: ChatUITextInput.new,
          indeterminateLoaderBuilder: ChatUICircularIndicator.new,
          linearIndicatorBuilder: ChatUIProgressIndicator.new,
          dotsIndicatorBuilder: ChatUIDotsIndicator.new,
          toggleBuilder: ChatUISwitch.new,
          errorViewBuilder: ChatUIErrorView.new,
        );

  final TextInputStyle textInputStyle;

  static ChatUIKit of(BuildContext context) => UIKit.of(context) as ChatUIKit;

  static SystemUiOverlayStyle _getSystemUiOverlayStyle(Brightness brightness, FrogColorScheme colors) =>
      SystemUiOverlayStyle(
        statusBarColor: colors.transparent,
        statusBarIconBrightness: brightness == Brightness.light ? Brightness.dark : Brightness.light,
        systemNavigationBarColor: colors.neutral00,
        systemNavigationBarDividerColor: colors.neutral00,
        systemNavigationBarContrastEnforced: true,
        statusBarBrightness: brightness,
      );

  static ThemeData getThemeData(Brightness brightness, FrogColorScheme colors, FrogTypography typography) => ThemeData(
        useMaterial3: true,
        brightness: brightness,
        dialogTheme: DialogTheme(
          elevation: 0,
          surfaceTintColor: colors.neutral00,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
        ),
        textTheme: typography.englishLike.toTextTheme(colors.neutral120),
        typography: Typography(
          englishLike: typography.englishLike.toTextTheme(colors.neutral120),
          dense: typography.dense.toTextTheme(colors.neutral120),
          tall: typography.tall.toTextTheme(colors.neutral120),
        ),
        scaffoldBackgroundColor: colors.neutral00,
        appBarTheme: AppBarTheme(
          scrolledUnderElevation: 0,
          centerTitle: true,
          shadowColor: colors.neutral00,
          surfaceTintColor: colors.neutral00,
          color: colors.neutral00,
          systemOverlayStyle: _getSystemUiOverlayStyle(brightness, colors),
          iconTheme: IconThemeData(color: colors.neutral100),
        ),
        iconTheme: IconThemeData(color: colors.neutral150),
        colorScheme: ColorScheme.fromSeed(
          brightness: brightness,
          seedColor: colors.brand,
          primary: colors.primary100,
          onPrimary: colors.neutral00,
          surface: colors.neutral00,
          onSurface: colors.neutral150,
          error: colors.negative70,
          onError: colors.neutral00,
        ),
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: colors.neutral00,
          modalBackgroundColor: colors.neutral00,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
          ),
        ),
      );
}
