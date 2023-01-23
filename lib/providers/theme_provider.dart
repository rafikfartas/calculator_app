import 'package:flutter/cupertino.dart';

class ThemeProvider with ChangeNotifier {
  late int _selectionIndex;
  int get selectonIndex => _selectionIndex;

  ThemeProvider() {
    _selectionIndex = 1;
  }

  void select(int index) {
    _selectionIndex = index;
    notifyListeners();
  }
}
