import 'package:flutter/material.dart';
import 'package:otex_app/core/utils/strings_manager.dart';
import 'package:otex_app/features/home/presentation/screens/home_screen.dart';
import 'package:otex_app/features/main/presentation/provider/change_index.dart';
import 'package:otex_app/features/main/presentation/widgets/custom_bottom_nav_item.dart';
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
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (index) {
          provider.changeIndex(index);
        },
        items: [
          BottomNavigationBarItem(
            icon: CustomBottomNavItem(
              icon: AssetsManager.account,
              label: StringsManager.myAccount,
              index: 0,
              currIndex: provider.index,
            ),
            label: StringsManager.myAccount,
          ),
          BottomNavigationBarItem(
            icon: CustomBottomNavItem(
              icon: AssetsManager.dataSet,
              label: StringsManager.myAds,
              index: 1,
              currIndex: provider.index,
            ),
            label: StringsManager.myAds,
          ),

          BottomNavigationBarItem(
            icon: CustomBottomNavItem(
              icon: AssetsManager.addBox,
              label: StringsManager.addAd,
              index: 2,
              currIndex: provider.index,
            ),
            label: StringsManager.addAd,
          ),
          BottomNavigationBarItem(
            icon: CustomBottomNavItem(
              icon: AssetsManager.chat,
              label: StringsManager.chat,
              index: 3,
              currIndex: provider.index,
            ),
            label: StringsManager.chat,
          ),
          BottomNavigationBarItem(
            icon: CustomBottomNavItem(
              icon: AssetsManager.home,
              label: StringsManager.mainPage,
              index: 4,
              currIndex: provider.index,
            ),
            label: StringsManager.mainPage,
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
