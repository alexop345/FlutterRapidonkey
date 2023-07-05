import 'package:flutter/material.dart';

class AppFontStyle {
  static const double fontSizeNormal = 12;
  static const double fontSizeDefault = 16;
  static const double fontSizeBig = 20;

  static TextStyle titleText = const TextStyle(
    fontFamily: "Ubuntu",
    fontSize: fontSizeNormal,
    fontWeight: FontWeight.w500,
  );

  static TextStyle dialogText = const TextStyle(
    fontFamily: "Ubuntu",
    fontSize: fontSizeDefault,
    fontWeight: FontWeight.w500,
    color: Colors.black,
    height: 26 / fontSizeDefault
  );

  static TextStyle dialogTitle = const TextStyle(
    fontFamily: "Ubuntu",
    fontSize: fontSizeBig,
    fontWeight: FontWeight.w500,
    color: Colors.black,
    height: 24 / fontSizeBig
  );
}
