import 'package:flutter/material.dart';
import 'package:otex_app/core/utils/app_text_style.dart';
import 'package:otex_app/core/utils/color_manager.dart';
import 'package:otex_app/core/utils/strings_manager.dart';
import 'package:otex_app/features/home/presentation/screens/home_screen.dart';

import '../../../../core/utils/assets_manager.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: HomeScreen(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 4,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: ColorManager.darkBlueClr,
        unselectedItemColor: ColorManager.lightGreyClr,

        unselectedLabelStyle: AppTextStyles.mediumTextStyle(
          fontSize: 12,
          color: ColorManager.darkBlueClr,
        ),
        selectedLabelStyle: AppTextStyles.mediumTextStyle(
          fontSize: 12,
          color: ColorManager.darkBlueClr,
        ),
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AssetsManager.account)),
            label: StringsManager.myAccount,
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AssetsManager.dataSet)),
            label: StringsManager.myAds,
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(AssetsManager.addBox),
              color: ColorManager.blueClr,
            ),
            label: StringsManager.addAd,
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(AssetsManager.chat),
              color: ColorManager.greyClr,
            ),
            label: StringsManager.chat,
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AssetsManager.home)),
            label: StringsManager.main,
          ),
        ],
      ),
    );
  }
}
