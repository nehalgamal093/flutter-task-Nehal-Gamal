import 'package:flutter/material.dart';

import 'app_text_style.dart';
import 'color_manager.dart';

class AppTheme {
  static ThemeData themeData() {
    return ThemeData(

      appBarTheme: AppBarThemeData(backgroundColor: ColorManager.whiteClr, scrolledUnderElevation: 0,),
      scaffoldBackgroundColor: ColorManager.whiteClr,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: ColorManager.whiteClr,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: ColorManager.darkBlueClr,
        unselectedItemColor: ColorManager.lightGreyClr,
        unselectedLabelStyle: AppTextStyles.mediumTextStyle(
          fontSize: 12,
          color: ColorManager.darkBlueClr,
        ),
        selectedLabelStyle: AppTextStyles.mediumTextStyle(
          fontSize: 12,
          color: ColorManager.darkBlueClr,
        ),
      ),
    );
  }
}
