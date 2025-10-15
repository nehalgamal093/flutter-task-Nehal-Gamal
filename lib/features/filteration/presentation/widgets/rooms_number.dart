import 'package:flutter/material.dart';
import 'package:otex_app/core/utils/strings_manager.dart';
import 'package:otex_app/features/filteration/presentation/widgets/selection_widget.dart';

class RoomsNumber extends StatelessWidget {
  const RoomsNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 12,
      runSpacing: 12,
      children: [
        SelectionWidget(labelText: StringsManager.fourRooms),

        SelectionWidget(labelText: StringsManager.fiveRooms,isSelected: true,),

        SelectionWidget(labelText: StringsManager.all),

        SelectionWidget(labelText: StringsManager.twoRooms),
        SelectionWidget(labelText: StringsManager.threeRooms),
      ],
    );
  }
}
