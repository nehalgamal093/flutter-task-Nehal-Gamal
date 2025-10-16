import 'dart:typed_data';

class SubCategory {
  int? id;
  String name;
  Uint8List image;
  SubCategory({this.id, required this.name, required this.image});

  Map<String, dynamic> toMap() {
    return {'id': id, 'name': name, 'image': image};
  }

  factory SubCategory.fromMap(Map<String, dynamic> map) {
    return SubCategory(id: map['id'], name: map['name'], image: map['image']);
  }
}