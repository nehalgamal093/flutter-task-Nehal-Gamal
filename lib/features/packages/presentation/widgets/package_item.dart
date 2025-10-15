import 'package:flutter/material.dart';
import 'package:otex_app/core/utils/app_text_style.dart';
import 'package:otex_app/core/utils/assets_manager.dart';
import 'package:otex_app/features/packages/presentation/widgets/featrure_item.dart';

import '../../../../core/utils/color_manager.dart';

class PackageItem extends StatelessWidget {
  const PackageItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        border: Border.all(color: ColorManager.veryLightGrey, width: 1),
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Checkbox(
                value: true,
                activeColor: ColorManager.bBlueClr,
                onChanged: (val) {},
              ),
              Text(
                'بلس',
                style: AppTextStyles.boldTextStyle(
                  fontSize: 16,
                  color: ColorManager.bBlueClr,
                ),
              ),
              Spacer(),
              Text(
                '3,000ج.م',
                style: AppTextStyles.boldTextStyle(
                  fontSize: 16,
                  decoration: TextDecoration.overline,
                  color: ColorManager.orangeClr,
                ),
              ),
            ],
          ),
          Divider(color: ColorManager.veryLightGrey, indent: 10, endIndent: 10),
          Row(
            children: [
              Flexible(
                flex: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    FeatureItem(
                      icon: AssetsManager.acute,
                      desc: 'صلاحية الأعلان 30 يوم',
                    ),
                    FeatureItem(
                      icon: AssetsManager.rocket,
                      desc: 'رفع لأعلى القائمة كل 2 يوم',
                    ),
                    FeatureItem(
                      icon: AssetsManager.pin,
                      desc: 'تثبيت فى مقاول صحى',
                      sub: '( خلال ال48 ساعة القادمة )',
                    ),
                    FeatureItem(
                      icon: AssetsManager.globe,
                      desc: 'ظهور فى كل محافظات مصر',
                    ),
                    FeatureItem(
                      icon: AssetsManager.medal,
                      desc: 'أعلان مميز',
                      mediumFont: false,
                    ),
                    FeatureItem(
                      icon: AssetsManager.pin,
                      desc: 'تثبيت فى مقاول صحى فى الجهراء',
                    ),
                    FeatureItem(
                      icon: AssetsManager.pin,
                      desc: 'تثبيت فى مقاول صحى',
                      sub: '( خلال ال48 ساعة القادمة )',
                    ),
                  ],
                ),
              ),
              Flexible(
                flex: 1,
                child: Column(
                  children: [
                    Image.asset(AssetsManager.views),
                    Text(
                      'ضعف عدد المشاهدات',
                      style: AppTextStyles.regularTextStyle(
                        fontSize: 12,
                        color: ColorManager.darkBlueClr,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
