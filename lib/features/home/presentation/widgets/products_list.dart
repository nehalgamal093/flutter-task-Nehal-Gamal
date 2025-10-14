import 'package:flutter/material.dart';
import 'package:otex_app/features/home/presentation/widgets/products_item.dart';

class ProductsList extends StatelessWidget {
  const ProductsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate(childCount: 8, (context, index) {
        return ProductsItem();
      }),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 160/320,
         mainAxisSpacing: 20,
        // crossAxisSpacing: 12,
        crossAxisCount: 2,
      ),
    );
  }
}
