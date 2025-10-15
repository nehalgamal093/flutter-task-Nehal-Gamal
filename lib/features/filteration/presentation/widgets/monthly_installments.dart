import 'package:flutter/material.dart';
import 'package:otex_app/features/filteration/presentation/widgets/custom_text_field.dart';

class MonthlyInstallments extends StatelessWidget {
  const MonthlyInstallments({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      height: size.height*.10,
      width: size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           Flexible(
               flex: 1,
               child: CustomTextField()),
          SizedBox(width: 12),
          Flexible(
              flex: 1,
              child: CustomTextField()),
        ],
      ),
    );
  }
}
