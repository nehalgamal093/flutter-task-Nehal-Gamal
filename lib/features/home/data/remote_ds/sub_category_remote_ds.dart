import 'package:otex_app/features/home/data/models/sub_category.dart';
import 'package:sqflite/sqlite_api.dart';

abstract class SubCategoryRemoteDs{
  Future<Database> openSubCategoryDB();
  Future<void> insertSubCategories();
  Future<List<SubCategory>> getSubCategories();
}