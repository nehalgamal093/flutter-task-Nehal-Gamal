import 'package:flutter/material.dart';

class AppTextStyles {
  static TextStyle regularTextStyle({
    double fontSize = 16,
    Color color = Colors.black,
    TextDecoration decoration = TextDecoration.none,
  }) {
    return TextStyle(
      fontFamily: 'Tajawal',
      fontWeight: FontWeight.normal,
      fontSize: fontSize,
      color: color,
      decoration: decoration,
      decorationThickness: 2,
      decorationColor: color,
    );
  }

  static TextStyle mediumTextStyle({
    double fontSize = 16,
    Color color = Colors.black,
    TextDecoration decoration = TextDecoration.none,
  }) {
    return TextStyle(
      fontFamily: 'Tajawal',
      fontWeight: FontWeight.w500,
      fontSize: fontSize,
      color: color,
      decoration: decoration,
      decorationThickness: 30,

      decorationColor: color,
    );
  }

  static TextStyle boldTextStyle({
    double fontSize = 16,
    Color color = Colors.black,
    TextDecoration decoration = TextDecoration.none,
  }) {
    return TextStyle(
      fontFamily: 'Tajawal',
      fontWeight: FontWeight.bold,
      fontSize: fontSize,
      color: color,
      decoration: decoration,
      decorationThickness: 50,
      decorationColor: color,
    );
  }
}
