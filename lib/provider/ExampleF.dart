import 'package:flutter/material.dart';

class FavouriteProvider with ChangeNotifier {
  List<int> _selectedListItem = [];

  List<int> get selectedListItem => _selectedListItem;
  void addItem(int value) {
    _selectedListItem.add(value);
    notifyListeners();
  }

  void removeValue(int value) {
    _selectedListItem.remove(value);
    notifyListeners();
  }
}
