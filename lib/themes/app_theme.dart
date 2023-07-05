import 'package:flutter/material.dart';
import 'package:flutter_rapidonkey/themes/app_colors.dart';

class AppTheme {
  static ThemeData appTheme = ThemeData(
    primaryColor: AppColors.primary,
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.primary,
    ),
  );
}
