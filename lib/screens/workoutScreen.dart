// ignore_for_file: file_names, use_key_in_widget_constructors, unused_local_variable, deprecated_member_use, camel_case_types

import 'package:flutter/material.dart';
import 'package:three_dimension_fitness/screens/freeStyleScreen.dart';
import 'package:three_dimension_fitness/screens/newScreen.dart';
import 'package:three_dimension_fitness/screens/premiumScreen.dart';
import 'package:three_dimension_fitness/screens/profileScreen.dart';
import 'package:three_dimension_fitness/screens/statusScreen.dart';

class Workout extends StatefulWidget {
  @override
  _WorkoutState createState() => _WorkoutState();
}

class _WorkoutState extends State<Workout> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    var themeData =
        Theme.of(context).copyWith(scaffoldBackgroundColor: Colors.black);
    return Scaffold(
        bottomNavigationBar: Container(
          height: 50,
          color: const Color.fromRGBO(20, 20, 20, 1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FlatButton(
                  onPressed: () {},
                  child: const Icon(
                    Icons.home_filled,
                    size: 25,
                    color: Color.fromRGBO(255, 104, 26, 1),
                  )),
              FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => (const Status())),
                    );
                  },
                  child: const Icon(
                    Icons.open_in_new,
                    size: 25,
                    color: Color.fromRGBO(241, 240, 244, 1),
                  )),
              FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => (const Premium())),
                    );
                  },
                  child: const Icon(
                    Icons.notifications_outlined,
                    size: 25,
                    color: Color.fromRGBO(241, 240, 244, 1),
                  ))
            ],
          ),
        ),
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text(
            "Workout",
            style: TextStyle(fontSize: 25),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
          actions: <Widget>[
            // Using Stack to show Notification Badge
            Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => (const Profile())),
                      );
                    },
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(89, 89, 89, 1),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.only(
                top: 10.0, bottom: 5, left: 15, right: 15),
            child: Row(
              children: [
                Text(
                  'New',
                  style: TextStyle(
                      fontSize: 20, color: Color.fromRGBO(164, 164, 164, 1)),
                ),
                const Spacer(),
                FractionallySizedBox(
                  child: TextButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Calendar ',
                          style: TextStyle(
                              color: Color.fromRGBO(164, 164, 164, 1)),
                        ),
                        Icon(
                          Icons.chevron_right,
                          color: Color.fromRGBO(164, 164, 164, 1),
                        ),
                      ],
                    ),
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: const Color.fromRGBO(20, 20, 20, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => (New())),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20.0),
            height: 350.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10.0, left: 20, right: 10, bottom: 10),
                  child: Container(
                      width: width - 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          image: const DecorationImage(
                              image: NetworkImage(
                                  "https://firebasestorage.googleapis.com/v0/b/three-dimension-fitness.appspot.com/o/workOut%2F2(1).jpg?alt=media&token=3a963e5f-6038-4090-9cb3-d9b2794fd301"),
                              fit: BoxFit.cover)),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(25)),
                              height: 75,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 5.0, top: 5.0),
                                    child: Column(children: [
                                      Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                const Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 15.0),
                                                  child: Text(
                                                    'Calisthenics l',
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        color: Color.fromRGBO(
                                                            223, 223, 223, 1)),
                                                  ),
                                                ),
                                                const Spacer(),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 15.0),
                                                  child: FractionallySizedBox(
                                                    child: TextButton(
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: const [
                                                          Text(
                                                            'Free ',
                                                            style: TextStyle(
                                                                color: Color
                                                                    .fromRGBO(
                                                                        164,
                                                                        164,
                                                                        164,
                                                                        1)),
                                                          ),
                                                          Icon(
                                                            Icons.chevron_right,
                                                            color:
                                                                Color.fromRGBO(
                                                                    164,
                                                                    164,
                                                                    164,
                                                                    1),
                                                          ),
                                                        ],
                                                      ),
                                                      style:
                                                          TextButton.styleFrom(
                                                        primary: Colors.white,
                                                        backgroundColor:
                                                            const Color
                                                                    .fromRGBO(
                                                                20, 20, 20, 1),
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      20.0),
                                                        ),
                                                      ),
                                                      onPressed: () {},
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const Padding(
                                              padding:
                                                  EdgeInsets.only(left: 15.0),
                                              child: Text(
                                                '3 workouts per week',
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        223, 223, 223, 1),
                                                    fontWeight:
                                                        FontWeight.bold),
                                                textAlign: TextAlign.right,
                                              ),
                                            ),
                                          ]),
                                    ]),
                                  ),
                                ],
                              )),
                        ],
                      )),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 10, bottom: 10.0, right: 10),
                  child: Container(
                      width: width - 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          image: const DecorationImage(
                              image: NetworkImage(
                                  "https://firebasestorage.googleapis.com/v0/b/three-dimension-fitness.appspot.com/o/workOut%2F2(2).jpg?alt=media&token=1173db1d-3f15-4996-8b90-8ccfd6eac683"),
                              fit: BoxFit.cover)),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Container(
                              height: 75,
                              color: Colors.black.withOpacity(0.5),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 5.0, top: 5.0),
                                    child: Column(children: [
                                      Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                const Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 15.0),
                                                  child: Text(
                                                    'Calisthenics l',
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        color: Color.fromRGBO(
                                                            223, 223, 223, 1)),
                                                  ),
                                                ),
                                                const Spacer(),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 15.0),
                                                  child: FractionallySizedBox(
                                                    child: TextButton(
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: const [
                                                          Text(
                                                            'Free ',
                                                            style: TextStyle(
                                                                color: Color
                                                                    .fromRGBO(
                                                                        164,
                                                                        164,
                                                                        164,
                                                                        1)),
                                                          ),
                                                          Icon(
                                                            Icons.chevron_right,
                                                            color:
                                                                Color.fromRGBO(
                                                                    164,
                                                                    164,
                                                                    164,
                                                                    1),
                                                          ),
                                                        ],
                                                      ),
                                                      style:
                                                          TextButton.styleFrom(
                                                        primary: Colors.white,
                                                        backgroundColor:
                                                            const Color
                                                                    .fromRGBO(
                                                                20, 20, 20, 1),
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      20.0),
                                                        ),
                                                      ),
                                                      onPressed: () {},
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const Padding(
                                              padding:
                                                  EdgeInsets.only(left: 15.0),
                                              child: Text(
                                                '3 workouts per week',
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        223, 223, 223, 1),
                                                    fontWeight:
                                                        FontWeight.bold),
                                                textAlign: TextAlign.right,
                                              ),
                                            ),
                                          ]),
                                    ]),
                                  ),
                                ],
                              )),
                        ],
                      )),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 10, bottom: 10.0, right: 10),
                  child: Container(
                      width: width - 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          image: const DecorationImage(
                              image: NetworkImage(
                                  "https://firebasestorage.googleapis.com/v0/b/three-dimension-fitness.appspot.com/o/workOut%2F2(3).jpg?alt=media&token=cdc2db50-2b4b-4ec6-ae88-287a7e0ad3a3"),
                              fit: BoxFit.cover)),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Container(
                              height: 75,
                              color: Colors.black.withOpacity(0.5),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 5.0, top: 5.0),
                                    child: Column(children: [
                                      Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                const Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 15.0),
                                                  child: Text(
                                                    'Calisthenics l',
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        color: Color.fromRGBO(
                                                            223, 223, 223, 1)),
                                                  ),
                                                ),
                                                const Spacer(),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 15.0),
                                                  child: FractionallySizedBox(
                                                    child: TextButton(
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: const [
                                                          Text(
                                                            'Free ',
                                                            style: TextStyle(
                                                                color: Color
                                                                    .fromRGBO(
                                                                        164,
                                                                        164,
                                                                        164,
                                                                        1)),
                                                          ),
                                                          Icon(
                                                            Icons.chevron_right,
                                                            color:
                                                                Color.fromRGBO(
                                                                    164,
                                                                    164,
                                                                    164,
                                                                    1),
                                                          ),
                                                        ],
                                                      ),
                                                      style:
                                                          TextButton.styleFrom(
                                                        primary: Colors.white,
                                                        backgroundColor:
                                                            const Color
                                                                    .fromRGBO(
                                                                20, 20, 20, 1),
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      20.0),
                                                        ),
                                                      ),
                                                      onPressed: () {},
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const Padding(
                                              padding:
                                                  EdgeInsets.only(left: 15.0),
                                              child: Text(
                                                '3 workouts per week',
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        223, 223, 223, 1),
                                                    fontWeight:
                                                        FontWeight.bold),
                                                textAlign: TextAlign.right,
                                              ),
                                            ),
                                          ]),
                                    ]),
                                  ),
                                ],
                              )),
                        ],
                      )),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 10, bottom: 10.0, right: 10),
                  child: Container(
                      width: width - 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          image: const DecorationImage(
                              image: NetworkImage(
                                  "https://firebasestorage.googleapis.com/v0/b/three-dimension-fitness.appspot.com/o/workOut%2F2(4).jpg?alt=media&token=848de078-e8ee-47c7-97d4-afc533d737d1"),
                              fit: BoxFit.cover)),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Container(
                              height: 75,
                              color: Colors.black.withOpacity(0.5),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 5.0, top: 5.0),
                                    child: Column(children: [
                                      Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                const Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 15.0),
                                                  child: Text(
                                                    'Calisthenics l',
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        color: Color.fromRGBO(
                                                            223, 223, 223, 1)),
                                                  ),
                                                ),
                                                const Spacer(),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 15.0),
                                                  child: FractionallySizedBox(
                                                    child: TextButton(
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: const [
                                                          Text(
                                                            'Free ',
                                                            style: TextStyle(
                                                                color: Color
                                                                    .fromRGBO(
                                                                        164,
                                                                        164,
                                                                        164,
                                                                        1)),
                                                          ),
                                                          Icon(
                                                            Icons.chevron_right,
                                                            color:
                                                                Color.fromRGBO(
                                                                    164,
                                                                    164,
                                                                    164,
                                                                    1),
                                                          ),
                                                        ],
                                                      ),
                                                      style:
                                                          TextButton.styleFrom(
                                                        primary: Colors.white,
                                                        backgroundColor:
                                                            const Color
                                                                    .fromRGBO(
                                                                20, 20, 20, 1),
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      20.0),
                                                        ),
                                                      ),
                                                      onPressed: () {},
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const Padding(
                                              padding:
                                                  EdgeInsets.only(left: 15.0),
                                              child: Text(
                                                '3 workouts per week',
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        223, 223, 223, 1),
                                                    fontWeight:
                                                        FontWeight.bold),
                                                textAlign: TextAlign.right,
                                              ),
                                            ),
                                          ]),
                                    ]),
                                  ),
                                ],
                              )),
                        ],
                      )),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 10, bottom: 10.0, right: 15),
                  child: Container(
                      width: width - 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          image: const DecorationImage(
                              image: NetworkImage(
                                  "https://firebasestorage.googleapis.com/v0/b/three-dimension-fitness.appspot.com/o/workOut%2F2(5).jpg?alt=media&token=fbf45061-2dc2-4a00-a5d6-a3169c08fa5d"),
                              fit: BoxFit.cover)),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Container(
                              height: 75,
                              color: Colors.black.withOpacity(0.5),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 5.0, top: 5.0),
                                    child: Column(children: [
                                      Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                const Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 15.0),
                                                  child: Text(
                                                    'Calisthenics l',
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        color: Color.fromRGBO(
                                                            223, 223, 223, 1)),
                                                  ),
                                                ),
                                                const Spacer(),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 15.0),
                                                  child: FractionallySizedBox(
                                                    child: TextButton(
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: const [
                                                          Text(
                                                            'Free ',
                                                            style: TextStyle(
                                                                color: Color
                                                                    .fromRGBO(
                                                                        164,
                                                                        164,
                                                                        164,
                                                                        1)),
                                                          ),
                                                          Icon(
                                                            Icons.chevron_right,
                                                            color:
                                                                Color.fromRGBO(
                                                                    164,
                                                                    164,
                                                                    164,
                                                                    1),
                                                          ),
                                                        ],
                                                      ),
                                                      style:
                                                          TextButton.styleFrom(
                                                        primary: Colors.white,
                                                        backgroundColor:
                                                            const Color
                                                                    .fromRGBO(
                                                                20, 20, 20, 1),
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      20.0),
                                                        ),
                                                      ),
                                                      onPressed: () {},
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const Padding(
                                              padding:
                                                  EdgeInsets.only(left: 15.0),
                                              child: Text(
                                                '3 workouts per week',
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        223, 223, 223, 1),
                                                    fontWeight:
                                                        FontWeight.bold),
                                                textAlign: TextAlign.right,
                                              ),
                                            ),
                                          ]),
                                    ]),
                                  ),
                                ],
                              )),
                        ],
                      )),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 10.0, bottom: 10, left: 20.0, right: 15),
            child: Row(
              children: [
                Text(
                  'Freestyle',
                  style: TextStyle(
                      fontSize: 20, color: Color.fromRGBO(164, 164, 164, 1)),
                ),
                const Spacer(),
                FractionallySizedBox(
                  child: TextButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Calendar ',
                          style: TextStyle(
                              color: Color.fromRGBO(164, 164, 164, 1)),
                        ),
                        Icon(
                          Icons.chevron_right,
                          color: Color.fromRGBO(164, 164, 164, 1),
                        ),
                      ],
                    ),
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: const Color.fromRGBO(20, 20, 20, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => (const FreeStyle())),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0, right: 10, left: 10),
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 20.0),
              height: 350.0,
              child: ListView(
                // This next line does the trick.
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                        width: width - 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            image: const DecorationImage(
                                image: NetworkImage(
                                    "https://firebasestorage.googleapis.com/v0/b/three-dimension-fitness.appspot.com/o/workOut%2F2(6).jpg?alt=media&token=ce8bedb8-1c7a-4593-b86d-32a7276f9236"),
                                fit: BoxFit.cover)),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Container(
                                height: 75,
                                color: Colors.black.withOpacity(0.5),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 5.0, top: 5.0),
                                      child: Column(children: [
                                        Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  const Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 15.0),
                                                    child: Text(
                                                      'Calisthenics l',
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          color: Color.fromRGBO(
                                                              223,
                                                              223,
                                                              223,
                                                              1)),
                                                    ),
                                                  ),
                                                  const Spacer(),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 15.0),
                                                    child: FractionallySizedBox(
                                                      child: TextButton(
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: const [
                                                            Text(
                                                              'Free ',
                                                              style: TextStyle(
                                                                  color: Color
                                                                      .fromRGBO(
                                                                          164,
                                                                          164,
                                                                          164,
                                                                          1)),
                                                            ),
                                                            Icon(
                                                              Icons
                                                                  .chevron_right,
                                                              color: Color
                                                                  .fromRGBO(
                                                                      164,
                                                                      164,
                                                                      164,
                                                                      1),
                                                            ),
                                                          ],
                                                        ),
                                                        style: TextButton
                                                            .styleFrom(
                                                          primary: Colors.white,
                                                          backgroundColor:
                                                              const Color
                                                                      .fromRGBO(
                                                                  20,
                                                                  20,
                                                                  20,
                                                                  1),
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20.0),
                                                          ),
                                                        ),
                                                        onPressed: () {},
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const Padding(
                                                padding:
                                                    EdgeInsets.only(left: 15.0),
                                                child: Text(
                                                  '3 workouts per week',
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          223, 223, 223, 1),
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  textAlign: TextAlign.right,
                                                ),
                                              ),
                                            ]),
                                      ]),
                                    ),
                                  ],
                                )),
                          ],
                        )),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, bottom: 10.0, right: 10),
                    child: Container(
                        width: width - 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            image: const DecorationImage(
                                image: NetworkImage(
                                    "https://firebasestorage.googleapis.com/v0/b/three-dimension-fitness.appspot.com/o/workOut%2F2(7).jpg?alt=media&token=2e9b2508-7aa3-4fd8-adc0-2605c6a401dc"),
                                fit: BoxFit.cover)),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Container(
                                height: 75,
                                color: Colors.black.withOpacity(0.5),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 5.0, top: 5.0),
                                      child: Column(children: [
                                        Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  const Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 15.0),
                                                    child: Text(
                                                      'Calisthenics l',
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          color: Color.fromRGBO(
                                                              223,
                                                              223,
                                                              223,
                                                              1)),
                                                    ),
                                                  ),
                                                  const Spacer(),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 15.0),
                                                    child: FractionallySizedBox(
                                                      child: TextButton(
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: const [
                                                            Text(
                                                              'Free ',
                                                              style: TextStyle(
                                                                  color: Color
                                                                      .fromRGBO(
                                                                          164,
                                                                          164,
                                                                          164,
                                                                          1)),
                                                            ),
                                                            Icon(
                                                              Icons
                                                                  .chevron_right,
                                                              color: Color
                                                                  .fromRGBO(
                                                                      164,
                                                                      164,
                                                                      164,
                                                                      1),
                                                            ),
                                                          ],
                                                        ),
                                                        style: TextButton
                                                            .styleFrom(
                                                          primary: Colors.white,
                                                          backgroundColor:
                                                              const Color
                                                                      .fromRGBO(
                                                                  20,
                                                                  20,
                                                                  20,
                                                                  1),
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20.0),
                                                          ),
                                                        ),
                                                        onPressed: () {},
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const Padding(
                                                padding:
                                                    EdgeInsets.only(left: 15.0),
                                                child: Text(
                                                  '3 workouts per week',
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          223, 223, 223, 1),
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  textAlign: TextAlign.right,
                                                ),
                                              ),
                                            ]),
                                      ]),
                                    ),
                                  ],
                                )),
                          ],
                        )),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, bottom: 10.0, right: 10),
                    child: Container(
                        width: width - 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            image: const DecorationImage(
                                image: NetworkImage(
                                    "https://firebasestorage.googleapis.com/v0/b/three-dimension-fitness.appspot.com/o/workOut%2F2(8).jpg?alt=media&token=850ed20e-90b9-419c-b4fd-c4b307c9d0f1"),
                                fit: BoxFit.cover)),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Container(
                                height: 75,
                                color: Colors.black.withOpacity(0.5),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 5.0, top: 5.0),
                                      child: Column(children: [
                                        Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  const Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 15.0),
                                                    child: Text(
                                                      'Calisthenics l',
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          color: Color.fromRGBO(
                                                              223,
                                                              223,
                                                              223,
                                                              1)),
                                                    ),
                                                  ),
                                                  const Spacer(),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 15.0),
                                                    child: FractionallySizedBox(
                                                      child: TextButton(
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: const [
                                                            Text(
                                                              'Free ',
                                                              style: TextStyle(
                                                                  color: Color
                                                                      .fromRGBO(
                                                                          164,
                                                                          164,
                                                                          164,
                                                                          1)),
                                                            ),
                                                            Icon(
                                                              Icons
                                                                  .chevron_right,
                                                              color: Color
                                                                  .fromRGBO(
                                                                      164,
                                                                      164,
                                                                      164,
                                                                      1),
                                                            ),
                                                          ],
                                                        ),
                                                        style: TextButton
                                                            .styleFrom(
                                                          primary: Colors.white,
                                                          backgroundColor:
                                                              const Color
                                                                      .fromRGBO(
                                                                  20,
                                                                  20,
                                                                  20,
                                                                  1),
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20.0),
                                                          ),
                                                        ),
                                                        onPressed: () {},
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const Padding(
                                                padding:
                                                    EdgeInsets.only(left: 15.0),
                                                child: Text(
                                                  '3 workouts per week',
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          223, 223, 223, 1),
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  textAlign: TextAlign.right,
                                                ),
                                              ),
                                            ]),
                                      ]),
                                    ),
                                  ],
                                )),
                          ],
                        )),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, bottom: 10.0, right: 10),
                    child: Container(
                        width: width - 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            image: const DecorationImage(
                                image: NetworkImage(
                                    "https://firebasestorage.googleapis.com/v0/b/three-dimension-fitness.appspot.com/o/workOut%2F2(9).jpg?alt=media&token=a7dda2e2-fa7c-43bf-a2fe-d013dc803337"),
                                fit: BoxFit.cover)),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Container(
                                height: 75,
                                color: Colors.black.withOpacity(0.5),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 5.0, top: 5.0),
                                      child: Column(children: [
                                        Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  const Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 15.0),
                                                    child: Text(
                                                      'Calisthenics l',
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          color: Color.fromRGBO(
                                                              223,
                                                              223,
                                                              223,
                                                              1)),
                                                    ),
                                                  ),
                                                  const Spacer(),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 15.0),
                                                    child: FractionallySizedBox(
                                                      child: TextButton(
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: const [
                                                            Text(
                                                              'Free ',
                                                              style: TextStyle(
                                                                  color: Color
                                                                      .fromRGBO(
                                                                          164,
                                                                          164,
                                                                          164,
                                                                          1)),
                                                            ),
                                                            Icon(
                                                              Icons
                                                                  .chevron_right,
                                                              color: Color
                                                                  .fromRGBO(
                                                                      164,
                                                                      164,
                                                                      164,
                                                                      1),
                                                            ),
                                                          ],
                                                        ),
                                                        style: TextButton
                                                            .styleFrom(
                                                          primary: Colors.white,
                                                          backgroundColor:
                                                              const Color
                                                                      .fromRGBO(
                                                                  20,
                                                                  20,
                                                                  20,
                                                                  1),
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20.0),
                                                          ),
                                                        ),
                                                        onPressed: () {},
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const Padding(
                                                padding:
                                                    EdgeInsets.only(left: 15.0),
                                                child: Text(
                                                  '3 workouts per week',
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          223, 223, 223, 1),
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  textAlign: TextAlign.right,
                                                ),
                                              ),
                                            ]),
                                      ]),
                                    ),
                                  ],
                                )),
                          ],
                        )),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, bottom: 10.0, right: 15),
                    child: Container(
                        width: width - 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            image: const DecorationImage(
                                image: NetworkImage(
                                    "https://firebasestorage.googleapis.com/v0/b/three-dimension-fitness.appspot.com/o/workOut%2F2(10).jpg?alt=media&token=a0cedc73-2e5a-450c-bd2a-8c8fb649a344"),
                                fit: BoxFit.cover)),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Container(
                                height: 75,
                                color: Colors.black.withOpacity(0.5),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 5.0, top: 5.0),
                                      child: Column(children: [
                                        Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  const Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 15.0),
                                                    child: Text(
                                                      'Calisthenics l',
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          color: Color.fromRGBO(
                                                              223,
                                                              223,
                                                              223,
                                                              1)),
                                                    ),
                                                  ),
                                                  const Spacer(),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 15.0),
                                                    child: FractionallySizedBox(
                                                      child: TextButton(
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: const [
                                                            Text(
                                                              'Free ',
                                                              style: TextStyle(
                                                                  color: Color
                                                                      .fromRGBO(
                                                                          164,
                                                                          164,
                                                                          164,
                                                                          1)),
                                                            ),
                                                            Icon(
                                                              Icons
                                                                  .chevron_right,
                                                              color: Color
                                                                  .fromRGBO(
                                                                      164,
                                                                      164,
                                                                      164,
                                                                      1),
                                                            ),
                                                          ],
                                                        ),
                                                        style: TextButton
                                                            .styleFrom(
                                                          primary: Colors.white,
                                                          backgroundColor:
                                                              const Color
                                                                      .fromRGBO(
                                                                  20,
                                                                  20,
                                                                  20,
                                                                  1),
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20.0),
                                                          ),
                                                        ),
                                                        onPressed: () {},
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const Padding(
                                                padding:
                                                    EdgeInsets.only(left: 15.0),
                                                child: Text(
                                                  '3 workouts per week',
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          223, 223, 223, 1),
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  textAlign: TextAlign.right,
                                                ),
                                              ),
                                            ]),
                                      ]),
                                    ),
                                  ],
                                )),
                          ],
                        )),
                  ),
                ],
              ),
            ),
          ),
        ]));
  }
}
