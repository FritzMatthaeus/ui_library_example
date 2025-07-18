import 'package:flutter/material.dart';
import 'package:ui_library_example/src/foundation/components/buttons/base_filled_button.dart';
import 'package:ui_library_example/src/foundation/themes/button_theme.dart';
import 'package:ui_library_example/src/helpers/extensions.dart';

class FilledConfirmButton extends StatelessWidget {
  final ButtonSize size;
  final bool isDisabled;
  const FilledConfirmButton({
    super.key,
    this.size = ButtonSize.medium,
    this.isDisabled = false,
  });

  @override
  Widget build(BuildContext context) {
    return BaseFilledButton(
      isDisabled: isDisabled,
      size: size,
      style: context.myFilledButtonTheme.confirm,
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Filled Confirm button pressed')),
        );
      },
      title: 'Confirm',
    );
  }
}
