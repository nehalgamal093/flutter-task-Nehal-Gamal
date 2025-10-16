import 'package:injectable/injectable.dart';
import 'package:otex_app/features/home/data/models/category.dart';
import 'package:otex_app/features/home/data/remote_ds/categories_remote_ds.dart';

@injectable
class GetCategoriesUseCase {
  CategoriesRemoteDs categoriesRemoteDs;
  GetCategoriesUseCase(this.categoriesRemoteDs);
  Future<List<Category>> getCategories() => categoriesRemoteDs.getCategories();
}
