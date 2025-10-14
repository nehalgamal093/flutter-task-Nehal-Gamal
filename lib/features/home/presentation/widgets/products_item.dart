import 'package:flutter/material.dart';
import 'package:otex_app/core/utils/app_text_style.dart';
import 'package:otex_app/core/utils/assets_manager.dart';
import 'package:otex_app/core/utils/color_manager.dart';
import 'package:otex_app/core/utils/strings_manager.dart';

class ProductsItem extends StatelessWidget {
  const ProductsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Container(

        decoration: BoxDecoration(
          border: Border.all(color: ColorManager.veryLightGrey, width: 1),
          borderRadius: BorderRadius.all(Radius.circular(4)),
        ),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            children: [
              Image.asset(AssetsManager.shirt),
              SizedBox(height: 8),

             Container(
               padding: const EdgeInsets.symmetric(horizontal: 8),
               child: Column(
                 children: [
                   Row(
                     children: [
                       Flexible(
                         flex: 1,
                         child: Text(
                           ' جاكيت من الصوف مناسب',
                           style: AppTextStyles.mediumTextStyle(
                             fontSize: 14,
                             color: ColorManager.darkBlueClr,
                           ),
                           overflow: TextOverflow.ellipsis,
                         ),
                       ),
                       Image.asset(AssetsManager.offer, width: 20),
                     ],
                   ),

                   SizedBox(height: 13),
                   Row(
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       Text(
                         '32,000,000جم',
                         style: AppTextStyles.mediumTextStyle(
                           fontSize: 14,
                           color: ColorManager.redClr,
                         ),
                         overflow: TextOverflow.ellipsis,
                       ),
                       Text('/'),
                       Flexible(
                         flex: 1,
                         child: Text(
                           '60,000,000',
                           style: AppTextStyles.mediumTextStyle(
                             fontSize: 12,
                             color: ColorManager.greyClr,
                             decoration: TextDecoration.lineThrough,
                           ),
                           overflow: TextOverflow.ellipsis,
                         ),
                       ),
                       SizedBox(width: 4),
                       ImageIcon(AssetImage(AssetsManager.favorite)),
                     ],
                   ),

                   Row(
                     children: [
                       ImageIcon(AssetImage(AssetsManager.fire), size: 8),
                       Text(
                         StringsManager.sold,
                         style: AppTextStyles.regularTextStyle(
                           fontSize: 10,
                           color: ColorManager.lightGreyClr,
                         ),
                       ),
                       Text(
                         '3.3k+',
                         style: AppTextStyles.regularTextStyle(
                           fontSize: 10,
                           color: ColorManager.lightGreyClr,
                         ),
                       ),
                     ],
                   ),
                   SizedBox(height:32),
                   Row(
                     children: [
                       Image.asset(AssetsManager.company, width: 26),
                       Spacer(),

                       Container(
                         padding: const EdgeInsets.all(2),
                         decoration: BoxDecoration(
                           border: Border.all(color: ColorManager.veryLightGrey),
                         ),
                         child: Image.asset(AssetsManager.cart, width: 15),
                       ),
                       SizedBox(width: 15),
                       Image.asset(AssetsManager.logo, width: 15),
                     ],
                   ),
                 ],
               ),
             )
            ],
          ),
        ),
      ),
    );
  }
}
