import 'package:flutter/material.dart';
import 'package:otex_app/core/utils/color_manager.dart';
import 'package:otex_app/features/filteration/presentation/widgets/filtration_app_bar.dart';
import 'package:otex_app/features/filteration/presentation/widgets/location_section.dart';
import 'package:otex_app/features/filteration/presentation/widgets/main_label.dart';
import 'package:otex_app/features/filteration/presentation/widgets/monthly_installments.dart';
import 'package:otex_app/features/filteration/presentation/widgets/payment_section.dart';
import 'package:otex_app/features/filteration/presentation/widgets/price_section.dart';
import 'package:otex_app/features/filteration/presentation/widgets/real_estate.dart';
import 'package:otex_app/features/filteration/presentation/widgets/rooms_number.dart';
import 'package:otex_app/features/filteration/presentation/widgets/status_section.dart';
import 'package:otex_app/features/filteration/presentation/widgets/type_section.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/strings_manager.dart';

class FiltrationScreen extends StatelessWidget {
  const FiltrationScreen({super.key});
  static const String routeName = '/filtration';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(bottom: filtrationAppBar(context)),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: ListView(
            children: [
              SizedBox(height: 30),
              MainLabel(text: StringsManager.category),
              SizedBox(height: 12),
              RealEstate(),
              Divider(),
              LocationSection(),
              Divider(),
              SizedBox(height: 20),
              MainLabel(text: StringsManager.monthlyInstall),
              MonthlyInstallments(),
              MainLabel(text: StringsManager.type),
              SizedBox(height: 12),
              TypeSection(),
              SizedBox(height: 20),
              MainLabel(text: StringsManager.numberOfRooms),
              SizedBox(height: 12),
              RoomsNumber(),
              SizedBox(height: 20),
              MainLabel(text: StringsManager.price),
              SizedBox(height: 12),
              PriceSection(),
              SizedBox(height: 20),
              MainLabel(text: StringsManager.paymentMethod),
              SizedBox(height: 12),
              PaymentSection(),
              SizedBox(height: 20),
              MainLabel(text: StringsManager.status),
              SizedBox(height: 12),
              StatusSection(),
              SizedBox(height: 81),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(32)),
                    color: ColorManager.cBlueColor,
                  ),
                  child: Center(
                    child: Text(
                      StringsManager.watchResults,
                      style: AppTextStyles.boldTextStyle(
                        fontSize: 16,
                        color: ColorManager.whiteClr,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
