import 'package:flutter/material.dart';
import 'package:otex_app/core/utils/app_text_style.dart';
import 'package:otex_app/core/utils/color_manager.dart';
import 'package:otex_app/features/home/data/models/category.dart';

class CategoryItem extends StatelessWidget {
  final Category category;
  final bool selected;
  const CategoryItem({
    super.key,
    required this.category,
    required this.selected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: selected ? ColorManager.lightOrangeClr : ColorManager.whiteClr,
        border: Border.all(color: ColorManager.veryLightGrey, width: 1),
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Text(
          category.name,
          style: AppTextStyles.mediumTextStyle(
            fontSize: 14,

            color: selected ? ColorManager.orangeClr : ColorManager.greyClr,
          ),
        ),
      ),
    );
  }
}
