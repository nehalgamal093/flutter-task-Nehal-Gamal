import 'package:flutter/material.dart';
import 'package:otex_app/core/utils/app_text_style.dart';
import 'package:otex_app/core/utils/color_manager.dart';

class MainLabel extends StatelessWidget {
  final String text;
  const MainLabel({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppTextStyles.mediumTextStyle(color: ColorManager.darkGreyClr),
    );
  }
}
