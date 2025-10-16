import 'dart:nativewrappers/_internal/vm/bin/vmservice_io.dart';

import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';


// @lazySingleton
// class DatabaseManager {
//   Future<Database> openDatabase(
//     String fileName,
//     String statement, {
//     required int version,
//   }) async {
//     final documentsDirectory = await getApplicationDocumentsDirectory();
//     final path = joinPathComponents(documentsDirectory.path, fileName);
//     return openDatabase(path, statement, version: version);
//   }
//
// }
