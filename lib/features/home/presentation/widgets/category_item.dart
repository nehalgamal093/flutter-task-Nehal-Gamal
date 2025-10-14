import 'package:flutter/material.dart';
import 'package:otex_app/core/utils/app_text_style.dart';
import 'package:otex_app/core/utils/color_manager.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: ColorManager.veryLightGrey, width: 1),
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Text(
          'اكسسوارات',
          style: AppTextStyles.mediumTextStyle(
            fontSize: 14,
            color: ColorManager.orangeClr,
          ),
        ),
      ),
    );
  }
}
