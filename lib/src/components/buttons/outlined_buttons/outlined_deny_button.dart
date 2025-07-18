import 'package:flutter/material.dart';
import 'package:ui_library_example/src/foundation/components/buttons/base_outlined_button.dart';
import 'package:ui_library_example/src/foundation/themes/button_theme.dart';
import 'package:ui_library_example/src/helpers/extensions.dart';

class OutlinedDenyButton extends StatelessWidget {
  final ButtonSize size;
  final bool isDisabled;
  const OutlinedDenyButton({
    super.key,
    this.size = ButtonSize.medium,
    this.isDisabled = false,
  });

  @override
  Widget build(BuildContext context) {
    return BaseOutlinedButton(
      isDisabled: isDisabled,
      size: size,
      style: context.myOutlinedButtonTheme.deny,
      onPressed: () {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Outlined Deny button pressed')));
      },
      title: 'Deny',
    );
  }
}
