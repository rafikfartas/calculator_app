import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

List<Map> data = [
  {"char": "AC", "color": 0},
  {"char": "+/-", "color": 0},
  {"char": "%", "color": 0},
  {"char": "÷", "color": 0},
  {"char": "7", "color": 0},
  {"char": "8", "color": 0},
  {"char": "9", "color": 0},
  {"char": "x", "color": 0},
  {"char": "4", "color": 0},
  {"char": "5", "color": 0},
  {"char": "6", "color": 0},
  {"char": "-", "color": 0},
  {"char": "1", "color": 0},
  {"char": "2", "color": 0},
  {"char": "3", "color": 0},
  {"char": "+", "color": 0},
  {"char": "↩", "color": 0},
  {"char": "0", "color": 0},
  {"char": ".", "color": 0},
  {"char": "=", "color": 0},
];

Map<int, Widget> icons = {
  0: const Icon(Icons.light_mode_outlined),
  1: const Icon(Icons.dark_mode_outlined),
};

BorderRadius borderRadius15 = BorderRadius.circular(15);
const Radius radius15 = Radius.circular(15);
