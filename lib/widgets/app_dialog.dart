import 'package:flutter/material.dart';
import 'package:flutter_rapidonkey/themes/app_dimensions.dart';
import 'package:flutter_rapidonkey/themes/app_font_style.dart';
import 'package:flutter_rapidonkey/widgets/app_elevated_button.dart';
import 'package:flutter_rapidonkey/widgets/app_outlined_button.dart';

class AppDialog extends StatelessWidget {
  const AppDialog({super.key});

  _close(BuildContext context) {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(
            AppDimensions.normalSpacing,
            AppDimensions.defaultPlusSpacing,
            AppDimensions.normalSpacing,
            AppDimensions.zeroSpacing,
          ),
          child: Text(
            'Pause Shift',
            style: AppFontStyle.dialogTitle,
          ),
        ),
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppDimensions.normalSpacing,
          ),
          child: Text(
            'Are you sure you want to pause your current shift?',
            style: AppFontStyle.dialogText,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(AppDimensions.normalSpacing),
          child: Column(
            children: [
              AppElevatedButton(
                text: 'Yes',
                state: ElevateButtonState.active,
                onPressed: () {
                  _close(context);
                },
              ),
              AppOutlinedButton(
                text: 'No',
                state: OutlinedButtonState.active,
                onPressed: () {
                  _close(context);
                },
              )
            ],
          ),
        ),
      ],
    );
  }
}
