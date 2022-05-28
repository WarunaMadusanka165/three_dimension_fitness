// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:three_dimension_fitness/screens/splashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
