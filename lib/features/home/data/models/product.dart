import 'dart:typed_data';

class Product {
  final int? id;
  final String name;
  final String price;
  final String priceAfterDiscount;
  final Uint8List image;

  Product({
    this.id,
    required this.name,
    required this.price,
    required this.priceAfterDiscount,
    required this.image,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'priceAfterDiscount': priceAfterDiscount,
      'image': image,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'],
      name: map['name'],
      price: map['price'],
      priceAfterDiscount: map['priceAfterDiscount'],
      image: map['image'],
    );
  }
}
