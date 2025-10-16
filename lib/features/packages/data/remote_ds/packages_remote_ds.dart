import 'package:sqflite/sqlite_api.dart';

import '../models/package.dart';

abstract class PackageRemoteDs {
  Future<Database> openPackagesDB();
  Future<void> insertPackages();
  Future<List<Package>> getPackages();
}
