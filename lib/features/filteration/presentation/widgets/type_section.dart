import 'package:flutter/material.dart';
import 'package:otex_app/core/utils/strings_manager.dart';
import 'package:otex_app/features/filteration/presentation/widgets/selection_widget.dart';

class TypeSection extends StatelessWidget {
  const TypeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20,
      runSpacing: 12,
      children: [
        SelectionWidget(labelText: StringsManager.all,isSelected: true,),
        SelectionWidget(labelText: StringsManager.twinHouse),
        SelectionWidget(labelText: StringsManager.villa),
        SelectionWidget(labelText: StringsManager.townHouse),
      ],
    );
  }
}
