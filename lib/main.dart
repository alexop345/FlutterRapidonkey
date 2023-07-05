import 'package:flutter/material.dart';
import 'package:flutter_rapidonkey/screens/home/home_screen.dart';
import 'package:flutter_rapidonkey/themes/app_theme.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rapidonkey practice',
      theme: AppTheme.appTheme,
      home: const HomeScreen(),
    );
  }
}