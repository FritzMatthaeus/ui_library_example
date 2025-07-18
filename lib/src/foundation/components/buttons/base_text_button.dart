import 'package:flutter/material.dart';
import 'package:ui_library_example/src/foundation/themes/button_theme.dart';
import 'package:ui_library_example/src/foundation/tokens/base_tokens.dart';

class BaseTextButton extends StatelessWidget {
  final MyTextButtonStyle style;
  final ButtonSize size;
  final Function() onPressed;
  final String title;
  final IconData? icon;
  final bool isDisabled;
  const BaseTextButton({
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
    return TextButton(
      style: TextButton.styleFrom(
        padding: size.padding,
        iconColor: isDisabled ? style.disabledTextColor : style.textColor,
        disabledForegroundColor: style.disabledTextColor,
        iconAlignment: IconAlignment.start,
        iconSize: size.iconSize,
        textStyle: TextStyle(
          color: isDisabled ? style.disabledTextColor : style.textColor,
          fontSize: size.fontSize,
        ),
        foregroundColor: isDisabled ? style.disabledTextColor : style.textColor,
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
