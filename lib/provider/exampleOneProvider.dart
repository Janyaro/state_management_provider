import 'package:flutter/material.dart';

class ExampleOneProvider with ChangeNotifier {
  double _value = 1.0;
  double get getvalue => _value;

  void setSliderValue(double val) {
    _value = val;
    notifyListeners();
  }
}
