import 'package:flutter/material.dart';
import 'package:otex_app/features/home/data/models/product.dart';
import 'package:otex_app/features/home/presentation/widgets/products_item.dart';

class ProductsList extends StatelessWidget {
  final List<Product> products;
  const ProductsList({super.key,required this.products});

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate(childCount: products.length, (context, index) {

        return ProductsItem(product: products[index],);
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
