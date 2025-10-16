import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otex_app/core/di/di.dart';
import 'package:otex_app/core/utils/strings_manager.dart';
import 'package:otex_app/features/home/presentation/cubit/categories_cubit/categories_cubit.dart';

import 'category_item.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) => getIt<CategoriesCubit>()..getCategories(),
      child: BlocBuilder<CategoriesCubit, CategoriesState>(
        builder: (context, state) {
          if (state is CategoriesLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (state is CategoriesSuccess) {
            return Directionality(
              textDirection: TextDirection.rtl,
              child: SizedBox(
                width: size.width,
                height: size.height * .05,
                child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(width: 8),

                  scrollDirection: Axis.horizontal,

                  itemCount: state.categories.length,
                  itemBuilder: (context, index) {
                    return CategoryItem(category: state.categories[index],selected: index==0,);
                  },
                ),
              ),
            );
          } else {
            return Text(StringsManager.error);
          }
        },
      ),
    );
  }
}
