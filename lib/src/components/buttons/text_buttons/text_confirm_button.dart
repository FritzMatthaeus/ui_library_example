import 'package:flutter/material.dart';
import 'package:ui_library_example/src/foundation/components/buttons/base_text_button.dart';
import 'package:ui_library_example/src/foundation/themes/button_theme.dart';
import 'package:ui_library_example/src/helpers/extensions.dart';

class TextConfirmButton extends StatelessWidget {
  final ButtonSize size;
  final bool isDisabled;
  const TextConfirmButton({
    super.key,
    this.size = ButtonSize.medium,
    this.isDisabled = false,
  });

  @override
  Widget build(BuildContext context) {
    return BaseTextButton(
      isDisabled: isDisabled,
      size: size,
      style: context.myTextButtonTheme.confirm,
      onPressed: () {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Text Confirm button pressed')));
      },
      title: 'Confirm',
    );
  }
}
