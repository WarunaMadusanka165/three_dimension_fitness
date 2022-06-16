// ignore_for_file: file_names, unused_local_variable

import 'package:flutter/material.dart';
import 'package:three_dimension_fitness/screens/becomeFlexibleScreen.dart';
import 'package:three_dimension_fitness/screens/bodyShapeScreen.dart';
import 'package:three_dimension_fitness/screens/improveCardioScreen.dart';
import 'package:three_dimension_fitness/screens/loseFatScreen.dart';

class Goal extends StatefulWidget {
  const Goal({Key? key}) : super(key: key);

  @override
  _GoalState createState() => _GoalState();
}

class _GoalState extends State<Goal> {
  bool isButtonPressed = false;
  int total = 0;
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    var themeData =
        Theme.of(context).copyWith(scaffoldBackgroundColor: Colors.black);
    return Scaffold(
      backgroundColor: themeData.scaffoldBackgroundColor,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          "Your fitness goal",
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 10, right: 10),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => (LoseFat())),
                );
              },
              child: Container(
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromRGBO(20, 20, 20, 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                  child: Row(
                    children: [
                      const Padding(
                          padding: EdgeInsets.only(left: 15.0),
                          child: Icon(
                            Icons.settings,
                            color: Color.fromRGBO(255, 104, 26, 1),
                          )),
                      const Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: Text(
                          'Lose Fat',
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromRGBO(164, 164, 164, 1)),
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 15,
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => (ImproveCardio())),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 5.0, left: 10, right: 10),
              child: Container(
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromRGBO(20, 20, 20, 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                  child: Row(
                    children: [
                      const Padding(
                          padding: EdgeInsets.only(left: 15.0),
                          child: Icon(
                            Icons.health_and_safety_sharp,
                            color: Color.fromRGBO(255, 104, 26, 1),
                          )),
                      const Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: Text(
                          'Improve Cardio',
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromRGBO(164, 164, 164, 1)),
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 15,
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => (BodyShape())),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 5.0, left: 10, right: 10),
              child: Container(
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromRGBO(20, 20, 20, 1)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                  child: Row(
                    children: [
                      const Padding(
                          padding: EdgeInsets.only(left: 15.0),
                          child: Icon(
                            Icons.access_alarm,
                            color: Color.fromRGBO(255, 104, 26, 1),
                          )),
                      const Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: Text(
                          'Body Shape',
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromRGBO(164, 164, 164, 1)),
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 15,
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => (BecomeFlexible())),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 5.0, left: 10, right: 10),
              child: Container(
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromRGBO(20, 20, 20, 1)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                  child: Row(
                    children: [
                      const Padding(
                          padding: EdgeInsets.only(left: 15.0),
                          child: Icon(
                            Icons.account_tree_sharp,
                            color: Color.fromRGBO(255, 104, 26, 1),
                          )),
                      const Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: Text(
                          'Become Flexible',
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromRGBO(164, 164, 164, 1)),
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 15,
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
