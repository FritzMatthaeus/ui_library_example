import 'package:flutter/material.dart';
import 'package:ui_library_example/src/foundation/themes/button_theme.dart';
import 'package:ui_library_example/src/foundation/tokens/base_tokens.dart';

class BaseFilledButton extends StatelessWidget {
  final MyFilledButtonStyle style;
  final ButtonSize size;
  final Function() onPressed;
  final String title;
  final IconData? icon;
  final bool isDisabled;
  const BaseFilledButton({
    super.key,
    required this.style,
    required this.onPressed,
    required this.title,
    this.size = ButtonSize.medium,
    this.icon,
    this.isDisabled = false,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: FilledButton.styleFrom(
        padding: size.padding,
        backgroundColor: isDisabled
            ? style.disabledBackgroundColor
            : style.backgroundColor,
        foregroundColor: isDisabled ? style.disabledTextColor : style.textColor,
        disabledBackgroundColor: style.disabledBackgroundColor,
        disabledForegroundColor: style.disabledTextColor,
        iconColor: isDisabled ? style.disabledTextColor : style.textColor,
        iconAlignment: IconAlignment.start,
        iconSize: size.iconSize,
        textStyle: TextStyle(
          color: isDisabled ? style.disabledTextColor : style.textColor,
          fontSize: size.fontSize,
        ),
      ),
      onPressed: isDisabled ? null : onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: BaseTokens.spaceSm,
        children: [
          if (icon != null) Icon(icon!),
          Text(title, style: TextStyle(fontSize: size.fontSize)),
        ],
      ),
    );
  }
}
