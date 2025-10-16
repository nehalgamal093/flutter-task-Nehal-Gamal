import 'dart:io';

import 'package:flutter/material.dart';
import 'package:otex_app/core/utils/app_text_style.dart';
import 'package:otex_app/core/utils/assets_manager.dart';
import 'package:otex_app/core/utils/color_manager.dart';
import 'package:otex_app/features/home/data/models/sub_category.dart';

class SubCategoryItem extends StatelessWidget {
  final SubCategory subCategory;
  const SubCategoryItem({super.key,required this.subCategory});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(flex: 2, child: Image.memory(subCategory.image,fit: BoxFit.cover,)),
        SizedBox(height: 8,),
        Flexible(
          flex: 1,
          child: Text(
            subCategory.name,
            style: AppTextStyles.regularTextStyle(
              fontSize: 12,
              color: ColorManager.darkBlueClr,
            ),
          ),
        ),
      ],
    );
  }
}
