import 'package:flutter/material.dart';
import 'package:otex_app/features/home/presentation/widgets/sub_category_item.dart';

class SubCategoryList extends StatelessWidget {
  const SubCategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SizedBox(
        width: size.width,
        height: size.height*.15,
        child: ListView.separated(
          separatorBuilder: (context,index)=>SizedBox(width: 8,),
          scrollDirection: Axis.horizontal,

          itemCount: 7,
          itemBuilder: (context, index) {
            return SubCategoryItem();
          },
        ),
      ),
    );
  }
}
