// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

class BodyShape extends StatefulWidget {
  const BodyShape({Key? key}) : super(key: key);

  @override
  State<BodyShape> createState() => _BodyShapeState();
}

class _BodyShapeState extends State<BodyShape> {
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
                  width: width,
                  child: Image.asset(
                    "assets/loseFat.jpg",
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
                      "Foods for shape your body",
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
      body: GridView.count(
        primary: false,
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            child: Column(
              children: [
                Container(
                  height: 120,
                  padding: const EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: const DecorationImage(
                          image: AssetImage("assets/leanBeef.jpeg"),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  'Lean Beef',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  height: 120,
                  padding: const EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: const DecorationImage(
                          image: AssetImage("assets/tofu.jpg"),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  'Tofu',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  height: 120,
                  padding: const EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: const DecorationImage(
                          image: AssetImage("assets/spinach.jpg"),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  'Spinach',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  height: 120,
                  padding: const EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: const DecorationImage(
                          image: AssetImage("assets/cottageCheese.jpg"),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  'Cottage Cheese',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
