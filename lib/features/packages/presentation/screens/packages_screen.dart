import 'package:flutter/material.dart';
import 'package:otex_app/core/utils/app_text_style.dart';
import 'package:otex_app/core/utils/assets_manager.dart';
import 'package:otex_app/core/utils/color_manager.dart';
import 'package:otex_app/core/utils/strings_manager.dart';
import 'package:otex_app/features/packages/presentation/widgets/package_list.dart';

class PackagesScreen extends StatelessWidget {

  const PackagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: Size(size.width, size.height * .05),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
              children: [
                Row(
                  children: [
                    ImageIcon(AssetImage(AssetsManager.arrow), size: 24),
                    SizedBox(width: 12),
                    Text(
                      StringsManager.choosePackage,
                      style: AppTextStyles.mediumTextStyle(
                        fontSize: 24,
                        color: ColorManager.darkBlueClr,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Text(
                        StringsManager.chooseSpecialPackages,
                        style: AppTextStyles.regularTextStyle(
                          fontSize: 14,
                          color: ColorManager.lightGreyClr,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16),
        child:PackageList(),
      ),
    );
  }
}
