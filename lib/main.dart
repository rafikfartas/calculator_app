import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:calculator_app/providers/home_provider.dart';
import 'package:calculator_app/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter calculator app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider(
        create: (context) => HomeProvider(),
        child: const HomeScreen(title: "Calculator home page"),
      ),
    );
  }
}
