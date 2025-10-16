import 'package:flutter/cupertino.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets_manager.dart';
import '../../../../core/utils/color_manager.dart';
import '../../../../core/utils/strings_manager.dart';

PreferredSize packagesAppBar(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  return PreferredSize(
    preferredSize: Size(size.width, size.height * .05),
    child: Directionality(
      textDirection: TextDirection.rtl,
      child: Column(
        children: [
          Row(
            children: [
              ImageIcon(AssetImage(AssetsManager.arrow), size: 24),
              SizedBox(width: 12),
              Text(
                StringsManager.choosePackage,
                style: AppTextStyles.mediumTextStyle(
                  fontSize: 24,
                  color: ColorManager.darkBlueClr,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Text(
                  StringsManager.chooseSpecialPackages,
                  style: AppTextStyles.regularTextStyle(
                    fontSize: 14,
                    color: ColorManager.lightGreyClr,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
