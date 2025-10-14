import 'package:flutter/material.dart';
import 'package:otex_app/core/utils/app_text_style.dart';
import 'package:otex_app/core/utils/assets_manager.dart';
import 'package:otex_app/core/utils/color_manager.dart';

class SubCategoryItem extends StatelessWidget {
  const SubCategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(flex: 1, child: Image.asset(AssetsManager.meanWear,fit: BoxFit.cover,)),
        SizedBox(height: 8,),
        Flexible(
          flex: 1,
          child: Text(
            'موضة رجالي',
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
