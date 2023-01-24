import 'package:calculator_app/data/colors.dart';
import 'package:flutter/material.dart';

List<Map> data = [
  {"char": "AC", "color": 1},
  {"char": "+/-", "color": 1},
  {"char": "%", "color": 1},
  {"char": "÷", "color": 2},
  {"char": "7", "color": 0},
  {"char": "8", "color": 0},
  {"char": "9", "color": 0},
  {"char": "x", "color": 2},
  {"char": "4", "color": 0},
  {"char": "5", "color": 0},
  {"char": "6", "color": 0},
  {"char": "-", "color": 2},
  {"char": "1", "color": 0},
  {"char": "2", "color": 0},
  {"char": "3", "color": 0},
  {"char": "+", "color": 2},
  {"char": "↩", "color": 0},
  {"char": "0", "color": 0},
  {"char": ".", "color": 0},
  {"char": "=", "color": 2},
];

Map<int, Widget> icons = {
  0: const Icon(Icons.light_mode_outlined),
  1: const Icon(Icons.dark_mode_outlined),
};

BorderRadius borderRadius15 = BorderRadius.circular(15);
BorderRadius borderRadius20 = BorderRadius.circular(20);
BorderRadius borderRadius25 = BorderRadius.circular(25);
const Radius radius15 = Radius.circular(15);
const Radius radius20 = Radius.circular(20);
const Radius radius25 = Radius.circular(25);

List<dynamic> textColors = [Palette.blue, Palette.lightBlue, Palette.red];
