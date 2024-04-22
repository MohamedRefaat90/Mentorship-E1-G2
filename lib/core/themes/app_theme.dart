import 'package:flutter/material.dart';

import 'app_pallete.dart';

class AppTheme {
  static _border([Color color = AppPallete.borderColor]) => OutlineInputBorder(
      borderSide: BorderSide(color: color, width: 3),
      borderRadius: BorderRadius.circular(10));

  static final darkTthemeMode = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppPallete.homeBG,
    appBarTheme: const AppBarTheme(backgroundColor: AppPallete.homeBG),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(27),
      enabledBorder: _border(),
      focusedBorder: _border(AppPallete.pink),
    ),
  );
}
