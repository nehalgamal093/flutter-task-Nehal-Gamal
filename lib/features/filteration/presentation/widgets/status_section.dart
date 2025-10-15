import 'package:flutter/material.dart';
import 'package:otex_app/features/filteration/presentation/widgets/selection_widget.dart';

import '../../../../core/utils/strings_manager.dart';

class StatusSection extends StatelessWidget {
  const StatusSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 12,
      runSpacing: 12,
      children: [
        SelectionWidget(labelText: StringsManager.any),
        SelectionWidget(labelText: StringsManager.ready,isSelected: true,),
        SelectionWidget(labelText: StringsManager.underConstruction),
      ],
    );
  }
}
