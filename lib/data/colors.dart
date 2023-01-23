import 'package:flutter/material.dart';

class Palette {
  static const MaterialColor blue = MaterialColor(
    0XFF253450, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xff11162A), //10%
      100: Color(0xff1B243D), //20%
      200: Color(0xff253450), //30%
      300: Color(0xff43536E), //40%
      400: Color(0xff62718A), //50%
      500: Color(0xff8290A6), //60%
      600: Color(0xffA4AFC0), //70%
      700: Color(0xffC6CED9), //80%
      800: Color(0xffC6CED9), //90%
      900: Color(0xffE9EDF1), //90%
    },
  );

  static const Color red = Color.fromARGB(255, 250, 37, 72);
  static const Color lightBlue = Color.fromARGB(255, 33, 249, 199);
}
