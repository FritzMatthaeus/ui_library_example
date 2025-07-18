import 'package:flutter/material.dart';
import 'package:ui_library_example/src/foundation/themes/button_theme.dart';
import 'package:ui_library_example/src/foundation/themes/scaffold_theme.dart';
import 'package:ui_library_example/src/foundation/tokens/base_tokens.dart';
import 'package:ui_library_example/src/foundation/tokens/scaffold_tokens.dart';

final class MyTheme extends ThemeExtension<MyTheme> {
  final MyOutlinedButtonTheme myOutlinedButtonTheme;
  final MyFilledButtonTheme myFilledButtonTheme;
  final MyTextButtonTheme myTextButtonTheme;
  final ScaffoldTheme scaffoldTheme;

  const MyTheme({
    required this.myFilledButtonTheme,
    required this.myOutlinedButtonTheme,
    required this.myTextButtonTheme,
    required this.scaffoldTheme,
  });

  @override
  MyTheme copyWith({
    MyOutlinedButtonTheme? myOutlinedButtonTheme,
    MyFilledButtonTheme? myFilledButtonTheme,
    MyTextButtonTheme? myTextButtonTheme,
    ScaffoldTheme? scaffoldTheme,
  }) {
    return MyTheme(
      myFilledButtonTheme: myFilledButtonTheme ?? this.myFilledButtonTheme,
      myOutlinedButtonTheme:
          myOutlinedButtonTheme ?? this.myOutlinedButtonTheme,
      myTextButtonTheme: myTextButtonTheme ?? this.myTextButtonTheme,
      scaffoldTheme: scaffoldTheme ?? this.scaffoldTheme,
    );
  }

  @override
  MyTheme lerp(MyTheme? other, double t) {
    if (other is! MyTheme) {
      return this;
    }
    return other;
  }
}

abstract class MyThemes {
  static const light = MyTheme(
    myFilledButtonTheme: MyFilledButtonTheme(
      confirm: MyFilledButtonStyle(
        backgroundColor: BaseTokens.green600,
        textColor: BaseTokens.gray100,
        disabledBackgroundColor: BaseTokens.gray200,
        disabledTextColor: BaseTokens.gray400,
      ),
      actionCancel: MyFilledButtonStyle(
        backgroundColor: BaseTokens.gray100,
        textColor: BaseTokens.gray700,
        disabledBackgroundColor: BaseTokens.gray200,
        disabledTextColor: BaseTokens.gray400,
      ),
      destructiveCancel: MyFilledButtonStyle(
        backgroundColor: BaseTokens.red500,
        textColor: BaseTokens.gray100,
        disabledBackgroundColor: BaseTokens.gray200,
        disabledTextColor: BaseTokens.gray400,
      ),
      deny: MyFilledButtonStyle(
        backgroundColor: BaseTokens.gray100,
        textColor: BaseTokens.red500,
        disabledBackgroundColor: BaseTokens.gray200,
        disabledTextColor: BaseTokens.gray400,
      ),
    ),
    myOutlinedButtonTheme: MyOutlinedButtonTheme(
      confirm: MyOutlinedButtonStyle(
        borderColor: BaseTokens.green600,
        textColor: BaseTokens.green600,
        disabledBorderColor: BaseTokens.gray300,
        disabledTextColor: BaseTokens.gray400,
      ),
      actionCancel: MyOutlinedButtonStyle(
        borderColor: BaseTokens.gray400,
        textColor: BaseTokens.gray700,
        disabledBorderColor: BaseTokens.gray300,
        disabledTextColor: BaseTokens.gray400,
      ),
      destructiveCancel: MyOutlinedButtonStyle(
        borderColor: BaseTokens.red500,
        textColor: BaseTokens.red500,
        disabledBorderColor: BaseTokens.gray300,
        disabledTextColor: BaseTokens.gray400,
      ),
      deny: MyOutlinedButtonStyle(
        borderColor: BaseTokens.red500,
        textColor: BaseTokens.red500,
        disabledBorderColor: BaseTokens.gray300,
        disabledTextColor: BaseTokens.gray400,
      ),
    ),
    myTextButtonTheme: MyTextButtonTheme(
      confirm: MyTextButtonStyle(
        textColor: BaseTokens.green600,
        disabledTextColor: BaseTokens.gray400,
      ),
      actionCancel: MyTextButtonStyle(
        textColor: BaseTokens.gray700,
        disabledTextColor: BaseTokens.gray400,
      ),
      destructiveCancel: MyTextButtonStyle(
        textColor: BaseTokens.red500,
        disabledTextColor: BaseTokens.gray400,
      ),
      deny: MyTextButtonStyle(
        textColor: BaseTokens.red500,
        disabledTextColor: BaseTokens.gray400,
      ),
    ),
    scaffoldTheme: ScaffoldTheme(
      scaffoldStyle: ScaffoldStyle(
        backgroundColor: BaseTokens.blue100,
        textColor: BaseTokens.blue800,
        contentPadding: ScaffoldTokens.scaffoldPadding,
      ),
    ),
  );

  static const dark = MyTheme(
    myFilledButtonTheme: MyFilledButtonTheme(
      confirm: MyFilledButtonStyle(
        backgroundColor: BaseTokens.green500,
        textColor: BaseTokens.gray900,
        disabledBackgroundColor: BaseTokens.gray700,
        disabledTextColor: BaseTokens.gray500,
      ),
      actionCancel: MyFilledButtonStyle(
        backgroundColor: BaseTokens.gray700,
        textColor: BaseTokens.gray100,
        disabledBackgroundColor: BaseTokens.gray700,
        disabledTextColor: BaseTokens.gray500,
      ),
      destructiveCancel: MyFilledButtonStyle(
        backgroundColor: BaseTokens.red600,
        textColor: BaseTokens.gray100,
        disabledBackgroundColor: BaseTokens.gray700,
        disabledTextColor: BaseTokens.gray500,
      ),
      deny: MyFilledButtonStyle(
        backgroundColor: BaseTokens.gray700,
        textColor: BaseTokens.red400,
        disabledBackgroundColor: BaseTokens.gray700,
        disabledTextColor: BaseTokens.gray500,
      ),
    ),
    myOutlinedButtonTheme: MyOutlinedButtonTheme(
      confirm: MyOutlinedButtonStyle(
        borderColor: BaseTokens.green400,
        textColor: BaseTokens.green400,
        disabledBorderColor: BaseTokens.gray600,
        disabledTextColor: BaseTokens.gray500,
      ),
      actionCancel: MyOutlinedButtonStyle(
        borderColor: BaseTokens.gray500,
        textColor: BaseTokens.gray300,
        disabledBorderColor: BaseTokens.gray600,
        disabledTextColor: BaseTokens.gray500,
      ),
      destructiveCancel: MyOutlinedButtonStyle(
        borderColor: BaseTokens.red400,
        textColor: BaseTokens.red400,
        disabledBorderColor: BaseTokens.gray600,
        disabledTextColor: BaseTokens.gray500,
      ),
      deny: MyOutlinedButtonStyle(
        borderColor: BaseTokens.red400,
        textColor: BaseTokens.red400,
        disabledBorderColor: BaseTokens.gray600,
        disabledTextColor: BaseTokens.gray500,
      ),
    ),
    myTextButtonTheme: MyTextButtonTheme(
      confirm: MyTextButtonStyle(
        textColor: BaseTokens.green400,
        disabledTextColor: BaseTokens.gray500,
      ),
      actionCancel: MyTextButtonStyle(
        textColor: BaseTokens.gray300,
        disabledTextColor: BaseTokens.gray500,
      ),
      destructiveCancel: MyTextButtonStyle(
        textColor: BaseTokens.red400,
        disabledTextColor: BaseTokens.gray500,
      ),
      deny: MyTextButtonStyle(
        textColor: BaseTokens.red400,
        disabledTextColor: BaseTokens.gray500,
      ),
    ),
    scaffoldTheme: ScaffoldTheme(
      scaffoldStyle: ScaffoldStyle(
        backgroundColor: BaseTokens.gray900,
        textColor: BaseTokens.gray200,
        contentPadding: ScaffoldTokens.scaffoldPadding,
      ),
    ),
  );
}
