import 'package:flutter/material.dart';

class AppTextStyles {

  static TextStyle regularTextStyle({double fontSize = 16,Color color = Colors.black}){
    return TextStyle(
        fontFamily: 'Tajawal',
        fontWeight: FontWeight.normal,
        fontSize: fontSize,
        color:color
    );
  }

  static TextStyle mediumTextStyle({double fontSize = 16,Color color = Colors.black,TextDecoration decoration=TextDecoration.none}){
    return TextStyle(
      fontFamily: 'Tajawal',
      fontWeight: FontWeight.w500,
      fontSize: fontSize,
      color:color
    );
  }
 static TextStyle boldTextStyle({double fontSize = 16,Color color = Colors.black}){
    return TextStyle(
      fontFamily: 'Tajawal',
      fontWeight: FontWeight.w700,
      fontSize: fontSize,
        color:color
    );
  }
}