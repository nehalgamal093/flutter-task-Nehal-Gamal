import 'package:flutter/material.dart';
import 'package:otex_app/core/utils/app_text_style.dart';
import 'package:otex_app/core/utils/color_manager.dart';
import 'package:otex_app/core/utils/strings_manager.dart';
import 'package:otex_app/features/filteration/presentation/screens/filteration_screen.dart';
import 'package:otex_app/features/home/presentation/screens/home_screen.dart';
import 'package:otex_app/features/main/presentation/provider/change_index.dart';
import 'package:otex_app/features/packages/presentation/screens/packages_screen.dart';
import 'package:provider/provider.dart';

import '../../../../core/utils/assets_manager.dart';

class MainScreen extends StatefulWidget {
  static const String routeName = '/';
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ChangeIndexProvider>(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: screens[provider.index],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: provider.index,
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
        onTap: (index) {
          provider.changeIndex(index);
        },
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

            ),
            label: StringsManager.chat,
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(AssetsManager.home),

            ),
            label: StringsManager.main,
          ),
        ],
      ),
    );
  }

  final List<Widget> screens = [
    PackagesScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
  ];
}
