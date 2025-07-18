import 'package:flutter/material.dart';
import 'package:ui_library_example/src/foundation/components/buttons/base_filled_button.dart';
import 'package:ui_library_example/src/foundation/themes/button_theme.dart';
import 'package:ui_library_example/src/helpers/extensions.dart';

class FilledActionCancelButton extends StatelessWidget {
  final ButtonSize size;
  final bool isDisabled;
  const FilledActionCancelButton({
    super.key,
    this.size = ButtonSize.medium,
    this.isDisabled = false,
  });

  @override
  Widget build(BuildContext context) {
    return BaseFilledButton(
      isDisabled: isDisabled,
      size: size,
      style: context.myFilledButtonTheme.actionCancel,
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Filled Action Cancel button pressed')),
        );
      },
      title: 'Cancel',
    );
  }
}
