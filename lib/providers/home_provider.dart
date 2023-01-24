import 'package:flutter/material.dart';

class HomeProvider with ChangeNotifier {
  late double _num1;
  String get num1 {
    if (_num1.toString().endsWith(".0")) {
      return _num1.toString().substring(0, _num1.toString().length - 2);
    } else {
      return _num1.toString();
    }
  }

  double? _num2;
  double? get num2 {
    if (_num2 == null || _operation == null) {
      return _num1;
    } else {
      return _num2;
    }
  }

  late bool _justOperated;
  bool get justOperated => _justOperated;

  String? _operation;
  String? get operation => _operation;

  HomeProvider() {
    _num1 = 0;
    _justOperated = false;
  }

  onClick(String button) {
    switch (button) {
      case "AC":
        _clear();
        break;
      case "+/-":
        _num1 = -_num1;
        _justOperated = false;
        break;
      case "%":
        _num1 = _num1 / 100;
        _justOperated = false;
        break;
      case "=":
        if (_operation != null) {
          _num1 = _doOperation(_num2!, _num1, operation!);
          _justOperated = true;
        }
        break;
      case "÷":
      case "+":
      case "x":
      case "-":
        if (_operation == null) {
          _operation = button;
          _num2 = _num1;
          _num1 = 0;
        } else {
          if (_num1 != 0) {
            _num2 = _doOperation(_num2!, _num1, _operation!);
            _operation = button;
            _num1 = 0;
          }
        }
        _justOperated = false;
        break;
      case "1":
      case "2":
      case "3":
      case "4":
      case "5":
      case "6":
      case "7":
      case "8":
      case "9":
        if (_justOperated) {
          _clear();
        }
        if (_num1 == 0) {
          _num1 = double.parse(button);
        } else {
          _num1 = double.parse(num1 + button);
        }
        _justOperated = false;
        break;
      case "0":
        if (_justOperated) {
          _clear();
        }
        if (_num1 != 0) {
          _num1 = double.parse(num1 + button);
        }
        _justOperated = false;
        break;
      default:
    }
    notifyListeners();
  }

  _doOperation(double num1, double num2, String operation) {
    switch (operation) {
      case "÷":
        return num1 / num2;
      case "x":
        return num1 * num2;
      case "-":
        return num1 - num2;
      case "+":
        return num1 + num2;
      default:
    }
  }

  void _clear() {
    _num1 = 0;
    _num2 = null;
    _operation = null;
    _justOperated = false;
  }
}
