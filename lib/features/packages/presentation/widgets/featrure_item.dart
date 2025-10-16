import 'package:flutter/material.dart';
import 'package:otex_app/core/utils/app_text_style.dart';
import 'package:otex_app/core/utils/color_manager.dart';

class FeatureItem extends StatelessWidget {
  final String icon;
  final String desc;
  final bool mediumFont;
  final String sub;
  const FeatureItem({
    super.key,
    required this.icon,
    required this.desc,
    this.mediumFont = true,
    this.sub = '',
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
 crossAxisAlignment: CrossAxisAlignment.start
        ,
        children: [
          ImageIcon(AssetImage(icon), color: ColorManager.darkBlueClr),
          SizedBox(width: 8,),
          Column(
            children: [
              Text(
                desc,
                style: mediumFont
                    ? AppTextStyles.mediumTextStyle(
                  fontSize: 14,
                  color: ColorManager.darkBlueClr,
                )
                    : AppTextStyles.regularTextStyle(
                  fontSize: 14,
                  color: ColorManager.darkBlueClr,
                ),
              ),
              Text(
                sub,
                style: AppTextStyles.mediumTextStyle(
                  fontSize: 14,
                  color: ColorManager.redClr,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
