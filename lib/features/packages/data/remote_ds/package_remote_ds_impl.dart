import 'package:injectable/injectable.dart';
import 'package:otex_app/core/utils/strings_manager.dart';
import 'package:otex_app/features/packages/data/models/package.dart';
import 'package:otex_app/features/packages/data/remote_ds/packages_remote_ds.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common/sqlite_api.dart';
import 'package:path/path.dart' as p;

import '../../../../core/utils/dummy_data.dart';

@Injectable(as: PackageRemoteDs)
class PackageRemoteDsImp implements PackageRemoteDs {
  @override
  Future<Database> openPackagesDB() async {
    final documentsDirectory = await getApplicationDocumentsDirectory();
    final path = p.join(documentsDirectory.path, StringsManager.packagesFile);
    return openDatabase(
      path,
      onCreate: (db, version) {
        return db.execute(StringsManager.packagesSQLStatement);
      },
      version: 1,
    );
  }

  @override
  Future<void> insertPackages() async {
    final db = await openPackagesDB();
    final List<Map<String, dynamic>> result = await db.query(
      StringsManager.packages,
    );
    if (result.isEmpty) {
      await db.transaction((txn) async {
        for (Package package in await DummyData.getPackages()) {
          await txn.insert(
            StringsManager.packages,
            package.toMap(),
            conflictAlgorithm: ConflictAlgorithm.replace,
          );
        }
      });
    }
  }

  @override
  Future<List<Package>> getPackages() async {
    final db = await openPackagesDB();
    await insertPackages();

    final List<Map<String, dynamic>> maps = await db.query(
      StringsManager.packages,
    );
    return List.generate(maps.length, (i) {
      return Package.fromMap(maps[i]);
    });
  }
}
