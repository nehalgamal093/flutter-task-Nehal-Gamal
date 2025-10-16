import 'package:flutter/material.dart';
import 'package:otex_app/core/utils/strings_manager.dart';

import 'custom_text_field.dart';

class PriceSection extends StatelessWidget {
  const PriceSection({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(

      height: size.height*.10,
      width: size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
              flex: 1,
              child: CustomTextField(hintText: StringsManager.lowPrice,)),
          SizedBox(width: 12),
          Flexible(
              flex: 1,
              child: CustomTextField(hintText: StringsManager.highPrice,)),
        ],
      ),
    );
  }
}
