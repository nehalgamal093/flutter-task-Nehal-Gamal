import 'package:flutter/material.dart';
import 'package:otex_app/core/utils/app_text_style.dart';
import 'package:otex_app/core/utils/assets_manager.dart';
import 'package:otex_app/core/utils/color_manager.dart';
import 'package:otex_app/core/utils/strings_manager.dart';

class RealEstate extends StatelessWidget {
  const RealEstate({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ImageIcon(AssetImage(AssetsManager.hand,),color: ColorManager.orangeClr,),
      title: Text(StringsManager.realEstate,style: AppTextStyles.mediumTextStyle(fontSize: 14,color:ColorManager.darkBlueClr),),
      subtitle: Text(StringsManager.villasForSale,style: AppTextStyles.regularTextStyle(fontSize: 12,color: ColorManager.darkGreyClr),),
      trailing: Text(StringsManager.change,style: AppTextStyles.boldTextStyle(fontSize: 14,color: ColorManager.bBlueClr),),

    );
  }
}
