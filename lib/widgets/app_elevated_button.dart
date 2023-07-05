import 'package:flutter/material.dart';
import 'package:flutter_rapidonkey/themes/app_colors.dart';
import 'package:flutter_rapidonkey/themes/app_dimensions.dart';
import 'package:flutter_rapidonkey/themes/app_font_style.dart';

class AppElevatedButton extends StatelessWidget {
  final String text;
  final ElevateButtonState state;
  final void Function() onPressed;

  const AppElevatedButton({
    super.key,
    required this.text,
    required this.state,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            vertical: AppDimensions.defaultSpacing,
            horizontal: AppDimensions.normalSpacing,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppDimensions.defaultRadius),
          ),
          backgroundColor: buttonColor(state),
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

  Color buttonColor(ElevateButtonState state) {
    switch (state) {
      case ElevateButtonState.active:
        return AppColors.secondary;
      case ElevateButtonState.tapped:
        return AppColors.secondaryLight;
      case ElevateButtonState.inactive:
        return AppColors.inactive;
    }
  }
}

enum ElevateButtonState { active, tapped, inactive }
