import 'package:flutter/material.dart';
import 'package:flutter_rapidonkey/themes/app_colors.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: AppColors.primary,
  primary: AppColors.primary,
);

class AppTheme {
  static ThemeData appTheme = ThemeData().copyWith(
    appBarTheme: const AppBarTheme().copyWith(
      backgroundColor: kColorScheme.primary,
      foregroundColor: kColorScheme.onPrimary,
    ),
  );
}
