// // ignore_for_file: unused_local_variable

// import 'package:flutter/material.dart';

// class ImproveCardio extends StatefulWidget {
//   const ImproveCardio({Key? key}) : super(key: key);

//   @override
//   State<ImproveCardio> createState() => _ImproveCardioState();
// }

// class _ImproveCardioState extends State<ImproveCardio> {
//   @override
//   Widget build(BuildContext context) {
//     final double width = MediaQuery.of(context).size.width;
//     final double height = MediaQuery.of(context).size.height;
//     return Scaffold(
//       appBar: PreferredSize(
//         preferredSize: Size.fromHeight(220), // Set this height
//         child: Container(
//           decoration: BoxDecoration(
//               image: DecorationImage(
//                   image: AssetImage("assets/improveCardio.jpg"),
//                   fit: BoxFit.cover)),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.only(left: 15.0),
//         child: GridView.count(
//           primary: false,
//           padding: const EdgeInsets.all(20),
//           crossAxisSpacing: 20,
//           mainAxisSpacing: 20,
//           crossAxisCount: 2,
//           children: <Widget>[
//             Container(
//               padding: const EdgeInsets.all(8),
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(12),
//                   image: const DecorationImage(
//                       image: AssetImage("assets/freshApple.jpg"),
//                       fit: BoxFit.cover)),
//             ),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   'Fresh Apple',
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
//                 ),
//               ],
//             ),
//             Container(
//               padding: const EdgeInsets.all(8),
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(12),
//                   image: const DecorationImage(
//                       image: AssetImage("assets/Avacardo.jpg"),
//                       fit: BoxFit.cover)),
//             ),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   'Avacardo',
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
//                 ),
//               ],
//             ),
//             Container(
//               padding: const EdgeInsets.all(8),
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(12),
//                   image: const DecorationImage(
//                       image: AssetImage("assets/marmite.jpg"),
//                       fit: BoxFit.cover)),
//             ),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   'Marmite',
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
//                 ),
//               ],
//             ),
//           ],
//         ),
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
import 'package:three_dimension_fitness/screens/improveCardioScreen2.dart';

class ImproveCardio extends StatefulWidget {
  const ImproveCardio({Key? key}) : super(key: key);

  @override
  State<ImproveCardio> createState() => _ImproveCardioState();
}

class _ImproveCardioState extends State<ImproveCardio> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(220), // Set this height
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: NetworkImage(
                          "https://firebasestorage.googleapis.com/v0/b/three-dimension-fitness.appspot.com/o/improveCardio%2FimproveCardio.jpg?alt=media&token=3e74d0cc-e84a-419f-9a56-7afd44d58a9a"),
                      fit: BoxFit.cover)),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(
                  bottom: 20.0,
                  left: 10,
                  right: 10,
                ),
                child: Text(
                  'Foods for improve your cardio',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.yellow,
                      fontWeight: FontWeight.w400),
                ),
              ),
            )
            // Center(
            //   child: Text('kdsgjjhds'),
            // )
          ],
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: const DecorationImage(
                            image: NetworkImage(
                                "https://firebasestorage.googleapis.com/v0/b/three-dimension-fitness.appspot.com/o/improveCardio%2FfreshApple.jpg?alt=media&token=de1a6e10-931c-422f-9542-e31e1e38ee99"),
                            fit: BoxFit.cover)),
                    width: width / 2 - 20,
                    height: height * 0.17,
                  ),
                ),
                SizedBox(width: 20),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Text(
                    'Fresh Apple',
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
                            image: NetworkImage(
                                "https://firebasestorage.googleapis.com/v0/b/three-dimension-fitness.appspot.com/o/improveCardio%2FAvacardo.jpg?alt=media&token=f7238688-4848-449d-8ec1-b66efe435e14"),
                            fit: BoxFit.cover)),
                    width: width / 2 - 20,
                    height: height * 0.17,
                  ),
                ),
                SizedBox(width: 20),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Text(
                    'Avacardo',
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
                            image: NetworkImage(
                                "https://firebasestorage.googleapis.com/v0/b/three-dimension-fitness.appspot.com/o/improveCardio%2Fmarmite.jpg?alt=media&token=af095601-61cc-4395-b70f-15b598b5e5b5"),
                            fit: BoxFit.cover)),
                    width: width / 2 - 20,
                    height: height * 0.17,
                  ),
                ),
                SizedBox(width: 20),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Text(
                    'Marmite',
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
                          Icons.arrow_right,
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
                        MaterialPageRoute(
                            builder: (context) => (ImproveCardio2())),
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
