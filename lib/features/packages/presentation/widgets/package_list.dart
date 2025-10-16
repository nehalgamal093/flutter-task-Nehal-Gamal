import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otex_app/core/utils/strings_manager.dart';
import 'package:otex_app/features/packages/presentation/cubit/packages_cubit/packages_cubit.dart';
import 'package:otex_app/features/packages/presentation/widgets/package_item.dart';
import 'package:otex_app/features/packages/presentation/widgets/sales_team.dart';
import '../../../../core/di/di.dart';
import 'custom_button.dart';

class PackageList extends StatelessWidget {
  const PackageList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PackagesCubit>()..getPackages(),
      child: BlocBuilder<PackagesCubit, PackagesState>(
        builder: (context, state) {
          if (state is PackagesLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (state is PackagesSuccess) {
            return CustomScrollView(
              slivers: [
                SliverToBoxAdapter(child: SizedBox(height: 20)),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    childCount: state.packages.length,
                    (context, index) {
                      return Directionality(
                        textDirection: TextDirection.rtl,
                        child: PackageItem(package: state.packages[index]),
                      );
                    },
                  ),
                ),
                SliverToBoxAdapter(child: SizedBox(height: 32)),
                SliverToBoxAdapter(child: SalesTeam()),
                SliverToBoxAdapter(child: SizedBox(height: 50)),

                SliverToBoxAdapter(child: Divider()),
                SliverToBoxAdapter(child: CustomButton()),
                SliverToBoxAdapter(child: SizedBox(height: 20)),
              ],
            );
          } else {
            return Text(StringsManager.error);
          }
        },
      ),
    );
  }
}
