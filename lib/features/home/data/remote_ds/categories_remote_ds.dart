import 'package:otex_app/features/home/data/models/category.dart';
import 'package:sqflite/sqflite.dart';

abstract class CategoriesRemoteDs{
  Future<Database> openCategoriesDB();
  Future<void> insertCategories();
  Future<List<Category>> getCategories();
}