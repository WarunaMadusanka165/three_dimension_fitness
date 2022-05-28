// ignore_for_file: file_names, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Workout1 extends StatefulWidget {
  const Workout1({Key? key}) : super(key: key);

  @override
  State<Workout1> createState() => _Workout1State();
}

class _Workout1State extends State<Workout1> {
  Duration duration = const Duration(hours: 1, minutes: 23);

  // This shows a CupertinoModalPopup with a reasonable fixed height which hosts CupertinoTimerPicker.
  void _showDialog(Widget child) {
    showCupertinoModalPopup<void>(
        context: context,
        builder: (BuildContext context) => Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                color: Color.fromRGBO(20, 20, 20, 1),
              ),
              height: 340,
              child: Scaffold(
                backgroundColor: Color.fromRGBO(20, 20, 20, 1),
                body: DefaultTabController(
                    length: 2,
                    initialIndex: 0,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 15.0, left: 70, right: 70),
                              child: Container(
                                height: 35,
                                // color: Color.fromRGBO(20, 20, 20, 1),
                                child: TabBar(
                                    indicator: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    labelColor: Colors.black,
                                    unselectedLabelColor: Colors.white,
                                    tabs: const [
                                      Tab(text: "Warm-Up"),
                                      Tab(text: 'Regular'),
                                    ]),
                              ),
                            ),
                          ),
                          Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30)),
                                color: Color.fromRGBO(20, 20, 20, 1),
                              ),
                              //color: Color.fromRGBO(20, 20, 20, 1),
                              height: 275,
                              child: TabBarView(children: <Widget>[
                                Column(children: [
                                  Column(
                                    children: [
                                      child,
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 5.0, left: 10, right: 0),
                                            child: SizedBox(
                                              width: 85,
                                              child: TextButton(
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: const [
                                                    Text(
                                                      'Reset  ',
                                                      style: TextStyle(
                                                          color: Color.fromRGBO(
                                                              164,
                                                              164,
                                                              164,
                                                              1)),
                                                    ),
                                                    Icon(
                                                      Icons.refresh,
                                                      color: Color.fromRGBO(
                                                          255, 75, 71, 1),
                                                      size: 15,
                                                    ),
                                                  ],
                                                ),
                                                style: TextButton.styleFrom(
                                                  primary: Colors.white,
                                                  backgroundColor:
                                                      const Color.fromRGBO(
                                                          89, 89, 89, 1),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25.0),
                                                  ),
                                                ),
                                                onPressed: () {},
                                              ),
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 5.0,
                                                    left: 10,
                                                    right: 0),
                                                child: SizedBox(
                                                  width: 145,
                                                  child: TextButton(
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: const [
                                                        Text(
                                                          'Mirror Chnage  ',
                                                          style: TextStyle(
                                                              color: Color
                                                                  .fromRGBO(
                                                                      164,
                                                                      164,
                                                                      164,
                                                                      1)),
                                                        ),
                                                        Icon(
                                                          Icons.graphic_eq,
                                                          color: Color.fromRGBO(
                                                              238, 240, 0, 1),
                                                          size: 15,
                                                        ),
                                                      ],
                                                    ),
                                                    style: TextButton.styleFrom(
                                                      primary: Colors.white,
                                                      backgroundColor:
                                                          const Color.fromRGBO(
                                                              89, 89, 89, 1),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(25.0),
                                                      ),
                                                    ),
                                                    onPressed: () {},
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 5.0,
                                                    left: 5,
                                                    right: 10),
                                                child: SizedBox(
                                                  width: 85,
                                                  child: TextButton(
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: const [
                                                        Text(
                                                          'Delete  ',
                                                          style: TextStyle(
                                                              color: Color
                                                                  .fromRGBO(
                                                                      164,
                                                                      164,
                                                                      164,
                                                                      1)),
                                                        ),
                                                        Icon(
                                                          Icons.delete,
                                                          color: Color.fromRGBO(
                                                              255, 75, 71, 1),
                                                          size: 15,
                                                        ),
                                                      ],
                                                    ),
                                                    style: TextButton.styleFrom(
                                                      primary: Colors.white,
                                                      backgroundColor:
                                                          const Color.fromRGBO(
                                                              89, 89, 89, 1),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(25.0),
                                                      ),
                                                    ),
                                                    onPressed: () {},
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ]),
                                Column(
                                  children: [
                                    child,
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 5.0, left: 10, right: 0),
                                          child: SizedBox(
                                            width: 85,
                                            child: TextButton(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  Text(
                                                    'Reset  ',
                                                    style: TextStyle(
                                                        color: Color.fromRGBO(
                                                            164, 164, 164, 1)),
                                                  ),
                                                  Icon(
                                                    Icons.refresh,
                                                    color: Color.fromRGBO(
                                                        255, 75, 71, 1),
                                                    size: 15,
                                                  ),
                                                ],
                                              ),
                                              style: TextButton.styleFrom(
                                                primary: Colors.white,
                                                backgroundColor:
                                                    const Color.fromRGBO(
                                                        89, 89, 89, 1),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          25.0),
                                                ),
                                              ),
                                              onPressed: () {},
                                            ),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 5.0, left: 10, right: 0),
                                              child: SizedBox(
                                                width: 145,
                                                child: TextButton(
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: const [
                                                      Text(
                                                        'Mirror Chnage  ',
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromRGBO(
                                                                    164,
                                                                    164,
                                                                    164,
                                                                    1)),
                                                      ),
                                                      Icon(
                                                        Icons.graphic_eq,
                                                        color: Color.fromRGBO(
                                                            238, 240, 0, 1),
                                                        size: 15,
                                                      ),
                                                    ],
                                                  ),
                                                  style: TextButton.styleFrom(
                                                    primary: Colors.white,
                                                    backgroundColor:
                                                        const Color.fromRGBO(
                                                            89, 89, 89, 1),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25.0),
                                                    ),
                                                  ),
                                                  onPressed: () {},
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 5.0, left: 5, right: 10),
                                              child: SizedBox(
                                                width: 85,
                                                child: TextButton(
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: const [
                                                      Text(
                                                        'Delete  ',
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromRGBO(
                                                                    164,
                                                                    164,
                                                                    164,
                                                                    1)),
                                                      ),
                                                      Icon(
                                                        Icons.delete,
                                                        color: Color.fromRGBO(
                                                            255, 75, 71, 1),
                                                        size: 15,
                                                      ),
                                                    ],
                                                  ),
                                                  style: TextButton.styleFrom(
                                                    primary: Colors.white,
                                                    backgroundColor:
                                                        const Color.fromRGBO(
                                                            89, 89, 89, 1),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25.0),
                                                    ),
                                                  ),
                                                  onPressed: () {},
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ]))
                        ])),
              ),
            )

        // Container(
        //       decoration: BoxDecoration(
        //         borderRadius: BorderRadius.circular(15),
        //         color: Color.fromRGBO(20, 20, 20, 1),
        //       ),
        //       height: 280,
        //       padding: const EdgeInsets.only(top: 6.0),
        //       // The Bottom margin is provided to align the popup above the system navigation bar.
        //       margin: EdgeInsets.only(
        //         bottom: MediaQuery.of(context).viewInsets.bottom,
        //       ),
        //       // Provide a background color for the popup.
        //       //color: CupertinoColors.systemBackground.resolveFrom(context),

        //       // Use a SafeArea widget to avoid system overlaps.
        //       child: SafeArea(
        //           top: false,
        //           child: DefaultTabController(
        //               length: 5,
        //               initialIndex: 0,
        //               child: Column(
        //                   crossAxisAlignment: CrossAxisAlignment.stretch,
        //                   children: <Widget>[
        //                     const TabBar(
        //                       labelStyle: TextStyle(
        //                           color: Colors.white,
        //                           fontWeight: FontWeight.w700,
        //                           fontSize: 12),
        //                       unselectedLabelStyle: TextStyle(
        //                           color: Colors.white,
        //                           fontWeight: FontWeight.w700,
        //                           fontSize: 12),
        //                       isScrollable: true,
        //                       labelColor: Colors.black,
        //                       unselectedLabelColor: Colors.black,
        //                       tabs: [
        //                         Tab(text: 'Software Engineering'),
        //                         Tab(text: 'Accounting'),
        //                       ],
        //                     ),
        //                     SizedBox(
        //                         height: 1010,
        //                         child: TabBarView(children: <Widget>[
        //                           Column(children: const [
        //                             Padding(
        //                               padding: EdgeInsets.only(
        //                                   top: 10.0,
        //                                   left: 8,
        //                                   right: 8,
        //                                   bottom: 15),
        //                               child: gggggg(),
        //                             ),
        //                           ]),
        //                           Column(children: const [
        //                             Padding(
        //                               padding: EdgeInsets.only(
        //                                   top: 10.0,
        //                                   left: 8,
        //                                   right: 8,
        //                                   bottom: 15),
        //                               child: gggggg(),
        //                             )
        //                           ]),
        //                         ]))
        //                   ]))

        // ),
        //)
        );
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    var themeData =
        Theme.of(context).copyWith(scaffoldBackgroundColor: Colors.black);

    return Scaffold(
      backgroundColor: themeData.scaffoldBackgroundColor,
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  width: 85,
                  child: TextButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Cancel  ',
                          style: TextStyle(
                              color: Color.fromRGBO(164, 164, 164, 1)),
                        ),
                        Icon(
                          Icons.close,
                          color: Color.fromRGBO(255, 75, 71, 1),
                          size: 15,
                        ),
                      ],
                    ),
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: const Color.fromRGBO(20, 20, 20, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              const Text(
                "My Workout 1",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  width: 85,
                  child: TextButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Done  ',
                          style: TextStyle(
                              color: Color.fromRGBO(164, 164, 164, 1)),
                        ),
                        Icon(
                          Icons.done,
                          color: Color.fromRGBO(8, 214, 139, 1),
                          size: 15,
                        ),
                      ],
                    ),
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: const Color.fromRGBO(20, 20, 20, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'Super Set',
              style: TextStyle(
                  color: Color.fromRGBO(164, 164, 164, 1), fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: height * 0.5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromRGBO(20, 20, 20, 1)),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10.0, right: 10, bottom: 20, top: 20),
                      child: Row(
                        children: const [
                          Text(
                            'Set 1',
                            style: TextStyle(
                                fontSize: 20,
                                color: Color.fromRGBO(255, 255, 255, 1)),
                          ),
                          SizedBox(width: 10),
                          Text(
                            '3 exercises',
                            style: TextStyle(
                                fontSize: 20,
                                color: Color.fromRGBO(164, 164, 164, 1)),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () => _showDialog(CupertinoTheme(
                        data: CupertinoThemeData(
                          textTheme: CupertinoTextThemeData(
                            dateTimePickerTextStyle:
                                TextStyle(color: Colors.white),
                          ),
                        ),
                        child: CupertinoTimerPicker(
                          mode: CupertinoTimerPickerMode.ms,
                          initialTimerDuration: duration,
                          // This is called when the user changes the timer duration.
                          onTimerDurationChanged: (Duration newDuration) {
                            setState(() => duration = newDuration);
                          },
                        ),
                      )),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color.fromRGBO(89, 89, 89, 1)),
                            height: height * 0.1,
                            width: width * 0.2,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Jumpsquat',
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1)),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  '$duration',
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1)),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color.fromRGBO(89, 89, 89, 1)),
                            height: height * 0.1,
                            width: width * 0.2,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Bucycle Crunch',
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1)),
                                ),
                                const SizedBox(height: 5),
                                Row(
                                  children: [
                                    RichText(
                                      textAlign: TextAlign.center,
                                      text: const TextSpan(children: <TextSpan>[
                                        TextSpan(
                                          text: 'L   ',
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1)),
                                        ),
                                        TextSpan(
                                            text: "8",
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    246, 88, 10, 1),
                                                fontWeight: FontWeight.bold)),
                                        TextSpan(
                                            text: "reps",
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    164, 164, 164, 1),
                                                fontWeight: FontWeight.bold)),
                                      ]),
                                    ),
                                    const SizedBox(width: 10),
                                    RichText(
                                      textAlign: TextAlign.center,
                                      text: const TextSpan(children: <TextSpan>[
                                        TextSpan(
                                          text: 'R   ',
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1)),
                                        ),
                                        TextSpan(
                                            text: "8",
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    246, 88, 10, 1),
                                                fontWeight: FontWeight.bold)),
                                        TextSpan(
                                            text: "reps",
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    164, 164, 164, 1),
                                                fontWeight: FontWeight.bold)),
                                      ]),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 10.0),
                      child: Divider(
                        color: Color.fromRGBO(89, 89, 89, 1),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color.fromRGBO(89, 89, 89, 1)),
                            height: height * 0.1,
                            width: width * 0.2,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Plank',
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1)),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  '2:00',
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1)),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          // Timerrr(),
          // TimerPickerPage(),
          // CupertinoTimerPickerSample()
        ],
      ),
    );
  }
}

// class TimerPickerPage extends StatefulWidget {
//   @override
//   _TimerPickerPageState createState() => _TimerPickerPageState();
// }

// class _TimerPickerPageState extends State<TimerPickerPage> {
//   Duration duration = Duration(minutes: 6, seconds: 30);
//   void _showDialog(Widget child) {
//     showCupertinoModalPopup<void>(
//         context: context,
//         builder: (BuildContext context) => Container(
//               height: 216,
//               padding: const EdgeInsets.only(top: 6.0),
//               // The Bottom margin is provided to align the popup above the system navigation bar.
//               margin: EdgeInsets.only(
//                 bottom: MediaQuery.of(context).viewInsets.bottom,
//               ),
//               // Provide a background color for the popup.
//               color: CupertinoColors.systemBackground.resolveFrom(context),
//               // Use a SafeArea widget to avoid system overlaps.
//               child: SafeArea(
//                 top: false,
//                 child: child,
//               ),
//             ));
//   }

//   String formatDuration(Duration duration) {
//     String twoDigits(int n) => n.toString().padLeft(2, '0');

//     final minutes = twoDigits(duration.inMinutes.remainder(60));
//     final seconds = twoDigits(duration.inSeconds.remainder(60));

//     return '$minutes:$seconds';
//   }

//   @override
//   Widget build(BuildContext context) {
//     final double width = MediaQuery.of(context).size.width;
//     final double height = MediaQuery.of(context).size.height;
//     return Padding(
//       padding: const EdgeInsets.all(10.0),
//       child: Container(
//         width: width,
//         child: Padding(
//           padding: const EdgeInsets.all(10.0),
//           child: CupertinoTheme(
//             data: CupertinoThemeData(
//               textTheme: CupertinoTextThemeData(
//                 dateTimePickerTextStyle: TextStyle(color: Colors.white),
//               ),
//             ),
//             child: CupertinoTimerPicker(
//               backgroundColor: Color.fromRGBO(20, 20, 20, 1),
//               initialTimerDuration: duration,
//               mode: CupertinoTimerPickerMode.ms,
//               minuteInterval: 1,
//               secondInterval: 1,
//               onTimerDurationChanged: (duration) =>
//                   setState(() => this.duration = duration),
//             ),
//           ),
//         ),

      
//       ),
//     );
//   }

// }

// class ButtonWidget extends StatelessWidget {
//   final VoidCallback onClicked;

//   const ButtonWidget({
//     Key? key,
//     required this.onClicked,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) => ElevatedButton(
//         style: ElevatedButton.styleFrom(minimumSize: Size(100, 42)),
//         child: Row(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Icon(Icons.more_time, size: 28),
//             const SizedBox(width: 8),
//             Text(
//               'Show Picker',
//               style: TextStyle(fontSize: 20),
//             ),
//           ],
//         ),
//         onPressed: onClicked,
//       );
// }

// class Utils {
//   static List<Widget> modelBuilder<M>(
//           List<M> models, Widget Function(int index, M model) builder) =>
//       models
//           .asMap()
//           .map<int, Widget>(
//               (index, model) => MapEntry(index, builder(index, model)))
//           .values
//           .toList();
//   static void showSheet(
//     BuildContext context, {
//     required Widget child,
//     required VoidCallback onClicked,
//   }) =>
//       showCupertinoModalPopup(
//         context: context,
//         builder: (context) => CupertinoActionSheet(
//           actions: [
//             child,
//           ],
//           cancelButton: CupertinoActionSheetAction(
//             child: Text('Done'),
//             onPressed: onClicked,
//           ),
//         ),
//       );

//   static void showSnackBar(BuildContext context, String text) {
//     final snackBar = SnackBar(
//       content: Text(text, style: TextStyle(fontSize: 24)),
//     );

//     ScaffoldMessenger.of(context)
//       ..removeCurrentSnackBar()
//       ..showSnackBar(snackBar);
//   }
// }

// class CupertinoTimerPickerSample extends StatefulWidget {
//   const CupertinoTimerPickerSample({Key? key}) : super(key: key);

//   @override
//   State<CupertinoTimerPickerSample> createState() =>
//       _CupertinoTimerPickerSampleState();
// }

// class _CupertinoTimerPickerSampleState
//     extends State<CupertinoTimerPickerSample> {
//   Duration duration = const Duration(hours: 1, minutes: 23);

//   // This shows a CupertinoModalPopup with a reasonable fixed height which hosts CupertinoTimerPicker.
//   void _showDialog(Widget child) {
//     showCupertinoModalPopup<void>(
//         context: context,
//         builder: (BuildContext context) => Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(15),
//                 color: Color.fromRGBO(20, 20, 20, 1),
//               ),
//               height: 2000,
//               padding: const EdgeInsets.only(top: 6.0),
//               // The Bottom margin is provided to align the popup above the system navigation bar.
//               margin: EdgeInsets.only(
//                 bottom: MediaQuery.of(context).viewInsets.bottom,
//               ),
//               // Provide a background color for the popup.
//               //color: CupertinoColors.systemBackground.resolveFrom(context),

//               // Use a SafeArea widget to avoid system overlaps.
//               child: SafeArea(top: false, child: Container()

//                   // Column(
//                   //   children: [
//                   //     child,
//                   //     Row(
//                   //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   //       children: [
//                   //         Padding(
//                   //           padding: const EdgeInsets.all(10.0),
//                   //           child: SizedBox(
//                   //             width: 85,
//                   //             child: TextButton(
//                   //               child: Row(
//                   //                 mainAxisAlignment: MainAxisAlignment.center,
//                   //                 children: const [
//                   //                   Text(
//                   //                     'Reset  ',
//                   //                     style: TextStyle(
//                   //                         color:
//                   //                             Color.fromRGBO(164, 164, 164, 1)),
//                   //                   ),
//                   //                   Icon(
//                   //                     Icons.refresh,
//                   //                     color: Color.fromRGBO(255, 75, 71, 1),
//                   //                     size: 15,
//                   //                   ),
//                   //                 ],
//                   //               ),
//                   //               style: TextButton.styleFrom(
//                   //                 primary: Colors.white,
//                   //                 backgroundColor:
//                   //                     const Color.fromRGBO(89, 89, 89, 1),
//                   //                 shape: RoundedRectangleBorder(
//                   //                   borderRadius: BorderRadius.circular(25.0),
//                   //                 ),
//                   //               ),
//                   //               onPressed: () {},
//                   //             ),
//                   //           ),
//                   //         ),
//                   //         Row(
//                   //           children: [
//                   //             Padding(
//                   //               padding: const EdgeInsets.only(
//                   //                   top: 10.0, bottom: 10, left: 10, right: 0),
//                   //               child: SizedBox(
//                   //                 width: 145,
//                   //                 child: TextButton(
//                   //                   child: Row(
//                   //                     mainAxisAlignment: MainAxisAlignment.center,
//                   //                     children: const [
//                   //                       Text(
//                   //                         'Mirror Chnage  ',
//                   //                         style: TextStyle(
//                   //                             color: Color.fromRGBO(
//                   //                                 164, 164, 164, 1)),
//                   //                       ),
//                   //                       Icon(
//                   //                         Icons.graphic_eq,
//                   //                         color: Color.fromRGBO(238, 240, 0, 1),
//                   //                         size: 15,
//                   //                       ),
//                   //                     ],
//                   //                   ),
//                   //                   style: TextButton.styleFrom(
//                   //                     primary: Colors.white,
//                   //                     backgroundColor:
//                   //                         const Color.fromRGBO(89, 89, 89, 1),
//                   //                     shape: RoundedRectangleBorder(
//                   //                       borderRadius: BorderRadius.circular(25.0),
//                   //                     ),
//                   //                   ),
//                   //                   onPressed: () {},
//                   //                 ),
//                   //               ),
//                   //             ),
//                   //             Padding(
//                   //               padding: const EdgeInsets.all(10.0),
//                   //               child: SizedBox(
//                   //                 width: 85,
//                   //                 child: TextButton(
//                   //                   child: Row(
//                   //                     mainAxisAlignment: MainAxisAlignment.center,
//                   //                     children: const [
//                   //                       Text(
//                   //                         'Delete  ',
//                   //                         style: TextStyle(
//                   //                             color: Color.fromRGBO(
//                   //                                 164, 164, 164, 1)),
//                   //                       ),
//                   //                       Icon(
//                   //                         Icons.delete,
//                   //                         color: Color.fromRGBO(255, 75, 71, 1),
//                   //                         size: 15,
//                   //                       ),
//                   //                     ],
//                   //                   ),
//                   //                   style: TextButton.styleFrom(
//                   //                     primary: Colors.white,
//                   //                     backgroundColor:
//                   //                         const Color.fromRGBO(89, 89, 89, 1),
//                   //                     shape: RoundedRectangleBorder(
//                   //                       borderRadius: BorderRadius.circular(25.0),
//                   //                     ),
//                   //                   ),
//                   //                   onPressed: () {},
//                   //                 ),
//                   //               ),
//                   //             ),
//                   //           ],
//                   //         ),
//                   //       ],
//                   //     ),
//                   //   ],
//                   // ),
//                   ),
//             ));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return CupertinoPageScaffold(
//       child: SizedBox(),
//     );
//   }
// }

// // This class simply decorates a row of widgets.
// class _TimerPickerItem extends StatelessWidget {
//   const _TimerPickerItem({required this.children});

//   final List<Widget> children;

//   @override
//   Widget build(BuildContext context) {
//     return DecoratedBox(
//       decoration: const BoxDecoration(
//         color: Color.fromRGBO(20, 20, 20, 1),
//         border: Border(
//           top: BorderSide(
//             color: CupertinoColors.inactiveGray,
//             width: 0.0,
//           ),
//           bottom: BorderSide(
//             color: CupertinoColors.inactiveGray,
//             width: 0.0,
//           ),
//         ),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 16.0),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: children,
//         ),
//       ),
//     );
//   }
// }

// class gggggg extends StatefulWidget {
//   const gggggg({Key? key}) : super(key: key);

//   @override
//   State<gggggg> createState() => _ggggggState();
// }

// class _ggggggState extends State<gggggg> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 200,
//       child: Column(
//         children: [
//           //  child,
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(10.0),
//                 child: SizedBox(
//                   width: 85,
//                   child: TextButton(
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: const [
//                         Text(
//                           'Reset  ',
//                           style: TextStyle(
//                               color: Color.fromRGBO(164, 164, 164, 1)),
//                         ),
//                         Icon(
//                           Icons.refresh,
//                           color: Color.fromRGBO(255, 75, 71, 1),
//                           size: 15,
//                         ),
//                       ],
//                     ),
//                     style: TextButton.styleFrom(
//                       primary: Colors.white,
//                       backgroundColor: const Color.fromRGBO(89, 89, 89, 1),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(25.0),
//                       ),
//                     ),
//                     onPressed: () {},
//                   ),
//                 ),
//               ),
//               Row(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(
//                         top: 10.0, bottom: 10, left: 10, right: 0),
//                     child: SizedBox(
//                       width: 145,
//                       child: TextButton(
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: const [
//                             Text(
//                               'Mirror Chnage  ',
//                               style: TextStyle(
//                                   color: Color.fromRGBO(164, 164, 164, 1)),
//                             ),
//                             Icon(
//                               Icons.graphic_eq,
//                               color: Color.fromRGBO(238, 240, 0, 1),
//                               size: 15,
//                             ),
//                           ],
//                         ),
//                         style: TextButton.styleFrom(
//                           primary: Colors.white,
//                           backgroundColor: const Color.fromRGBO(89, 89, 89, 1),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(25.0),
//                           ),
//                         ),
//                         onPressed: () {},
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(10.0),
//                     child: SizedBox(
//                       width: 85,
//                       child: TextButton(
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: const [
//                             Text(
//                               'Delete  ',
//                               style: TextStyle(
//                                   color: Color.fromRGBO(164, 164, 164, 1)),
//                             ),
//                             Icon(
//                               Icons.delete,
//                               color: Color.fromRGBO(255, 75, 71, 1),
//                               size: 15,
//                             ),
//                           ],
//                         ),
//                         style: TextButton.styleFrom(
//                           primary: Colors.white,
//                           backgroundColor: const Color.fromRGBO(89, 89, 89, 1),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(25.0),
//                           ),
//                         ),
//                         onPressed: () {},
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
