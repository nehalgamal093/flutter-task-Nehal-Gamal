import 'package:flutter/material.dart';
import 'package:otex_app/features/filteration/presentation/widgets/selection_widget.dart';

import '../../../../core/utils/strings_manager.dart';

class PaymentSection extends StatelessWidget {
  const PaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 12,
      runSpacing: 12,
      children: [
        SelectionWidget(labelText: StringsManager.any),
        SelectionWidget(labelText: StringsManager.install),
        SelectionWidget(labelText: StringsManager.cash,isSelected: true,),
      ],
    );
  }
}
