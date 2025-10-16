import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otex_app/features/home/presentation/cubit/sub_categories_cubit/sub_categories_cubit.dart';
import 'package:otex_app/features/home/presentation/widgets/sub_category_item.dart';

import '../../../../core/di/di.dart';

class SubCategoryList extends StatelessWidget {
  const SubCategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context)=>getIt<SubCategoriesCubit>()..getSubCategories(),
      child: BlocBuilder<SubCategoriesCubit,SubCategoriesState>(
        builder: (context,state) {
          if(state is SubCategoriesLoading){
            return Center(child: CircularProgressIndicator());
          }else if(state is SubCategoriesSuccess){
            return Directionality(
              textDirection: TextDirection.rtl,
              child: SizedBox(
                width: size.width,
                height: size.height*.15,
                child: ListView.separated(
                  separatorBuilder: (context,index)=>SizedBox(width: 8,),
                  scrollDirection: Axis.horizontal,

                  itemCount:state.subCategories.length,
                  itemBuilder: (context, index) {
                    return SubCategoryItem(subCategory: state.subCategories[index],);
                  },
                ),
              ),
            );
          }else{
            return Text('Error');
          }

        }
      ),
    );
  }
}
