import 'package:flutter/material.dart';
import 'package:flutter_rapidonkey/themes/app_colors.dart';
import 'package:flutter_rapidonkey/themes/app_dimensions.dart';
import 'package:flutter_rapidonkey/themes/app_font_style.dart';

class AppOutlinedButton extends StatelessWidget {
  final String text;
  final OutlinedButtonState state;
  final void Function() onPressed;

  const AppOutlinedButton({
    super.key,
    required this.text,
    required this.state,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            vertical: AppDimensions.defaultSpacing,
            horizontal: AppDimensions.normalSpacing,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppDimensions.defaultRadius),
          ),
          backgroundColor: AppColors.white,
          foregroundColor: buttonColor(state),
          side: BorderSide(width: 1, color: buttonColor(state)),
        ),
        onPressed: onPressed,
        child: Text(
          text.toUpperCase(),
          style: AppFontStyle.customButton,
        ),
      ),
    );
  }

  Color buttonColor(OutlinedButtonState state) {
    switch (state) {
      case OutlinedButtonState.active:
        return AppColors.secondary;
      case OutlinedButtonState.tapped:
        return AppColors.secondaryLight;
      case OutlinedButtonState.inactive:
        return AppColors.inactive;
    }
  }
}

enum OutlinedButtonState { active, tapped, inactive }
