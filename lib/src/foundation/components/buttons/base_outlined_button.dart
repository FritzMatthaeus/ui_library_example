import 'package:flutter/material.dart';
import 'package:ui_library_example/src/foundation/themes/button_theme.dart';
import 'package:ui_library_example/src/foundation/tokens/base_tokens.dart';

class BaseOutlinedButton extends StatelessWidget {
  final MyOutlinedButtonStyle style;
  final ButtonSize size;
  final Function() onPressed;
  final String title;
  final IconData? icon;
  final bool isDisabled;
  const BaseOutlinedButton({
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
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        padding: size.padding,
        iconColor: isDisabled
            ? style.disabledBorderColor
            : style.disabledTextColor,
        disabledForegroundColor: style.disabledTextColor,
        iconAlignment: IconAlignment.start,
        iconSize: size.iconSize,
        textStyle: TextStyle(
          color: isDisabled ? style.disabledTextColor : style.textColor,
          fontSize: size.fontSize,
        ),
        foregroundColor: isDisabled ? style.disabledTextColor : style.textColor,
        side: BorderSide(
          color: isDisabled ? style.disabledBorderColor : style.borderColor,
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
