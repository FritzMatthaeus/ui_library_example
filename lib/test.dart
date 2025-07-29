import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Actions action;

  final Level level;

  const Button.confirm({required this.level, super.key}) : action = Actions.confirm;

  const Button.cancel({required this.level, super.key}) : action = Actions.confirm;

  @override
  Widget build(BuildContext context) {
    ButtonTheme().confirm.primary;
    ButtonStyle style = ActionThemeUtil.instance.getActionTheme(action, level, context.myTheme...);
    return const Placeholder();
  }
}

abstract class ThemeComp {
  final Actions action;

  const ThemeComp(this.action);
}

class ActionThemeUtil extends ThemeUtil {
  static const ActionThemeUtil instance = ActionThemeUtil();

  const ActionThemeUtil();

  T getActionTheme<T>(Actions action, Level level, ActionTheme<ThemePrototype<T>> theme) => switch (action) {
    Actions.confirm => getTheme(level, theme.confirm),
    Actions.cancel => getTheme(level, theme.cancel),
  };
}

class ThemeUtil {
  static const ThemeUtil instance = ThemeUtil();

  const ThemeUtil();

  T getTheme<T>(Level level, ThemePrototype<T> theme) => switch (level) {
    Level.primary => theme.primary,
    Level.secondary => theme.secondary,
  };
}

enum Actions { cancel, confirm }

enum Level { primary, secondary }

class ButtonTheme extends ActionTheme<ThemePrototype<ButtonStyle>> {
  const ButtonTheme(super.primary, super.secondary);
}

class ButtonStyle {
  final Color color;

  const ButtonStyle(this.color);
}

class ThemePrototype<T> {
  final T primary;
  final T secondary;

  const ThemePrototype(this.primary, this.secondary);
}

class ActionTheme<T> {
  final T cancel;
  final T confirm;

  const ActionTheme(this.cancel, this.confirm);
}