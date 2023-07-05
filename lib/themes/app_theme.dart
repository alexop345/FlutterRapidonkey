import 'package:flutter/material.dart';
import 'package:flutter_rapidonkey/themes/app_colors.dart';
import 'package:flutter_rapidonkey/themes/app_font_style.dart';

var kColorScheme = ColorScheme.fromSeed(seedColor: AppColors.primary);

class AppTheme {
  static ThemeData appTheme = ThemeData().copyWith(
    colorScheme: kColorScheme,
    appBarTheme: const AppBarTheme().copyWith(
      backgroundColor: kColorScheme.primary,
      foregroundColor: kColorScheme.onPrimary,
    ),
    textTheme: const TextTheme().copyWith(
      labelLarge: AppFontStyle.titleText,
    ),
  );
}
