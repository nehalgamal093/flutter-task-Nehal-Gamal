import 'package:flutter/material.dart';
import 'package:otex_app/core/utils/app_text_style.dart';
import 'package:otex_app/core/utils/assets_manager.dart';
import 'package:otex_app/core/utils/color_manager.dart';
import 'package:otex_app/core/utils/strings_manager.dart';

class FreeDelivery extends StatelessWidget {
  const FreeDelivery({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 9),
        decoration: BoxDecoration(
          color: ColorManager.lightOrangeClr,
          borderRadius: BorderRadius.all(Radius.circular(4)),
        ),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Row(
            children: [
              ImageIcon(
                AssetImage(AssetsManager.check),
                color: ColorManager.greenClr,
              ),
              Text(
                StringsManager.freeDelivery,
                style: AppTextStyles.regularTextStyle(
                  fontSize: 12,
                  color: ColorManager.greenClr,
                ),
              ),
              Spacer(),
              Text(
                StringsManager.forAnyOffer,
                style: AppTextStyles.regularTextStyle(
                  fontSize: 10,
                  color: ColorManager.darkBlueClr,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
