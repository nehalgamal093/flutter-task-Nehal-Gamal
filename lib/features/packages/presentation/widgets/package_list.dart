import 'package:flutter/material.dart';
import 'package:otex_app/features/packages/presentation/widgets/package_item.dart';

class PackageList extends StatelessWidget {
  const PackageList({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: ListView.separated(
        itemBuilder: (context, index) {
          return PackageItem();
        },
        separatorBuilder: (context, index) => SizedBox(height: 24),
        itemCount: 4,
      ),
    );
  }
}
