import 'package:injectable/injectable.dart';
import 'package:otex_app/features/home/data/models/category.dart';
import 'package:otex_app/features/home/data/remote_ds/categories_remote_ds.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:sqflite/sqflite.dart';

import '../../../../core/utils/dummy_data.dart';

@Injectable(as: CategoriesRemoteDs)
class CategoriesRemoteDsImpl implements CategoriesRemoteDs {
  @override
  Future<Database> openProductsDB() async {
    final documentsDirectory = await getApplicationDocumentsDirectory();
    final path = p.join(documentsDirectory.path, 'categories.db');
    return openDatabase(
      path,
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE categories(id INTEGER PRIMARY KEY, name TEXT)',
        );
      },
      version: 1,
    );
  }

  @override
  Future<void> insertCategories() async {
    final db = await openProductsDB();

    await db.transaction((txn) async {
      for (Category category in await DummyData.getCategories()) {
        await txn.insert(
          'categories',
          category.toMap(),
          conflictAlgorithm: ConflictAlgorithm.replace,
        );
      }
    });
  }

  @override
  Future<List<Category>> getCategories() async {
    final db = await openProductsDB();
    await insertCategories();

    final List<Map<String, dynamic>> maps = await db.query('categories');
    return List.generate(maps.length, (i) {
      return Category.fromMap(maps[i]);
    });
  }
}
