// // import 'dart:async';
// // import 'package:flutter/material.dart';
// // import 'package:numberpicker/numberpicker.dart';

// // class Timerrr extends StatefulWidget {
// //   const Timerrr({Key? key}) : super(key: key);

// //   @override
// //   State<Timerrr> createState() => _TimerrrState();
// // }

// // class _TimerrrState extends State<Timerrr> with TickerProviderStateMixin {
// //   int hour = 0;
// //   int min = 0;
// //   int sec = 0;
// //   bool started = true;
// //   bool stopped = true;
// //   int timefortimer = 0;
// //   String timetodisplay = "";
// //   @override
// //   void start() {
// //     setState(() {
// //       started = false;
// //       stopped = false;
// //     });
// //     timefortimer = ((hour * 60 * 60) + (min * 60) + sec);

// //     Timer.periodic(
// //         Duration(
// //           seconds: 1,
// //         ), (Timer t) {
// //       setState(() {
// //         if (timefortimer < 1) {
// //           t.cancel();
// //         } else {
// //           timefortimer = timefortimer - 1;
// //         }
// //         timetodisplay = timefortimer.toString();
// //       });
// //     });
// //   }

// //   void stop() {}

// //   @override
// //   Widget build(BuildContext context) {
// //     return Column(
// //       mainAxisAlignment: MainAxisAlignment.center,
// //       children: [
// //         Expanded(
// //             flex: 6,
// //             child: Row(
// //               mainAxisAlignment: MainAxisAlignment.center,
// //               children: [
// //                 Column(
// //                   mainAxisAlignment: MainAxisAlignment.center,
// //                   children: [
// //                     Padding(
// //                       padding: const EdgeInsets.only(bottom: 10.0),
// //                       child: Text('hh',
// //                           style: TextStyle(color: Colors.black, fontSize: 15)),
// //                     ),
// //                     NumberPicker(
// //                       value: hour,
// //                       //listViewWidth: 50,
// //                       minValue: 0,
// //                       maxValue: 23,
// //                       onChanged: (val) {
// //                         setState(() {
// //                           hour = val;
// //                         });
// //                       },
// //                     )
// //                   ],
// //                 ),
// //                 Column(
// //                   mainAxisAlignment: MainAxisAlignment.center,
// //                   children: [
// //                     Padding(
// //                       padding: const EdgeInsets.only(bottom: 10.0),
// //                       child: Text('min',
// //                           style: TextStyle(color: Colors.black, fontSize: 15)),
// //                     ),
// //                     NumberPicker(
// //                       value: min,
// //                       // listViewWidth: 50,
// //                       minValue: 0,
// //                       selectedTextStyle: TextStyle(color: Colors.green),
// //                       maxValue: 23,
// //                       onChanged: (val) {
// //                         setState(() {
// //                           min = val;
// //                         });
// //                       },
// //                     )
// //                   ],
// //                 ),
// //                 Column(
// //                   mainAxisAlignment: MainAxisAlignment.center,
// //                   children: [
// //                     Padding(
// //                       padding: const EdgeInsets.only(bottom: 10.0),
// //                       child: Text('sec',
// //                           style: TextStyle(color: Colors.black, fontSize: 15)),
// //                     ),
// //                     NumberPicker(
// //                       value: sec,
// //                       //listViewWidth: 50,
// //                       minValue: 0,
// //                       maxValue: 23,
// //                       onChanged: (val) {
// //                         setState(() {
// //                           sec = val;
// //                         });
// //                       },
// //                     )
// //                   ],
// //                 )
// //               ],
// //             )),
// //         Expanded(
// //             flex: 1,
// //             child: Text(hour.toString(),
// //                 style: TextStyle(fontSize: 20, color: Colors.black))),
// //         Expanded(
// //             flex: 3,
// //             child: Row(
// //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //               children: [
// //                 RaisedButton(
// //                   onPressed: started ? start : null,
// //                   padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
// //                   color: Colors.green,
// //                   child: Text(
// //                     'start',
// //                     style: TextStyle(color: Colors.white, fontSize: 20),
// //                   ),
// //                   shape: RoundedRectangleBorder(
// //                       borderRadius: BorderRadius.circular(20)),
// //                 ),
// //                 RaisedButton(
// //                   onPressed: stopped ? null : stop,
// //                   padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
// //                   color: Colors.red,
// //                   child: Text(
// //                     'stop',
// //                     style: TextStyle(color: Colors.white, fontSize: 20),
// //                   ),
// //                   shape: RoundedRectangleBorder(
// //                       borderRadius: BorderRadius.circular(20)),
// //                 )
// //               ],
// //             ))
// //       ],
// //     );
// //   }
// // }

// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:numberpicker/numberpicker.dart';

// class Timerrr extends StatefulWidget {
//   const Timerrr({Key? key}) : super(key: key);

//   @override
//   State<Timerrr> createState() => _TimerrrState();
// }

// class _TimerrrState extends State<Timerrr> with TickerProviderStateMixin {
//   int hour = 0;
//   int min = 0;
//   int sec = 0;
//   bool started = true;
//   bool stopped = true;
//   int timefortimer = 0;
//   String timetodisplay = "";
//   void start() {
//     setState(() {
//       started = false;
//       stopped = false;
//     });
//     timefortimer = ((hour * 60 * 60) + (min * 60) + sec);

//     Timer.periodic(
//         Duration(
//           seconds: 1,
//         ), (Timer t) {
//       setState(() {
//         if (timefortimer < 1) {
//           t.cancel();
//         } else {
//           timefortimer = timefortimer - 1;
//         }
//         timetodisplay = timefortimer.toString();
//       });
//     });
//   }

//   void stop() {}

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding:
//           const EdgeInsets.only(top: 20.0, left: 10, right: 10, bottom: 20),
//       child: Container(
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(15),
//             color: Color.fromRGBO(20, 20, 20, 1)),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(top: 15.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(bottom: 10.0),
//                         child: Text('Min',
//                             style:
//                                 TextStyle(color: Colors.white, fontSize: 25)),
//                       ),
//                       NumberPicker(
//                         value: min,
//                         minValue: 0,
//                         textStyle: TextStyle(color: Colors.white, fontSize: 20),
//                         maxValue: 60,
//                         onChanged: (val) {
//                           setState(() {
//                             min = val;
//                           });
//                         },
//                       )
//                     ],
//                   ),
//                   Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(bottom: 10.0),
//                         child: Text('Sec',
//                             style:
//                                 TextStyle(color: Colors.white, fontSize: 25)),
//                       ),
//                       NumberPicker(
//                         value: sec,
//                         textStyle: TextStyle(color: Colors.white, fontSize: 20),
//                         minValue: 0,
//                         maxValue: 60,
//                         onChanged: (val) {
//                           setState(() {
//                             sec = val;
//                           });
//                         },
//                       )
//                     ],
//                   )
//                 ],
//               ),
//             ),
//             SizedBox(height: 30),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(10.0),
//                   child: SizedBox(
//                     width: 85,
//                     child: TextButton(
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: const [
//                           Text(
//                             'Reset  ',
//                             style: TextStyle(
//                                 color: Color.fromRGBO(164, 164, 164, 1)),
//                           ),
//                           Icon(
//                             Icons.refresh,
//                             color: Color.fromRGBO(255, 75, 71, 1),
//                             size: 15,
//                           ),
//                         ],
//                       ),
//                       style: TextButton.styleFrom(
//                         primary: Colors.white,
//                         backgroundColor: const Color.fromRGBO(89, 89, 89, 1),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(25.0),
//                         ),
//                       ),
//                       onPressed: () {},
//                     ),
//                   ),
//                 ),
//                 Row(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(
//                           top: 10.0, bottom: 10, left: 10, right: 0),
//                       child: SizedBox(
//                         width: 145,
//                         child: TextButton(
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: const [
//                               Text(
//                                 'Mirror Chnage  ',
//                                 style: TextStyle(
//                                     color: Color.fromRGBO(164, 164, 164, 1)),
//                               ),
//                               Icon(
//                                 Icons.graphic_eq,
//                                 color: Color.fromRGBO(238, 240, 0, 1),
//                                 size: 15,
//                               ),
//                             ],
//                           ),
//                           style: TextButton.styleFrom(
//                             primary: Colors.white,
//                             backgroundColor:
//                                 const Color.fromRGBO(89, 89, 89, 1),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(25.0),
//                             ),
//                           ),
//                           onPressed: () {},
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(10.0),
//                       child: SizedBox(
//                         width: 85,
//                         child: TextButton(
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: const [
//                               Text(
//                                 'Delete  ',
//                                 style: TextStyle(
//                                     color: Color.fromRGBO(164, 164, 164, 1)),
//                               ),
//                               Icon(
//                                 Icons.delete,
//                                 color: Color.fromRGBO(255, 75, 71, 1),
//                                 size: 15,
//                               ),
//                             ],
//                           ),
//                           style: TextButton.styleFrom(
//                             primary: Colors.white,
//                             backgroundColor:
//                                 const Color.fromRGBO(89, 89, 89, 1),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(25.0),
//                             ),
//                           ),
//                           onPressed: () {},
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//             SizedBox(height: 20),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class kjsdklgj extends StatefulWidget {
//   const kjsdklgj({ Key? key }) : super(key: key);

//   @override
//   State<kjsdklgj> createState() => _kjsdklgjState();
// }

// class _kjsdklgjState extends State<kjsdklgj> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ,
//       themeMode: ,
//       darkTheme: ,
//     );
//   }
// }

// import 'dart:math';

// import 'package:animated_toggle_switch/animated_toggle_switch.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/material.dart';

// class MyAppeeeee extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title: 'Example'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int value = 0;
//   bool positive = false;

//   @override
//   Widget build(BuildContext context) {
//     ThemeData theme = Theme.of(context);

//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: DefaultTextStyle(
//         style: theme.textTheme.headline6 ?? TextStyle(),
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text(
//                   'AnimatedToggleSwitch.dual:',
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//               AnimatedToggleSwitch<bool>.dual(
//                 current: positive,
//                 first: false,
//                 second: true,
//                 dif: 50.0,
//                 borderColor: Colors.transparent,
//                 borderWidth: 5.0,
//                 height: 55,
//                 boxShadow: const [
//                   BoxShadow(
//                     color: Colors.black26,
//                     spreadRadius: 1,
//                     blurRadius: 2,
//                     offset: Offset(0, 1.5),
//                   ),
//                 ],
//                 onChanged: (b) => setState(() => positive = b),
//                 colorBuilder: (b) => b ? Colors.red : Colors.green,
//                 iconBuilder: (value) => value
//                     ? Icon(Icons.coronavirus_rounded)
//                     : Icon(Icons.tag_faces_rounded),
//                 textBuilder: (value) => value
//                     ? Center(child: Text('Oh no...'))
//                     : Center(child: Text('Nice :)')),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text(
//                   'Standard AnimatedToggleSwitch.rolling:',
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//               AnimatedToggleSwitch<int>.rolling(
//                 current: value,
//                 values: const [0, 1, 2, 3],
//                 onChanged: (i) => setState(() => value = i),
//                 iconBuilder: rollingIconBuilder,
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text(
//                   'Customized AnimatedToggleSwitch.rolling:',
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//               SizedBox(height: 16.0),
//               AnimatedToggleSwitch<int>.rolling(
//                 current: value,
//                 values: const [0, 1, 2, 3],
//                 onChanged: (i) => setState(() => value = i),
//                 iconBuilder: rollingIconBuilder,
//                 borderColor: Colors.transparent,
//                 foregroundBoxShadow: const [
//                   BoxShadow(
//                     color: Colors.black26,
//                     spreadRadius: 1,
//                     blurRadius: 2,
//                     offset: Offset(0, 1.5),
//                   )
//                 ],
//                 boxShadow: const [
//                   BoxShadow(
//                     color: Colors.black26,
//                     spreadRadius: 1,
//                     blurRadius: 2,
//                     offset: Offset(0, 1.5),
//                   )
//                 ],
//               ),
//               SizedBox(height: 16.0),
//               AnimatedToggleSwitch<int>.rolling(
//                 current: value,
//                 values: const [0, 1, 2, 3],
//                 onChanged: (i) => setState(() => value = i),
//                 iconBuilder: rollingIconBuilder,
//                 borderWidth: 4.5,
//                 indicatorColor: Colors.purpleAccent,
//                 innerColor: Colors.amber,
//                 height: 55,
//                 dif: 20.0,
//                 borderColor: Colors.transparent,
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text(
//                   'You can make any other switch with CustomAnimatedToggleSwitch:',
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//               CustomAnimatedToggleSwitch<bool>(
//                 current: positive,
//                 values: [false, true],
//                 dif: 0.0,
//                 indicatorSize: Size.square(30.0),
//                 animationDuration: const Duration(milliseconds: 200),
//                 animationCurve: Curves.linear,
//                 onChanged: (b) => setState(() => positive = b),
//                 iconBuilder: (context, local, global) {
//                   return const SizedBox();
//                 },
//                 defaultCursor: SystemMouseCursors.click,
//                 onTap: () => setState(() => positive = !positive),
//                 iconsTappable: false,
//                 wrapperBuilder: (context, global, child) {
//                   return Stack(
//                     alignment: Alignment.center,
//                     children: [
//                       Positioned(
//                           left: 10.0,
//                           right: 10.0,
//                           height: 20.0,
//                           child: DecoratedBox(
//                             decoration: BoxDecoration(
//                               color: Color.lerp(Colors.black26,
//                                   theme.backgroundColor, global.position),
//                               borderRadius:
//                                   const BorderRadius.all(Radius.circular(50.0)),
//                             ),
//                           )),
//                       child,
//                     ],
//                   );
//                 },
//                 foregroundIndicatorBuilder: (context, global) {
//                   return SizedBox.fromSize(
//                     size: global.indicatorSize,
//                     child: DecoratedBox(
//                       decoration: BoxDecoration(
//                         color: Color.lerp(
//                             Colors.white, theme.primaryColor, global.position),
//                         borderRadius: BorderRadius.all(Radius.circular(50.0)),
//                         boxShadow: const [
//                           BoxShadow(
//                               color: Colors.black38,
//                               spreadRadius: 0.05,
//                               blurRadius: 1.1,
//                               offset: Offset(0.0, 0.8))
//                         ],
//                       ),
//                     ),
//                   );
//                 },
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text(
//                   'AnimatedToggleSwitch.size with some custom settings:',
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//               AnimatedToggleSwitch<int>.size(
//                 current: value,
//                 values: const [0, 1, 2, 3],
//                 iconOpacity: 0.2,
//                 indicatorSize: const Size.fromWidth(100),
//                 iconAnimationType: AnimationType.onHover,
//                 indicatorAnimationType: AnimationType.onHover,
//                 iconBuilder: (value, size) {
//                   IconData data = Icons.access_time_rounded;
//                   if (value.isEven) data = Icons.cancel;
//                   return Icon(
//                     data,
//                     size: min(size.width, size.height),
//                   );
//                 },
//                 borderWidth: 0.0,
//                 borderColor: Colors.transparent,
//                 colorBuilder: (i) => i.isEven ? Colors.amber : Colors.red,
//                 onChanged: (i) => setState(() => value = i),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text(
//                   'AnimatedToggleSwitch.size with a more custom icon and TextDirection.rtl:',
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//               AnimatedToggleSwitch<int>.size(
//                 textDirection: TextDirection.rtl,
//                 current: value,
//                 values: const [0, 1, 2, 3],
//                 iconOpacity: 0.2,
//                 indicatorSize: const Size.fromWidth(100),
//                 customIconBuilder: (context, local, global) {
//                   return Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text('${local.value}'),
//                       alternativeIconBuilder(context, local, global),
//                     ],
//                   );
//                 },
//                 borderColor: value.isEven ? Colors.blue : Colors.red,
//                 colorBuilder: (i) => i.isEven ? Colors.amber : Colors.red,
//                 onChanged: (i) => setState(() => value = i),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text(
//                   'AnimatedToggleSwitch.size with custom rotating animation:',
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//               AnimatedToggleSwitch<int>.size(
//                 current: value,
//                 values: const [0, 1, 2, 3],
//                 iconOpacity: 1.0,
//                 indicatorSize: const Size.fromWidth(25),
//                 foregroundIndicatorIconBuilder: (context, global) {
//                   double pos = global.position;
//                   double transitionValue = pos - pos.floorToDouble();
//                   return Transform.rotate(
//                       angle: 2.0 * pi * transitionValue,
//                       child: Stack(children: [
//                         Opacity(
//                             opacity: 1 - transitionValue,
//                             child:
//                                 iconBuilder(pos.floor(), global.indicatorSize)),
//                         Opacity(
//                             opacity: transitionValue,
//                             child:
//                                 iconBuilder(pos.ceil(), global.indicatorSize))
//                       ]));
//                 },
//                 selectedIconSize: const Size.square(20),
//                 iconSize: const Size.square(20),
//                 iconBuilder: iconBuilder,
//                 colorBuilder: (i) =>
//                     i.isEven ? Colors.green : Colors.tealAccent,
//                 onChanged: (i) => setState(() => value = i),
//                 borderRadius: BorderRadius.circular(8.0),
//                 indicatorBorderRadius: BorderRadius.zero,
//                 borderColor: Colors.red,
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text(
//                   'AnimatedToggleSwitch.rollingByHeight with custom indicatorSize and borderRadius:',
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//               AnimatedToggleSwitch<int>.rollingByHeight(
//                 height: 50.0,
//                 current: value,
//                 values: const [0, 1, 2, 3],
//                 onChanged: (i) => setState(() => value = i),
//                 iconBuilder: rollingIconBuilder,
//                 indicatorSize: const Size.fromWidth(2),
//               ),
//               SizedBox(
//                 height: 16.0,
//               ),
//               AnimatedToggleSwitch<int>.rollingByHeight(
//                 height: 50.0,
//                 current: value,
//                 values: const [0, 1, 2, 3],
//                 onChanged: (i) => setState(() => value = i),
//                 iconBuilder: rollingIconBuilder,
//                 borderRadius: BorderRadius.circular(75.0),
//                 indicatorSize: const Size.square(1.5),
//               ),
//               SizedBox(height: MediaQuery.of(context).padding.bottom + 16.0),
//             ],
//           ),
//         ), // This trailing comma makes auto-formatting nicer for build methods.
//       ),
//     );
//   }

//   Widget iconBuilder(int value, Size iconSize) {
//     return rollingIconBuilder(value, iconSize, false);
//   }

//   Widget rollingIconBuilder(int value, Size iconSize, bool foreground) {
//     IconData data = Icons.access_time_rounded;
//     if (value.isEven) data = Icons.cancel;
//     return Icon(
//       data,
//       size: iconSize.shortestSide,
//     );
//   }

//   Widget sizeIconBuilder(BuildContext context, SizeProperties<int> local,
//       GlobalToggleProperties<int> global) {
//     return iconBuilder(local.value, local.iconSize);
//   }

//   Widget alternativeIconBuilder(BuildContext context, SizeProperties<int> local,
//       GlobalToggleProperties<int> global) {
//     IconData data = Icons.access_time_rounded;
//     switch (local.value) {
//       case 0:
//         data = Icons.ac_unit_outlined;
//         break;
//       case 1:
//         data = Icons.account_circle_outlined;
//         break;
//       case 2:
//         data = Icons.assistant_navigation;
//         break;
//       case 3:
//         data = Icons.arrow_drop_down_circle_outlined;
//         break;
//     }
//     return Icon(
//       data,
//       size: local.iconSize.shortestSide,
//     );
//   }
// }

// Future hjsdfjh() async {
//   final ref = FirebaseStorage.instance.ref().child('1.jpg');
// // no need of the file extension, the name will do fine.
//   var url = await ref.getDownloadURL();
//   print(url);
// }

// Future listPhotos() async {
//   final ref = FirebaseStorage.instance.ref().child('freeStyle').listAll();
//   var url = await ref.toString();
//   print(url);
// }

// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// ignore_for_file: public_member_api_docs

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class MyAppuio extends StatelessWidget {
  const MyAppuio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'URL Launcher',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePagerr(title: 'URL Launcher'),
    );
  }
}

class MyHomePagerr extends StatefulWidget {
  const MyHomePagerr({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePagerr> createState() => _MyHomePagerrState();
}

class _MyHomePagerrState extends State<MyHomePagerr> {
  // Future<void>? _launched;

  // Future<void> _launchInBrowser(Uri url) async {
  //   if (!await launchUrl(
  //     url,
  //     mode: LaunchMode.externalApplication,
  //   )) {
  //     throw 'Could not launch $url';
  //   }
  // }
  String _youtube =
      'https://stackoverflow.com/questions/70224911/i-urllauncher17669-component-name-for-url-is-null';

  void launchurl(String urlString) async {
    await canLaunchUrlString(urlString)
        ? await launchUrlString(urlString)
        : throw "hhfasdfhh $urlString";
  }

  @override
  Widget build(BuildContext context) {
    // onPressed calls using this URL are not gated on a 'canLaunch' check
    // because the assumption is that every device can launch a web URL.
    // final Uri toLaunch = Uri(
    //     scheme: 'https',
    //     host:
    //         'www.youtube.com/results?search_query=how+to+go+yotube+when+image+click+in+flutter');
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                onTap: () async {
                  String url = 'https://www.youtube.com/watch?v=N9EV4YuUVGk';
                  await launch(url);
                  // if (await canLaunchUrl(url)) {
                  //   await launchUrlString(url);
                  // } else
                  //   (print('object'));
                },
                child: Container(
                  width: 200,
                  height: 200,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                          image: NetworkImage(
                              "https://firebasestorage.googleapis.com/v0/b/three-dimension-fitness.appspot.com/o/homeCards%2Fnew%202.jpg?alt=media&token=b0115fb9-f381-4665-ac43-3a056754b9b4"),
                          fit: BoxFit.cover)),
                  child:
                      Stack(alignment: Alignment.bottomLeft, children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "New",
                        style: TextStyle(
                            color: Color.fromRGBO(223, 223, 223, 1),
                            fontSize: 20),
                      ),
                    ),
                  ]),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
