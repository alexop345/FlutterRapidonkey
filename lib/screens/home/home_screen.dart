import 'package:flutter/material.dart';
import 'package:flutter_rapidonkey/themes/app_dimensions.dart';
import 'package:flutter_rapidonkey/widgets/app_dialog.dart';
import 'package:flutter_rapidonkey/widgets/app_elevated_button.dart';
import 'package:flutter_rapidonkey/widgets/app_outlined_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void _showDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (ctx) {
        return const AppDialog();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wide buttons'),
      ),
      body: Container(
        padding: const EdgeInsets.all(AppDimensions.normalSpacing),
        child: Column(
          children: [
            AppElevatedButton(
              text: 'Default',
              state: ElevateButtonState.active,
              onPressed: () {
                _showDialog(context);
              },
            ),
            AppElevatedButton(
              text: 'Tapped',
              state: ElevateButtonState.tapped,
              onPressed: () {},
            ),
            AppElevatedButton(
              text: 'Inactive',
              state: ElevateButtonState.inactive,
              onPressed: () {},
            ),
            AppOutlinedButton(
              text: 'Default',
              state: OutlinedButtonState.active,
              onPressed: () {},
            ),
            AppOutlinedButton(
              text: 'Tapped',
              state: OutlinedButtonState.tapped,
              onPressed: () {},
            ),
            AppOutlinedButton(
              text: 'Inactive',
              state: OutlinedButtonState.inactive,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
