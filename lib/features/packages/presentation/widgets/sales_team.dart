import 'package:flutter/material.dart';
import 'package:otex_app/core/utils/app_text_style.dart';
import 'package:otex_app/core/utils/color_manager.dart';
import 'package:otex_app/core/utils/strings_manager.dart';

class SalesTeam extends StatelessWidget {
  const SalesTeam({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: ColorManager.bGrey,
        border: Border.all(color: ColorManager.veryLightGrey, width: 1),
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              StringsManager.packageSpecialForYou,
              style: AppTextStyles.mediumTextStyle(
                fontSize: 14,
                color: ColorManager.darkBlueClr,
              ),
            ),
            Text(
              StringsManager.contactUs,
              style: AppTextStyles.regularTextStyle(
                fontSize: 12,
                color: ColorManager.darkBlueClr,
              ),
            ),
            Text(
              StringsManager.salesTeam,
              style: AppTextStyles.boldTextStyle(
                fontSize: 16,
                color: ColorManager.cBlueColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
