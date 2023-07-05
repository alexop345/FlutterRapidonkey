import 'package:flutter/material.dart';
import 'package:flutter_rapidonkey/themes/app_colors.dart';

var kColorScheme = ColorScheme.fromSeed(seedColor: AppColors.primary);

class AppTheme {
  static ThemeData appTheme = ThemeData().copyWith(
    colorScheme: kColorScheme,
    appBarTheme: const AppBarTheme().copyWith(
      backgroundColor: kColorScheme.primary,
      foregroundColor: kColorScheme.onPrimary
    ),
  );
}
