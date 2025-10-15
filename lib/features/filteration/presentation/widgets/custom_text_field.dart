import 'package:flutter/material.dart';
import 'package:otex_app/core/utils/app_text_style.dart';

import '../../../../core/utils/color_manager.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  const CustomTextField({super.key,this.hintText=''});

  @override
  Widget build(BuildContext context) {
    return TextField(

      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: AppTextStyles.mediumTextStyle(fontSize: 14,color: ColorManager.darkGreyClr),
        border:  OutlineInputBorder(
            borderSide: BorderSide( color: ColorManager.veryLightGrey, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(8))
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide( color: ColorManager.veryLightGrey, width: 1),
          borderRadius: BorderRadius.all(Radius.circular(8))
        )
      ),
    );
  }
}
