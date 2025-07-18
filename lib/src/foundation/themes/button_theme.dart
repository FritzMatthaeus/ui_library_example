import 'package:flutter/material.dart';
import 'package:ui_library_example/src/foundation/tokens/base_tokens.dart';
import 'package:ui_library_example/src/foundation/tokens/button_tokens.dart';

/// Button size for the button theme.
///
/// The button size value is used to define the size of a button.
/// It provides all size related values for a button like
/// [height], [borderRadius], [padding], [margin], [borderWidth], [fontSize].
enum ButtonSize {
  small(
    height: ButtonTokens.buttonHeightSmall,
    borderRadius: ButtonTokens.buttonBorderRadiusSmall,
    padding: EdgeInsets.all(ButtonTokens.buttonPaddingSmall),
    margin: EdgeInsets.all(ButtonTokens.buttonMarginSmall),
    borderWidth: ButtonTokens.buttonBorderWidthSmall,
    fontSize: ButtonTokens.fontSizeSmall,
    iconSize: BaseTokens.iconSm,
  ),
  medium(
    height: ButtonTokens.buttonHeightMedium,
    borderRadius: ButtonTokens.buttonBorderRadiusMedium,
    padding: EdgeInsets.all(ButtonTokens.buttonPaddingMedium),
    margin: EdgeInsets.all(ButtonTokens.buttonMarginMedium),
    borderWidth: ButtonTokens.buttonBorderWidthMedium,
    fontSize: ButtonTokens.fontSizeMedium,
    iconSize: BaseTokens.iconMd,
  ),
  large(
    height: ButtonTokens.buttonHeightLarge,
    borderRadius: ButtonTokens.buttonBorderRadiusLarge,
    padding: EdgeInsets.all(ButtonTokens.buttonPaddingLarge),
    margin: EdgeInsets.all(ButtonTokens.buttonMarginLarge),
    borderWidth: ButtonTokens.buttonBorderWidthLarge,
    fontSize: ButtonTokens.fontSizeLarge,
    iconSize: BaseTokens.iconLg,
  );

  final double height;
  final double borderRadius;
  final EdgeInsets padding;
  final EdgeInsets margin;
  final double borderWidth;
  final double fontSize;
  final double iconSize;

  const ButtonSize({
    required this.height,
    required this.borderRadius,
    required this.padding,
    required this.margin,
    required this.borderWidth,
    required this.fontSize,
    required this.iconSize,
  });
}

class MyFilledButtonStyle {
  final Color backgroundColor;
  final Color textColor;
  final Color disabledBackgroundColor;
  final Color disabledTextColor;

  const MyFilledButtonStyle({
    required this.backgroundColor,
    required this.textColor,
    required this.disabledBackgroundColor,
    required this.disabledTextColor,
  });
}

final class MyFilledButtonTheme
    extends MyPrototypeButtonTheme<MyFilledButtonStyle> {
  const MyFilledButtonTheme({
    required super.confirm,
    required super.actionCancel,
    required super.destructiveCancel,
    required super.deny,
  });
}

class MyOutlinedButtonStyle {
  final Color borderColor;
  final Color textColor;
  final Color disabledBorderColor;
  final Color disabledTextColor;
  const MyOutlinedButtonStyle({
    required this.borderColor,
    required this.textColor,
    required this.disabledBorderColor,
    required this.disabledTextColor,
  });
}

final class MyOutlinedButtonTheme
    extends MyPrototypeButtonTheme<MyOutlinedButtonStyle> {
  const MyOutlinedButtonTheme({
    required super.confirm,
    required super.actionCancel,
    required super.destructiveCancel,
    required super.deny,
  });
}

base class MyPrototypeButtonTheme<T> {
  final T confirm;
  final T actionCancel;
  final T destructiveCancel;
  final T deny;
  const MyPrototypeButtonTheme({
    required this.confirm,
    required this.actionCancel,
    required this.destructiveCancel,
    required this.deny,
  });
}

class MyTextButtonStyle {
  final Color textColor;
  final Color disabledTextColor;

  const MyTextButtonStyle({
    required this.textColor,
    required this.disabledTextColor,
  });
}

final class MyTextButtonTheme
    extends MyPrototypeButtonTheme<MyTextButtonStyle> {
  const MyTextButtonTheme({
    required super.confirm,
    required super.actionCancel,
    required super.destructiveCancel,
    required super.deny,
  });
}
