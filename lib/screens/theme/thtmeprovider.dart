import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.dark;

  bool get isDarkMode => themeMode == ThemeMode.dark;

  // {
  //   if (themeMode == ThemeMode.system){
  //     return themeMode == ThemeMode.dark;
  //   } else{
  //     return themeMode == ThemeMode.dark;
  //   }
  // }

  // {
  //   if (themeMode == ThemeMode.system) {
  //     //final brightness = SchedulerBinding.instance.window.platformBrightness;
  //     return themeMode == ThemeMode.dark;
  //   } else {
  //     return themeMode == ThemeMode.dark;
  //   }
  // }

  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class MyThemes {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    primaryColor: Colors.black,
    colorScheme: ColorScheme.dark(),
    iconTheme: IconThemeData(color: Colors.purple.shade200, opacity: 0.8),
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.white,
    colorScheme: ColorScheme.light(),
    iconTheme: IconThemeData(color: Colors.red, opacity: 0.8),
  );
}
