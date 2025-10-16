import 'package:flutter/material.dart';

import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets_manager.dart';
import '../../../../core/utils/color_manager.dart';
import '../../../../core/utils/strings_manager.dart';
import '../../../filteration/presentation/screens/filteration_screen.dart';

PreferredSize homeAppBar(BuildContext context){
  Size size = MediaQuery.of(context).size;
  return PreferredSize(
    preferredSize: Size(size.width, size.height * .05),
    child: InkWell(
      onTap: () {
        Navigator.pushNamed(context, FiltrationScreen.routeName);
      },
      child: Row(
        children: [
          SizedBox(width: 16),
          ImageIcon(
            AssetImage(AssetsManager.arrowBack),
            color: ColorManager.darkGreyClr,
            size: 16,
          ),
          SizedBox(width: 8),
          Text(
            StringsManager.all,
            style: AppTextStyles.boldTextStyle(
              color: ColorManager.darkGreyClr,

            ),
          ),
          Spacer(),
          Text(
            StringsManager.discover,
            style: AppTextStyles.mediumTextStyle(
              color: ColorManager.darkBlueClr,
            ),
          ),
        ],
      ),
    ),
  );
}