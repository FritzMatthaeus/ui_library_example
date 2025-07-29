import 'package:flutter/material.dart';
import 'package:ui_library_example/src/foundation/my_theme.dart';
import 'package:ui_library_example/src/foundation/themes/button_theme.dart';
import 'package:ui_library_example/src/foundation/themes/scaffold_theme.dart';

extension MyThemeExtension on BuildContext {
  // Muss man nicht alle verwenden
  MyTheme get myTheme => Theme.of(this).extension<MyTheme>() ?? MyThemes.light;

  MyFilledButtonTheme get myFilledButtonTheme =>
      Theme.of(this).extension<MyTheme>()?.myFilledButtonTheme ??
      MyThemes.light.myFilledButtonTheme;

  MyOutlinedButtonTheme get myOutlinedButtonTheme =>
      Theme.of(this).extension<MyTheme>()?.myOutlinedButtonTheme ??
      MyThemes.light.myOutlinedButtonTheme;

  MyTextButtonTheme get myTextButtonTheme =>
      Theme.of(this).extension<MyTheme>()?.myTextButtonTheme ??
      MyThemes.light.myTextButtonTheme;

  ScaffoldTheme get scaffoldTheme =>
      Theme.of(this).extension<MyTheme>()?.scaffoldTheme ??
      MyThemes.light.scaffoldTheme;
}
