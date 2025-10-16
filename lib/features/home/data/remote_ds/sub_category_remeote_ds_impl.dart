import 'package:injectable/injectable.dart';
import 'package:otex_app/core/utils/strings_manager.dart';
import 'package:otex_app/features/home/data/models/sub_category.dart';
import 'package:otex_app/features/home/data/remote_ds/sub_category_remote_ds.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common/sqlite_api.dart';
import 'package:path/path.dart' as p;
import '../../../../core/utils/dummy_data.dart';

@Injectable(as: SubCategoryRemoteDs)
class SubCategoryRemoteDsImpl implements SubCategoryRemoteDs {
  @override
  Future<Database> openSubCategoryDB() async {
    final documentsDirectory = await getApplicationDocumentsDirectory();
    final path = p.join(
      documentsDirectory.path,
      StringsManager.subCategoryFile,
    );
    return openDatabase(
      path,
      onCreate: (db, version) {
        return db.execute(StringsManager.subCategoriesSQLStatement);
      },
      version: 1,
    );
  }

  @override
  Future<void> insertSubCategories() async {
    final db = await openSubCategoryDB();

    await db.transaction((txn) async {
      for (SubCategory subCategory in await DummyData.getSubCategories()) {
        await txn.insert(
          StringsManager.subCategories,
          subCategory.toMap(),
          conflictAlgorithm: ConflictAlgorithm.replace,
        );
      }
    });
  }

  @override
  Future<List<SubCategory>> getSubCategories() async {
    final db = await openSubCategoryDB();
    await insertSubCategories();

    final List<Map<String, dynamic>> maps = await db.query(
      StringsManager.subCategories,
    );
    return List.generate(maps.length, (i) {
      return SubCategory.fromMap(maps[i]);
    });
  }
}
