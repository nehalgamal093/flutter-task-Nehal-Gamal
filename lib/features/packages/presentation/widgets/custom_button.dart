import 'package:flutter/material.dart';
import 'package:otex_app/core/utils/app_text_style.dart';
import 'package:otex_app/core/utils/assets_manager.dart';
import 'package:otex_app/core/utils/color_manager.dart';
import 'package:otex_app/core/utils/strings_manager.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(32)),
        color: ColorManager.cBlueColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ImageIcon(
            AssetImage(AssetsManager.arrowBack),
            size: 16,
            color: ColorManager.whiteClr,
          ),
          SizedBox(width: 8,),
          Text(
            StringsManager.next,
            style: AppTextStyles.boldTextStyle(
              fontSize: 16,
              color: ColorManager.whiteClr,
            ),
          ),
        ],
      ),
    );
  }
}
