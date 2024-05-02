import 'package:flutter/material.dart';
import 'package:mentorship_e1_g3/core/themes/app_pallete.dart';

class AppTheme {
  static _border([Color color = AppPalette.borderColor]) => OutlineInputBorder(
      borderSide: BorderSide(color: color, width: 3),
      borderRadius: BorderRadius.circular(10));

  static final darkTthemeMode = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppPalette.homeBG,
    appBarTheme: const AppBarTheme(backgroundColor: AppPalette.homeBG),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(27),
      enabledBorder: _border(),
      focusedBorder: _border(AppPalette.pink),
    ),
  );
}
