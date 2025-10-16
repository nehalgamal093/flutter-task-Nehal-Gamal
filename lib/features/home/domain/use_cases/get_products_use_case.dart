import 'package:injectable/injectable.dart';
import 'package:otex_app/features/home/data/remote_ds/products_remote_ds.dart';

import '../../data/models/product.dart';

@injectable
class GetProductsUseCase{
  ProductsRemoteDS productsRemoteDS;
  GetProductsUseCase(this.productsRemoteDS);
  Future<List<Product>> getProducts()=>productsRemoteDS.getProducts();
}