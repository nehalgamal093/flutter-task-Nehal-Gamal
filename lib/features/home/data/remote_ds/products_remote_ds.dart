import '../models/product.dart';

abstract class ProductsRemoteDS{
  Future<void> openProductsDB();
  Future<void> insertProduct();
  Future<List<Product>> getProducts();
}