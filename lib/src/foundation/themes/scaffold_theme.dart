import 'dart:ui';

class ScaffoldStyle {
  final Color backgroundColor;
  final Color textColor;
  final double contentPadding;

  const ScaffoldStyle({
    required this.backgroundColor,
    required this.textColor,
    required this.contentPadding,
  });
}

final class ScaffoldTheme {
  final ScaffoldStyle scaffoldStyle;

  const ScaffoldTheme({required this.scaffoldStyle});
}
