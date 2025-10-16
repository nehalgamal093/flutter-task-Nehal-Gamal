import 'dart:typed_data';

class Package {
  int? id;
  String name;
  String price;
  int expiration;
  int upList;
  int fixAgent;
  int allEgypt;
  int specialAd;
  int fixAgentInG;
  int selected;
  Uint8List image;
  Package({
    this.id,
    required this.name,
    required this.price,
    this.expiration = 0,
    this.upList = 0,
    this.fixAgent = 0,
    this.allEgypt = 0,
    this.fixAgentInG = 0,
    this.specialAd = 0,
     required this.image,
    this.selected = 0,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'expiration': expiration,
      'upList': upList,
      'fixAgent': fixAgent,
      'allEgypt': allEgypt,

      'specialAd': specialAd,
      'fixAgentInG': fixAgentInG,
      'selected': selected,
      'image': image,
    };
  }

  factory Package.fromMap(Map<String, dynamic> map) {
    return Package(
      id: map['id'],
      name: map['name'],
      price: map['price'],
      expiration: map['expiration'],
      upList: map['upList'],
      fixAgent: map['fixAgent'],
      allEgypt: map['allEgypt'],
      fixAgentInG: map['fixAgentInG'],
      specialAd: map['specialAd'],
      image: map['image'],
      selected: map['selected'],
    );
  }
}
