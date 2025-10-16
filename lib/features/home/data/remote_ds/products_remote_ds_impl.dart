import 'package:injectable/injectable.dart';
import 'package:otex_app/core/utils/dummy_data.dart';
import 'package:otex_app/features/home/data/models/product.dart';
import 'package:otex_app/features/home/data/remote_ds/products_remote_ds.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart' as p;

@Injectable(as: ProductsRemoteDS)
class ProductsRemoteDsImpl implements ProductsRemoteDS {
  @override
  Future<Database> openProductsDB() async {
    final documentsDirectory = await getApplicationDocumentsDirectory();
    final path = p.join(documentsDirectory.path, 'products.db');
    return openDatabase(
      path,
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE products(id INTEGER PRIMARY KEY, name TEXT, price TEXT, priceAfterDiscount TEXT, image BLOB)',
        );
      },
      version: 1,
    );
  }

  @override
  Future<void> insertProduct() async {
    final db = await openProductsDB();

    await db.transaction((txn) async {
      for (Product product in await DummyData.getProducts()) {
        await txn.insert(
          'products',
          product.toMap(),
          conflictAlgorithm: ConflictAlgorithm.replace,
        );
      }
    });
  }

  @override
  Future<List<Product>> getProducts() async {
    final db = await openProductsDB();
    await insertProduct();

    final List<Map<String, dynamic>> maps = await db.query('products');
    return List.generate(maps.length, (i) {
      return Product.fromMap(maps[i]);
    });
  }
}
