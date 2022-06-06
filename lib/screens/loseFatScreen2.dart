// // ignore_for_file: unused_local_variable

// import 'package:flutter/material.dart';
// import 'package:three_dimension_fitness/screens/loseFatScreen.dart';

// class LoseFat2 extends StatefulWidget {
//   const LoseFat2({Key? key}) : super(key: key);

//   @override
//   State<LoseFat2> createState() => _LoseFat2State();
// }

// class _LoseFat2State extends State<LoseFat2> {
//   @override
//   Widget build(BuildContext context) {
//     final double width = MediaQuery.of(context).size.width;
//     final double height = MediaQuery.of(context).size.height;
//     return Scaffold(
//       appBar: PreferredSize(
//         preferredSize: Size.fromHeight(220), // Set this height
//         child: Container(
//           decoration: BoxDecoration(
//               image: const DecorationImage(
//                   image: AssetImage("assets/bodyShape.jpg"),
//                   fit: BoxFit.cover)),
//         ),
//       ),
//       body: Column(
//         //crossAxisAlignment: CrossAxisAlignment.end,
//         children: [
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.only(left: 15.0),
//               child: GridView.count(
//                 primary: false,
//                 padding: const EdgeInsets.all(20),
//                 crossAxisSpacing: 20,
//                 mainAxisSpacing: 20,
//                 crossAxisCount: 2,
//                 children: <Widget>[
//                   Container(
//                     padding: const EdgeInsets.all(8),
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(12),
//                         image: const DecorationImage(
//                             image: AssetImage("assets/eggs.jpg"),
//                             fit: BoxFit.cover)),
//                   ),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         'Eggs',
//                         style: TextStyle(
//                             fontSize: 20, fontWeight: FontWeight.w400),
//                       ),
//                     ],
//                   ),
//                   Container(
//                     padding: const EdgeInsets.all(8),
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(12),
//                         image: const DecorationImage(
//                             image: AssetImage("assets/greenTea.jpg"),
//                             fit: BoxFit.cover)),
//                   ),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         'Green Tea',
//                         style: TextStyle(
//                             fontSize: 20, fontWeight: FontWeight.w400),
//                       ),
//                     ],
//                   ),
//                   Container(
//                     padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(12),
//                         image: const DecorationImage(
//                             image: AssetImage("assets/AppleCiderVinegar.jpg"),
//                             fit: BoxFit.cover)),
//                   ),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         'Apple Cider Vinegar',
//                         style: TextStyle(
//                             fontSize: 20, fontWeight: FontWeight.w400),
//                       ),

//                       // Row(
//                       //   //crossAxisAlignment: CrossAxisAlignment.end,
//                       //   mainAxisAlignment: MainAxisAlignment.end,
//                       //   children: [
//                       //     Padding(
//                       //       padding: const EdgeInsets.only(top: 20.0),
//                       //       child: IconButton(
//                       //           onPressed: () {},
//                       //           icon: Icon(
//                       //             Icons.arrow_right,
//                       //             size: 80,
//                       //           )),
//                       //     )
//                       //   ],
//                       // )
//                     ],
//                   ),
//                   Container(),
//                   Container(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.end,
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Padding(
//                           padding:
//                               const EdgeInsets.only(right: 30.0, bottom: 30),
//                           child: IconButton(
//                               onPressed: () {
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                       builder: (context) => (LoseFat())),
//                                 );
//                               },
//                               icon: Icon(
//                                 Icons.arrow_left,
//                                 size: 100,
//                                 color: Colors.green,
//                               )),
//                         ),
//                       ],
//                     ),
//                   ),
//                   // Row(
//                   //   crossAxisAlignment: CrossAxisAlignment.end,
//                   //   mainAxisAlignment: MainAxisAlignment.end,
//                   //   children: [
//                   //     IconButton(
//                   //         onPressed: () {},
//                   //         icon: Icon(
//                   //           Icons.arrow_right,
//                   //           size: 80,
//                   //         ))
//                   //   ],
//                   // )
//                 ],
//               ),
//             ),
//           ),
//           // Padding(
//           //   padding: const EdgeInsets.only(right: 50),
//           //   child: IconButton(
//           //       onPressed: () {},
//           //       icon: Icon(
//           //         Icons.arrow_right,
//           //         size: 80,
//           //         color: Colors.green,
//           //       )),
//           // ),
//           // SizedBox(
//           //   height: 20,
//           // )
//         ],
//       ),
//     );
//   }
// }

// // ignore_for_file: unused_local_variable

// import 'package:flutter/material.dart';
// import 'package:three_dimension_fitness/screens/loseFatScreen2.dart';

// class LoseFat extends StatefulWidget {
//   const LoseFat({Key? key}) : super(key: key);

//   @override
//   State<LoseFat> createState() => _LoseFatState();
// }

// class _LoseFatState extends State<LoseFat> {
//   @override
//   Widget build(BuildContext context) {
//     final double width = MediaQuery.of(context).size.width;
//     final double height = MediaQuery.of(context).size.height;
//     return Scaffold(
//       appBar: PreferredSize(
//         preferredSize: Size.fromHeight(220), // Set this height
//         child: Container(
//           decoration: BoxDecoration(
//               image: const DecorationImage(
//                   image: AssetImage("assets/bodyShape.jpg"),
//                   fit: BoxFit.cover)),
//         ),
//       ),
//       body: Column(
//         //crossAxisAlignment: CrossAxisAlignment.end,
//         children: [
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.only(left: 15.0),
//               child: GridView.count(
//                 primary: false,
//                 padding: const EdgeInsets.all(20),
//                 crossAxisSpacing: 20,
//                 mainAxisSpacing: 20,
//                 crossAxisCount: 2,
//                 children: <Widget>[
//                   Container(
//                     padding: const EdgeInsets.all(8),
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(12),
//                         image: const DecorationImage(
//                             image: AssetImage("assets/fattyFish.jpg"),
//                             fit: BoxFit.cover)),
//                   ),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         'Fatty Fish',
//                         style: TextStyle(
//                             fontSize: 20, fontWeight: FontWeight.w400),
//                       ),
//                     ],
//                   ),
//                   Container(
//                     padding: const EdgeInsets.all(8),
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(12),
//                         image: const DecorationImage(
//                             image: AssetImage("assets/mctOil.jpg"),
//                             fit: BoxFit.cover)),
//                   ),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         'MCT Oil',
//                         style: TextStyle(
//                             fontSize: 20, fontWeight: FontWeight.w400),
//                       ),
//                     ],
//                   ),
//                   Container(
//                     padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(12),
//                         image: const DecorationImage(
//                             image: AssetImage("assets/coffee1.jpg"),
//                             fit: BoxFit.cover)),
//                   ),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         '100% Pure Coffee',
//                         style: TextStyle(
//                             fontSize: 20, fontWeight: FontWeight.w400),
//                       ),

//                       // Row(
//                       //   //crossAxisAlignment: CrossAxisAlignment.end,
//                       //   mainAxisAlignment: MainAxisAlignment.end,
//                       //   children: [
//                       //     Padding(
//                       //       padding: const EdgeInsets.only(top: 20.0),
//                       //       child: IconButton(
//                       //           onPressed: () {},
//                       //           icon: Icon(
//                       //             Icons.arrow_right,
//                       //             size: 80,
//                       //           )),
//                       //     )
//                       //   ],
//                       // )
//                     ],
//                   ),
//                   Container(),
//                   Container(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.end,
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.only(right: 30.0),
//                           child: IconButton(
//                               onPressed: () {
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                       builder: (context) => (LoseFat2())),
//                                 );
//                               },
//                               icon: Icon(
//                                 Icons.arrow_right,
//                                 size: 100,
//                                 color: Colors.green,
//                               )),
//                         ),
//                       ],
//                     ),
//                   ),
//                   // Row(
//                   //   crossAxisAlignment: CrossAxisAlignment.end,
//                   //   mainAxisAlignment: MainAxisAlignment.end,
//                   //   children: [
//                   //     IconButton(
//                   //         onPressed: () {},
//                   //         icon: Icon(
//                   //           Icons.arrow_right,
//                   //           size: 80,
//                   //         ))
//                   //   ],
//                   // )
//                 ],
//               ),
//             ),
//           ),
//           // Padding(
//           //   padding: const EdgeInsets.only(right: 50),
//           //   child: IconButton(
//           //       onPressed: () {},
//           //       icon: Icon(
//           //         Icons.arrow_right,
//           //         size: 80,
//           //         color: Colors.green,
//           //       )),
//           // ),
//           // SizedBox(
//           //   height: 20,
//           // )
//         ],
//       ),
//     );
//   }
// }

// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:three_dimension_fitness/screens/loseFatScreen.dart';

class LoseFat2 extends StatefulWidget {
  const LoseFat2({Key? key}) : super(key: key);

  @override
  State<LoseFat2> createState() => _LoseFat2State();
}

class _LoseFat2State extends State<LoseFat2> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(220), // Set this height
          child: Container(
            child: Stack(
              children: [
                Container(
                  height: 250,
                  child: Image.asset(
                    "assets/bodyShape.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  width: double.infinity,
                  color: Colors.black.withOpacity(0.4),
                  margin: EdgeInsets.only(top: 30, left: 30, right: 30),
                  padding: EdgeInsets.all(20),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 10.0, right: 10, top: 10),
                    child: Text(
                      "Foods for lost your fat",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.yellow,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ],
            ),
          )

          // Stack(
          //   children: [
          //     Container(
          //       width: double.infinity,
          //       margin: EdgeInsets.only(top: 20),
          //       padding: EdgeInsets.only(top: 200),
          //       child: Text(
          //         "Hello Everyone! This is FlutterCampus",
          //         style: TextStyle(fontSize: 25, color: Colors.white),
          //       ),
          //       decoration: BoxDecoration(
          //           color: Color.fromARGB(100, 22, 44, 33),
          //           image: const DecorationImage(
          //               image: AssetImage("assets/bodyShape.jpg"),
          //               fit: BoxFit.cover)),
          //     ),
          //     Align(
          //       alignment: Alignment.topCenter,
          //       child: Padding(
          //         padding: const EdgeInsets.only(
          //             bottom: 20.0, left: 20, right: 20, top: 30),
          //         child: Text(
          //           'Foods for lost your fat',
          //           textAlign: TextAlign.center,
          //           style: TextStyle(
          //               fontSize: 40,
          //               color: Colors.yellow,
          //               fontWeight: FontWeight.w400),
          //         ),
          //       ),
          //     )
          //     // Center(
          //     //   child: Text('kdsgjjhds'),
          //     // )
          //   ],
          // ),
          ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, left: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: const DecorationImage(
                            image: AssetImage("assets/eggs.jpg"),
                            fit: BoxFit.cover)),
                    width: width / 2 - 20,
                    height: height * 0.17,
                  ),
                ),
                SizedBox(width: 20),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Text(
                    'Eggs',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, left: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: const DecorationImage(
                            image: AssetImage("assets/greenTea.jpg"),
                            fit: BoxFit.cover)),
                    width: width / 2 - 20,
                    height: height * 0.17,
                  ),
                ),
                SizedBox(width: 20),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Text(
                    'Green Tea',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, left: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: const DecorationImage(
                            image: AssetImage("assets/AppleCiderVinegar.jpg"),
                            fit: BoxFit.cover)),
                    width: width / 2 - 20,
                    height: height * 0.17,
                  ),
                ),
                SizedBox(width: 20),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Text(
                    'Apple Cider Vinegar',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: SizedBox(
                  width: 80,
                  child: TextButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.arrow_left,
                          color: Colors.green,
                          size: 60,
                        ),
                      ],
                    ),
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => (LoseFat())),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
