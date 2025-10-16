import 'package:flutter/cupertino.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets_manager.dart';
import '../../../../core/utils/color_manager.dart';
import '../../../../core/utils/strings_manager.dart';

PreferredSize filtrationAppBar(BuildContext context){

  Size size = MediaQuery.of(context).size;
  return PreferredSize(
    preferredSize: Size(size.width, size.height * .05),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Row(
          children: [
            ImageIcon(
              AssetImage(AssetsManager.close),
              color: ColorManager.darkBlueClr,
              size: 9,
            ),
            SizedBox(width: 20),
            Text(
              StringsManager.filtration,
              style: AppTextStyles.mediumTextStyle(
                color: ColorManager.darkGreyClr,
                fontSize: 24,
              ),
            ),
            Spacer(),
            Text(
              StringsManager.goBackDefault,
              style: AppTextStyles.boldTextStyle(
                color: ColorManager.cBlueColor,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}