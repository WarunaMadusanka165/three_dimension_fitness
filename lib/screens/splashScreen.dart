// ignore_for_file: file_names, use_key_in_widget_constructors, must_call_super

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:three_dimension_fitness/screens/homeScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // super.initState();
    Timer(
      const Duration(seconds: 5),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => Home(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 0, 0, 1),
      body: Container(
        color: const Color.fromRGBO(0, 0, 0, 1),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Image(image: AssetImage('assets/logo.png')),
            ],
          ),
        ),
      ),
    );
  }
}
