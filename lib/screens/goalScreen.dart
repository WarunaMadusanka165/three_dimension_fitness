// ignore_for_file: file_names, unused_local_variable

import 'package:flutter/material.dart';

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
            child: Container(
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
                      child: IconButton(
                          onPressed: () => {},
                          icon: const Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 15,
                            color: Color.fromRGBO(255, 255, 255, 1),
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0, left: 10, right: 10),
            child: Container(
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
                      child: IconButton(
                          onPressed: () => {},
                          icon: const Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 15,
                            color: Color.fromRGBO(255, 255, 255, 1),
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0, left: 10, right: 10),
            child: Container(
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
                      child: IconButton(
                          onPressed: () => {},
                          icon: const Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 15,
                            color: Color.fromRGBO(255, 255, 255, 1),
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0, left: 10, right: 10),
            child: Container(
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
                          Icons.ac_unit,
                          color: Color.fromRGBO(255, 104, 26, 1),
                        )),
                    const Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Text(
                        'Ger Stronger',
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromRGBO(164, 164, 164, 1)),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: IconButton(
                          onPressed: () => {},
                          icon: const Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 15,
                            color: Color.fromRGBO(255, 255, 255, 1),
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0, left: 10, right: 10),
            child: Container(
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
                          Icons.access_time_filled_sharp,
                          color: Color.fromRGBO(255, 104, 26, 1),
                        )),
                    const Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Text(
                        'Build Muscle',
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromRGBO(164, 164, 164, 1)),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: IconButton(
                          onPressed: () => {},
                          icon: const Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 15,
                            color: Color.fromRGBO(255, 255, 255, 1),
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0, left: 10, right: 10),
            child: Container(
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
                      child: IconButton(
                          onPressed: () => {},
                          icon: const Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 15,
                            color: Color.fromRGBO(255, 255, 255, 1),
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0, left: 10, right: 10),
            child: Container(
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
                          Icons.account_circle_sharp,
                          color: Color.fromRGBO(255, 104, 26, 1),
                        )),
                    const Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Text(
                        'General Fitness',
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromRGBO(164, 164, 164, 1)),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: IconButton(
                          onPressed: () => {},
                          icon: const Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 15,
                            color: Color.fromRGBO(255, 255, 255, 1),
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0, left: 10, right: 10),
            child: Container(
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
                          Icons.add_alert,
                          color: Color.fromRGBO(255, 104, 26, 1),
                        )),
                    const Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Text(
                        'Increase Stemina',
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromRGBO(164, 164, 164, 1)),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: IconButton(
                          onPressed: () => {},
                          icon: const Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 15,
                            color: Color.fromRGBO(255, 255, 255, 1),
                          )),
                    ),
                  ],
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
