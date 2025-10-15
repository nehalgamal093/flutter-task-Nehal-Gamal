import 'package:flutter/material.dart';

import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets_manager.dart';
import '../../../../core/utils/color_manager.dart';
import '../../../../core/utils/strings_manager.dart';

class LocationSection extends StatelessWidget {
  const LocationSection({super.key});

  @override
  Widget build(BuildContext context) {
     return ListTile(
      leading: ImageIcon(AssetImage(AssetsManager.location,),color: ColorManager.darkBlueClr,),
      title: Text(StringsManager.location,style: AppTextStyles.mediumTextStyle(fontSize: 14,color:ColorManager.darkBlueClr),),
      subtitle: Text(StringsManager.villasForSale,style: AppTextStyles.regularTextStyle(fontSize: 12,color: ColorManager.darkGreyClr),),
      trailing: ImageIcon(AssetImage(AssetsManager.chevronArrowBackward,),color: ColorManager.darkBlueClr,),

    );;
  }
}
