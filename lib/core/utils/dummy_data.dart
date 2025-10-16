import 'package:otex_app/core/common/logic/convert_image.dart';
import 'package:otex_app/core/utils/strings_manager.dart';
import 'package:otex_app/features/home/data/models/category.dart';
import 'package:otex_app/features/home/data/models/sub_category.dart';
import '../../features/home/data/models/product.dart';
import '../../features/packages/data/models/package.dart';
import 'assets_manager.dart';

class DummyData {
  static Future<List<Product>> getProducts() async {
    return [
      Product(
        name: StringsManager.jackOfWool,
        price: "60,000,000",
        priceAfterDiscount: "32,000,000",
        image: await ConvertImage.convertImage(AssetsManager.shirt),
      ),
      Product(
        name: StringsManager.jackOfWool,
        price: "60,000,000",
        priceAfterDiscount: "32,000,000",
        image: await ConvertImage.convertImage(AssetsManager.shirt2),
      ),
      Product(
        name: StringsManager.jackOfWool,
        price: "60,000,000",
        priceAfterDiscount: "32,000,000",
        image: await ConvertImage.convertImage(AssetsManager.shoes),
      ),
      Product(
        name: StringsManager.jackOfWool,
        price: "60,000,000",
        priceAfterDiscount: "32,000,000",
        image: await ConvertImage.convertImage(AssetsManager.shirt),
      ),
    ];
  }

  static Future<List<SubCategory>> getSubCategories() async {
    return [
      SubCategory(
        name: StringsManager.menWear,
        image: await ConvertImage.convertImage(AssetsManager.meanWear),
      ),
      SubCategory(
        name: StringsManager.watches,
        image: await ConvertImage.convertImage(AssetsManager.watch),
      ),
      SubCategory(
        name: StringsManager.mobiles,
        image: await ConvertImage.convertImage(AssetsManager.mobile),
      ),
      SubCategory(
        name: StringsManager.cosmetics,
        image: await ConvertImage.convertImage(AssetsManager.cosmetics),
      ),
    ];
  }

  static List<Category> getCategories() {
    return [
      Category(name: StringsManager.allOffers),
      Category(name: StringsManager.clothes),
      Category(name: StringsManager.accessories),
      Category(name: StringsManager.electronics),
    ];
  }

  static Future<List<Package>> getPackages() async {
    return [
      Package(
        name: StringsManager.main,
        price: '3,000',
        expiration: 1,
        image: await ConvertImage.convertImage(AssetsManager.views),
      ),
      Package(
        name: StringsManager.extra,
        price: '3,000',
        expiration: 1,
        upList: 1,
        fixAgent: 1,
        image: await ConvertImage.convertImage(AssetsManager.views2),
        selected: 1,
      ),
      Package(
        name: StringsManager.plus,
        price: '3,000',
        expiration: 1,
        upList: 1,
        fixAgent: 1,
        allEgypt: 1,
        specialAd: 1,
        fixAgentInG: 1,
        selected: 1,
        image: await ConvertImage.convertImage(AssetsManager.views),
      ),
      Package(
        name: StringsManager.superr,
        price: '3,000',
        expiration: 1,
        upList: 1,
        fixAgent: 1,
        allEgypt: 1,
        specialAd: 1,
        fixAgentInG: 1,
        selected: 0,
        image: await ConvertImage.convertImage(AssetsManager.views1),
      ),
    ];
  }
}
