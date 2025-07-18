import 'package:flutter/material.dart';
import 'package:ui_library_example/src/foundation/components/buttons/base_filled_button.dart';
import 'package:ui_library_example/src/foundation/themes/button_theme.dart';
import 'package:ui_library_example/src/helpers/extensions.dart';

class FilledDestructiveCancelButton extends StatelessWidget {
  final ButtonSize size;
  final bool isDisabled;
  const FilledDestructiveCancelButton({
    super.key,
    this.size = ButtonSize.medium,
    this.isDisabled = false,
  });

  @override
  Widget build(BuildContext context) {
    return BaseFilledButton(
      isDisabled: isDisabled,
      size: size,
      style: context.myFilledButtonTheme.destructiveCancel,
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Filled Destructive Cancel button pressed')),
        );
      },
      title: 'Cancel',
    );
  }
}
