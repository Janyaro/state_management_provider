import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ThemeChanger with ChangeNotifier {
  var _themeMode = ThemeMode.light;
  ThemeMode get thememode => _themeMode;

  void setChanger(thememode) {
    _themeMode = thememode;
    notifyListeners();
  }
}
