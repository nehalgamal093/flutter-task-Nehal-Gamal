import 'package:injectable/injectable.dart';
import 'package:otex_app/features/home/data/models/sub_category.dart';
import 'package:otex_app/features/home/data/remote_ds/sub_category_remote_ds.dart';

@injectable
class GetSubCategoriesUseCase {
  SubCategoryRemoteDs subCategoryRemoteDs;
  GetSubCategoriesUseCase(this.subCategoryRemoteDs);
  Future<List<SubCategory>> getSubCategories() =>
      subCategoryRemoteDs.getSubCategories();
}
