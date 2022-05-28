// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:three_dimension_fitness/screens/theme/thtmeprovider.dart';
import 'package:provider/provider.dart';
import 'package:animated_toggle_switch/animated_toggle_switch.dart';

class ChangeThemeButtonWidget extends StatefulWidget {
  @override
  State<ChangeThemeButtonWidget> createState() =>
      _ChangeThemeButtonWidgetState();
}

class _ChangeThemeButtonWidgetState extends State<ChangeThemeButtonWidget> {
  // int value = 0;

  bool positive = false;

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return

        // AnimatedToggleSwitch<bool>.rollingByHeight(
        //   height: 50.0,
        //   current: themeProvider.isDarkMode,
        //   values: [true, true, true, true],
        //   onChanged: (i) => setState(() => value = i as int),
        //   // onChanged: (values) {
        //   //   final provider = Provider.of<ThemeProvider>(context, listen: false);
        //   //   provider.toggleTheme(values);
        //   // },
        //   // iconBuilder: rollingIconBuilder,
        //   borderRadius: BorderRadius.circular(75.0),
        //   indicatorSize: const Size.square(1.5),
        // );

        AnimatedToggleSwitch<bool>.dual(
      current: themeProvider.isDarkMode,

      first: false,
      second: true,
      dif: 50.0,
      borderColor: Colors.transparent,

      borderWidth: 5.0,
      height: 55,
      boxShadow: const [
        BoxShadow(
          color: Colors.black26,
          spreadRadius: 1,
          blurRadius: 2,
          offset: Offset(0, 1.5),
        ),
      ],
      //onChanged: (b) => setState(() => positive = b),
      onChanged: (value) {
        final provider = Provider.of<ThemeProvider>(context, listen: false);
        provider.toggleTheme(value);
      },
      //  colorBuilder: (b) => b ? Colors.red : Colors.green,
      // iconBuilder: (value) => value
      //     ? Icon(Icons.coronavirus_rounded)
      //     : Icon(Icons.tag_faces_rounded),
      // textBuilder: (value) => value
      //     ? Center(child: Text('Oh no...'))
      //     : Center(child: Text('Nice :)')),
    );
    // value: themeProvider.isDarkMode,
    // onChanged: (value) {
    //   final provider = Provider.of<ThemeProvider>(context, listen: false);
    //   provider.toggleTheme(value);
    // },
  }
}

// Widget iconBuilder(int value, Size iconSize) {
//   return rollingIconBuilder(value, iconSize, false);
// }

// Widget rollingIconBuilder(int value, Size iconSize, bool foreground) {
//   IconData data = Icons.access_time_rounded;
//   if (value.isEven) data = Icons.cancel;
//   return Icon(
//     data,
//     size: iconSize.shortestSide,
//   );
// }

// Widget sizeIconBuilder(BuildContext context, SizeProperties<int> local,
//     GlobalToggleProperties<int> global) {
//   return iconBuilder(local.value, local.iconSize);
// }

// Widget alternativeIconBuilder(BuildContext context, SizeProperties<int> local,
//     GlobalToggleProperties<int> global) {
//   IconData data = Icons.access_time_rounded;
//   switch (local.value) {
//     case 0:
//       data = Icons.ac_unit_outlined;
//       break;
//     case 1:
//       data = Icons.account_circle_outlined;
//       break;
//     case 2:
//       data = Icons.assistant_navigation;
//       break;
//     case 3:
//       data = Icons.arrow_drop_down_circle_outlined;
//       break;
//   }
//   return Icon(
//     data,
//     size: local.iconSize.shortestSide,
//   );
// }
