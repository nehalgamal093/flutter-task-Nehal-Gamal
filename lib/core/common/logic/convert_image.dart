import 'dart:typed_data';
import 'package:flutter/services.dart' show rootBundle;

class ConvertImage {
  static Future<Uint8List> convertImage(String imagePath) async {
    final bytes = await rootBundle.load(imagePath);
    final imageBytes = bytes.buffer.asUint8List();
    return imageBytes;
  }
}
