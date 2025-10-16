import 'package:flutter/material.dart';
import 'package:otex_app/core/utils/app_text_style.dart';
import 'package:otex_app/core/utils/assets_manager.dart';
import 'package:otex_app/core/utils/color_manager.dart';
import 'package:otex_app/core/utils/strings_manager.dart';
import 'package:otex_app/features/filteration/presentation/screens/filteration_screen.dart';
import 'package:otex_app/features/home/presentation/widgets/categories_list.dart';
import 'package:otex_app/features/home/presentation/widgets/free_delivery.dart';
import 'package:otex_app/features/home/presentation/widgets/products_list.dart';
import 'package:otex_app/features/home/presentation/widgets/sub_category_list.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/di.dart';
import '../cubit/products_cubit/products_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: Size(size.width, size.height * .05),
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, FiltrationScreen.routeName);
            },
            child: Row(
              children: [
                SizedBox(width: 16),
                ImageIcon(
                  AssetImage(AssetsManager.arrowBack),
                  color: ColorManager.darkGreyClr,
                  size: 16,
                ),
                SizedBox(width: 8),
                Text(
                  StringsManager.all,
                  style: AppTextStyles.boldTextStyle(
                    color: ColorManager.darkGreyClr,

                  ),
                ),
                Spacer(),
                Text(
                  StringsManager.discover,
                  style: AppTextStyles.mediumTextStyle(
                    color: ColorManager.darkBlueClr,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: BlocProvider(
        create: (context) => getIt<ProductsCubit>()..getProducts(),
        child: BlocBuilder<ProductsCubit, ProductsState>(
          builder: (context, state) {
            if (state is ProductsLoading) {
              return Center(child: CircularProgressIndicator());
            } else if (state is ProductsSuccess) {
              return CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(child: SizedBox(height: 15)),
                  SliverToBoxAdapter(child: CategoriesList()),
                  SliverToBoxAdapter(child: SizedBox(height: 33)),
                  SliverToBoxAdapter(child: SubCategoryList()),
                  SliverToBoxAdapter(child: FreeDelivery()),
                  SliverToBoxAdapter(child: SizedBox(height: 20)),
                  ProductsList(products: state.products),
                ],
              );
            } else {
              return Text('Error');
            }
          },
        ),
      ),
    );
  }
}
