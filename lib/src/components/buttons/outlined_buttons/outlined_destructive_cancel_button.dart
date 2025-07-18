import 'package:flutter/material.dart';
import 'package:ui_library_example/src/foundation/components/buttons/base_outlined_button.dart';
import 'package:ui_library_example/src/foundation/themes/button_theme.dart';
import 'package:ui_library_example/src/helpers/extensions.dart';

class OutlinedDestructiveCancelButton extends StatelessWidget {
  final ButtonSize size;
  final bool isDisabled;
  const OutlinedDestructiveCancelButton({
    super.key,
    this.size = ButtonSize.medium,
    this.isDisabled = false,
  });

  @override
  Widget build(BuildContext context) {
    return BaseOutlinedButton(
      isDisabled: isDisabled,
      size: size,
      style: context.myOutlinedButtonTheme.destructiveCancel,
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Outlined Destructive Cancel button pressed')),
        );
      },
      title: 'Cancel',
    );
  }
}
