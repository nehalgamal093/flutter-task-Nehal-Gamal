import 'package:flutter/material.dart';
import 'package:otex_app/features/packages/presentation/widgets/package_list.dart';
import 'package:otex_app/features/packages/presentation/widgets/packages_app_bar.dart';

class PackagesScreen extends StatelessWidget {
  const PackagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(bottom: packagesAppBar(context)),
      body: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: PackageList(),
      ),
    );
  }
}
