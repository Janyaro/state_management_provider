import 'dart:ffi';

import 'package:flutter/material.dart';

class Help_provider with ChangeNotifier {
  List<int> _selectItem = [];
  List<int> get selectItem => _selectItem;

  void AddistItem(int value) {
    _selectItem.add(value);
    notifyListeners();
  }

  void removeListItem(int value) {
    _selectItem.remove(value);
    notifyListeners();
  }
  // double _slide_num = 1.0;
  // double get getSliderValue => _slide_num;

  // void setValue(double val) {
  //   _slide_num = val;
  //   notifyListeners();
  // }

  // int _num = 0;
  // int get num => _num;

  // void increment() {
  //   _num++;
  //   notifyListeners();
  // }
}
