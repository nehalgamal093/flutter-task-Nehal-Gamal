import 'package:flutter/material.dart';
import 'package:otex_app/core/utils/app_text_style.dart';
import 'package:otex_app/core/utils/assets_manager.dart';
import 'package:otex_app/core/utils/strings_manager.dart';
import 'package:otex_app/features/packages/presentation/widgets/featrure_item.dart';
import '../../../../core/utils/color_manager.dart';
import '../../data/models/package.dart';

class PackageItem extends StatelessWidget {
  final Package package;
  const PackageItem({super.key, required this.package});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 20),

          padding: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            border: Border.all(color: ColorManager.veryLightGrey, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(4)),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Checkbox(
                    value: package.selected == 1,
                    activeColor: ColorManager.bBlueClr,
                    onChanged: (val) {},
                  ),
                  Text(
                    package.name,
                    style: AppTextStyles.boldTextStyle(
                      fontSize: 16,
                      color:package.name == StringsManager.main?ColorManager.darkBlueClr: ColorManager.bBlueClr,
                    ),
                  ),
                  Spacer(),
                  Text(
                    package.price,

                    style: AppTextStyles.boldTextStyle(
                      fontSize: 16,
                      decoration: TextDecoration.underline,
                      color: ColorManager.orangeClr,
                    ),
                  ),
                  Text(
                    StringsManager.g,

                    style: AppTextStyles.boldTextStyle(
                      fontSize: 16,
                      color: ColorManager.orangeClr,
                    ),
                  ),
                  Text(
                    StringsManager.point,

                    style: AppTextStyles.boldTextStyle(
                      fontSize: 16,
                      decoration: TextDecoration.underline,
                      color: ColorManager.orangeClr,
                    ),
                  ),
                  Text(
                    StringsManager.m,

                    style: AppTextStyles.boldTextStyle(
                      fontSize: 16,
                      color: ColorManager.orangeClr,
                    ),
                  ),
                ],
              ),
              Divider(
                color: ColorManager.veryLightGrey,
                indent: 10,
                endIndent: 10,
              ),
              Row(
                children: [
                  Flexible(
                    flex: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        package.expiration == 1
                            ? FeatureItem(
                                icon: AssetsManager.acute,
                                desc: StringsManager.expiration,
                              )
                            : SizedBox(),
                        package.upList == 1
                            ? FeatureItem(
                                icon: AssetsManager.rocket,
                                desc: StringsManager.upList,
                              )
                            : SizedBox(),
                        package.fixAgent == 1
                            ? FeatureItem(
                                icon: AssetsManager.pin,
                                desc: StringsManager.fixAgent,
                                sub: StringsManager.next48Hour,
                              )
                            : SizedBox(),
                        package.allEgypt == 1
                            ? FeatureItem(
                                icon: AssetsManager.globe,
                                desc: StringsManager.allEgypt,
                              )
                            : SizedBox(),
                        package.specialAd == 1
                            ? FeatureItem(
                                icon: AssetsManager.medal,
                                desc: StringsManager.specialAd,
                                mediumFont: false,
                              )
                            : SizedBox(),
                        package.fixAgentInG == 1
                            ? FeatureItem(
                                icon: AssetsManager.pin,
                                desc: StringsManager.fixAgentInG,
                              )
                            : SizedBox(),
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Column(
                      children: [
                        package.name == StringsManager.main
                            ? SizedBox()
                            : Image.memory(package.image),
                        package.name == StringsManager.main
                            ? SizedBox()
                            : Text(
                          textAlign: TextAlign.center,
                                StringsManager.doubleViews,
                                style: AppTextStyles.regularTextStyle(
                                  fontSize: 12,
                                  color: ColorManager.darkBlueClr,
                                  decoration: TextDecoration.underline
                                ),
                              ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        package.name == StringsManager.plus
            ? Image.asset(AssetsManager.highValue, height: 31)
            : package.name == StringsManager.superr
            ? Image.asset(AssetsManager.highViews, height: 31)
            : SizedBox(),
      ],
    );
  }
}
