import 'package:flutter/material.dart';

class AppFontStyle {
  static const double fontSizeNormal = 12;
  static const double fontSizeNormalPlus = 14;
  static const double fontSizeDefault = 16;
  static const double fontSizeBig = 20;

  static const String fontFamily = "Ubuntu";

  static TextStyle titleText = const TextStyle(
    fontFamily: fontFamily,
    fontSize: fontSizeNormal,
    fontWeight: FontWeight.w500,
  );

  static TextStyle dialogText = const TextStyle(
    fontFamily: fontFamily,
    fontSize: fontSizeDefault,
    fontWeight: FontWeight.w500,
    color: Colors.black,
    height: 26 / fontSizeDefault
  );

  static TextStyle dialogTitle = const TextStyle(
    fontFamily: fontFamily,
    fontSize: fontSizeBig,
    fontWeight: FontWeight.w500,
    color: Colors.black,
    height: 24 / fontSizeBig
  );

  static TextStyle cardText = const TextStyle(
     fontFamily: fontFamily,
     fontSize: fontSizeNormalPlus,
     fontWeight: FontWeight.w700,
     color: Colors.black,
     height: 20 / fontSizeNormalPlus,
  );
}
