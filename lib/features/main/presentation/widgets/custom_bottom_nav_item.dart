import 'package:flutter/material.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/color_manager.dart';

class CustomBottomNavItem extends StatelessWidget {
  final String icon;
  final String label;
  final int index;
  final int currIndex;
  const CustomBottomNavItem({
    super.key,
    required this.icon,
    required this.label,
    required this.index,
    required this.currIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.symmetric(horizontal: 2),
      decoration: index == currIndex
          ? BoxDecoration(
              border: Border(
                bottom: BorderSide(color: ColorManager.darkBlueClr, width: 1.0),
              ),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(5),
                bottomLeft: Radius.circular(5),
              ),
            )
          : null,
      child: Column(
        children: [
          ImageIcon(
            AssetImage(icon),
            color: index == 2
                ? ColorManager.blueClr
                : index == currIndex
                ? ColorManager.darkBlueClr
                : ColorManager.lightGreyClr,
          ),
          Text(
            label,
            style: AppTextStyles.mediumTextStyle(
              fontSize: 12,
              color: index == 2
                  ? ColorManager.blueClr
                  : index == currIndex
                  ? ColorManager.darkBlueClr
                  : ColorManager.lightGreyClr,
            ),
          ),
        ],
      ),
    );
  }
}
