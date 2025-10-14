import 'package:flutter/material.dart';

import 'category_item.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SizedBox(
        width: size.width,
        height: size.height * .05,
        child: ListView.separated(
          separatorBuilder: (context, index) => SizedBox(width: 8),

          scrollDirection: Axis.horizontal,

          itemCount: 7,
          itemBuilder: (context, index) {
            return CategoryItem();
          },
        ),
      ),
    );
  }
}
