import 'package:flutter/cupertino.dart';

class ChangeIndexProvider extends ChangeNotifier {
  int index = 4;
  void changeIndex(int index) {
    this.index = index;
    notifyListeners();
  }
}
