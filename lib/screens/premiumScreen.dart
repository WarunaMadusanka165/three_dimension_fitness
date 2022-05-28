// ignore_for_file: deprecated_member_use, unused_local_variable

import 'package:flutter/material.dart';
import 'package:three_dimension_fitness/screens/homeScreen.dart';
import 'package:three_dimension_fitness/screens/statusScreen.dart';

class Premium extends StatelessWidget {
  const Premium({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    var themeData =
        Theme.of(context).copyWith(scaffoldBackgroundColor: Colors.black);
    return Scaffold(
        //  backgroundColor: themeData.scaffoldBackgroundColor,
        bottomNavigationBar: Container(
          height: 50,
          color: const Color.fromRGBO(20, 20, 20, 1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => (HomePage())),
                    );
                  },
                  child: const Icon(
                    Icons.home_filled,
                    size: 25,
                  )),
              FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => (Status())),
                    );
                  },
                  child: const Icon(
                    Icons.open_in_new,
                    size: 25,
                  )),
              FlatButton(
                  onPressed: () {},
                  child: const Icon(
                    Icons.notifications_outlined,
                    size: 25,
                    color: Color.fromRGBO(255, 104, 26, 1),
                  ))
            ],
          ),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('3DFitness', style: TextStyle(fontSize: 25)),
                  SizedBox(width: 5),
                  Text('Premium',
                      style: TextStyle(
                          color: Color.fromRGBO(255, 104, 26, 1), fontSize: 25))
                ],
              ),
            ),
            SizedBox(height: 50),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: const LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color.fromRGBO(255, 74, 29, 1),
                              Color.fromRGBO(255, 104, 26, 1)
                            ],
                          )),
                      height: height * 0.1,
                      width: width * 0.2,
                      child: Icon(
                        Icons.watch,
                        color: Colors.black,
                        size: 45,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: const LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color.fromRGBO(255, 74, 29, 1),
                              Color.fromRGBO(255, 104, 26, 1)
                            ],
                          )),
                      height: height * 0.1,
                      width: width * 0.2,
                      child: const Icon(
                        Icons.fitness_center,
                        color: Colors.black,
                        size: 45,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: const LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color.fromRGBO(255, 74, 29, 1),
                              Color.fromRGBO(255, 104, 26, 1)
                            ],
                          )),
                      height: height * 0.1,
                      width: width * 0.2,
                      child: const Icon(
                        Icons.music_note,
                        color: Colors.black,
                        size: 45,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60.0, bottom: 10),
                  child: Text(
                    'Improved workout experience',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30.0),
                  child: Text(
                    'Apple Watch App, Plate Calculator, Music Control,Change Exercise ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromRGBO(164, 164, 164, 1), fontSize: 15),
                  ),
                ),
              ],
            ),
            SizedBox(height: height * 0.06),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 20),
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: const LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color.fromRGBO(255, 74, 29, 1),
                              Color.fromRGBO(255, 104, 26, 1)
                            ],
                          )),
                      height: height * 0.18,
                      width: width / 2 - 15,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 15.0, bottom: 10, left: 15),
                                child: Text(
                                  'One year',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                              )
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 15.0),
                            child: Text(
                              "\$4.99 / mo",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 27),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 15.0),
                            child: Text(
                              '\$59.99',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromRGBO(213, 213, 213, 1)),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 30.0, left: 15),
                            child: Text(
                              '7 days free trail',
                            ),
                          )
                        ],
                      )),
                ),
                const SizedBox(width: 10),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0, top: 20),
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromRGBO(20, 20, 20, 1)),
                      height: height * 0.18,
                      width: width / 2 - 15,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 15.0, bottom: 10, left: 15),
                                child: Text(
                                  'One month',
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 15.0, top: 40),
                            child: Text(
                              "\$9.99",
                              style: TextStyle(
                                  color: Color.fromRGBO(255, 104, 26, 1),
                                  fontSize: 25),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(
                              left: 15.0,
                              top: 10,
                            ),
                            child: Text(
                              'Billed monthly',
                              style: TextStyle(
                                  color: Color.fromRGBO(164, 164, 164, 1)),
                            ),
                          )
                        ],
                      )),
                ),
              ],
            ),
            SizedBox(height: height * 0.1),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                child: Ink(
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(colors: [
                        Color.fromRGBO(255, 74, 29, 1),
                        Color.fromRGBO(255, 104, 26, 1)
                      ]),
                      borderRadius: BorderRadius.circular(20)),
                  child: Container(
                    width: width - 20,
                    height: 50,
                    alignment: Alignment.center,
                    child: const Text(
                      'Continue',
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: height * 0.03),
            const Center(
              child: Text(
                'Restore Purchase . Terms & Conditions',
                style: TextStyle(color: Color.fromRGBO(164, 164, 164, 1)),
              ),
            ),
            SizedBox(height: 20)
          ],
        ));
  }
}
