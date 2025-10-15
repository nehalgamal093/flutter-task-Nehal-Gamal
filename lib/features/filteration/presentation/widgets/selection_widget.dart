import 'package:flutter/material.dart';
import 'package:otex_app/core/utils/app_text_style.dart';
import 'package:otex_app/core/utils/color_manager.dart';

class SelectionWidget extends StatelessWidget {
  final String labelText;
  final bool isSelected;
  const SelectionWidget({
    super.key,
    required this.labelText,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(13),
      decoration: BoxDecoration(
        color: isSelected ? ColorManager.lightBlueClr : ColorManager.whiteClr,
        border: Border.all(
          color: isSelected
              ? ColorManager.cBlueColor
              : ColorManager.veryLightGrey,
          width: isSelected ? 2 : 1,
        ),

        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: Text(
        labelText,
        style: AppTextStyles.mediumTextStyle(
          fontSize: 14,
          color: ColorManager.lightGreyClr,
        ),
      ),
    );
  }
}
