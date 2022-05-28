// ignore_for_file: file_names, use_key_in_widget_constructors, deprecated_member_use, avoid_types_as_parameter_names, unused_field, import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:provider/provider.dart';
import 'package:three_dimension_fitness/screens/buildMuscleScreen.dart';
import 'package:three_dimension_fitness/screens/homeWorkoutScreen.dart';
import 'package:three_dimension_fitness/screens/newScreen2.dart';
import 'package:three_dimension_fitness/screens/quickWorkoutScreen.dart';
import 'package:three_dimension_fitness/screens/stretchScreen.dart';
import 'package:three_dimension_fitness/screens/toiningScreen.dart';
import 'package:three_dimension_fitness/screens/workoutScreen.dart';
import 'package:three_dimension_fitness/screens/premiumScreen.dart';
import 'package:three_dimension_fitness/screens/profileScreen.dart';
import 'package:three_dimension_fitness/screens/statusScreen.dart';
import 'package:three_dimension_fitness/screens/theme/thtmeprovider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  List cardList = [const Item1(), const Item2(), const Item3(), const Item4()];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    // var themeData =
    //     Theme.of(context).copyWith(scaffoldBackgroundColor: Colors.black);
    return Scaffold(
        bottomNavigationBar: Container(
          height: 50,
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
          title: const Text(
            "Workout",
            style: TextStyle(fontSize: 25),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
          actions: <Widget>[
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
          // ChangeThemeButtonWidget(),
          Column(
            children: <Widget>[
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Text(
                      'Working Planes',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromRGBO(164, 164, 164, 1)),
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: FractionallySizedBox(
                      child: TextButton(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'Hide ',
                              style: TextStyle(
                                  color: Color.fromRGBO(164, 164, 164, 1)),
                            ),
                            Icon(
                              Icons.close,
                              color: Color.fromRGBO(255, 75, 71, 1),
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
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: height * 0.45,

                    //autoPlay: true,
                    // autoPlayInterval: const Duration(seconds: 3),
                    // autoPlayAnimationDuration: const Duration(milliseconds: 800),
                    // autoPlayCurve: Curves.fastOutSlowIn,
                    // pauseAutoPlayOnTouch: true,
                    aspectRatio: 2.0,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                  ),
                  items: cardList.map((card) {
                    return Builder(builder: (BuildContext context) {
                      return Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50)),
                        height: MediaQuery.of(context).size.height * 0.30,
                        width: MediaQuery.of(context).size.width,
                        child: Card(
                          color: Colors.black,
                          child: card,
                        ),
                      );
                    });
                  }).toList(),
                ),
              ),

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: map<Widget>(cardList, (index, url) {
              //     return Container(
              //       width: 10.0,
              //       height: 10.0,
              //       margin: const EdgeInsets.symmetric(
              //           vertical: 10.0, horizontal: 2.0),
              //       decoration: BoxDecoration(
              //         shape: BoxShape.circle,
              //         color: _currentIndex == index
              //             ? Colors.blueAccent
              //             : Colors.grey,
              //       ),
              //     );
              //   }),
              // ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 10.0, right: 10, top: 10, bottom: 10),
                child: TextField(
                  cursorColor: Colors.white,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.only(top: 8, bottom: 8, left: 15),
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.edit_outlined),
                        color: const Color.fromRGBO(164, 164, 164, 1),
                      ),
                      enabledBorder: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(20.0),
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      focusedBorder: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(25.0),
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      filled: true,
                      hintStyle: const TextStyle(
                          color: Color.fromRGBO(164, 164, 164, 0.5)),
                      hintText: "Search planes",
                      fillColor: const Color.fromRGBO(20, 20, 20, 1)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Text(
                        'Browse Freestyle',
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromRGBO(164, 164, 164, 1)),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: FractionallySizedBox(
                        child: TextButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'See all ',
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
                            backgroundColor:
                                const Color.fromRGBO(20, 20, 20, 1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => (Workout())),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => (const New2())),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromRGBO(20, 20, 20, 1),
                  ),
                  width: width / 2 - 20,
                  height: height * 0.15,
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 15.0, right: 10),
                        child: Icon(
                          Icons.grade,
                          color: Color.fromRGBO(255, 90, 6, 1),
                        ),
                      ),
                      Text('New',
                          style: TextStyle(
                              color: Color.fromRGBO(164, 164, 164, 1)))
                    ],
                  ),
                ),
              ),
              SizedBox(width: 10),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => (const BuildMuscle())),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromRGBO(20, 20, 20, 1),
                  ),
                  width: width / 2 - 20,
                  height: height * 0.15,
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 15.0, right: 10),
                        child: Icon(
                          Icons.grade,
                          color: Color.fromRGBO(255, 90, 6, 1),
                        ),
                      ),
                      Text('Build Muscle',
                          style: TextStyle(
                              color: Color.fromRGBO(164, 164, 164, 1)))
                    ],
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => (const Toining())),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromRGBO(20, 20, 20, 1),
                    ),
                    width: width / 2 - 20,
                    height: height * 0.15,
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 15.0, right: 10),
                          child: Icon(
                            Icons.grade,
                            color: Color.fromRGBO(255, 90, 6, 1),
                          ),
                        ),
                        Text('Toining',
                            style: TextStyle(
                                color: Color.fromRGBO(164, 164, 164, 1)))
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => (const HomeWorkout())),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromRGBO(20, 20, 20, 1),
                    ),
                    width: width / 2 - 20,
                    height: height * 0.15,
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 15.0, right: 10),
                          child: Icon(
                            Icons.grade,
                            color: Color.fromRGBO(255, 90, 6, 1),
                          ),
                        ),
                        Text('Home Workout',
                            style: TextStyle(
                                color: Color.fromRGBO(164, 164, 164, 1)))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => (const Stretch())),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromRGBO(20, 20, 20, 1),
                    ),
                    width: width / 2 - 20,
                    height: height * 0.15,
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 15.0, right: 10),
                          child: Icon(
                            Icons.grade,
                            color: Color.fromRGBO(255, 90, 6, 1),
                          ),
                        ),
                        Text('Stretch',
                            style: TextStyle(
                                color: Color.fromRGBO(164, 164, 164, 1)))
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => (const QuickWorkout())),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromRGBO(20, 20, 20, 1),
                    ),
                    width: width / 2 - 20,
                    height: height * 0.15,
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 15.0, right: 10),
                          child: Icon(
                            Icons.grade,
                            color: Color.fromRGBO(255, 90, 6, 1),
                          ),
                        ),
                        Text('Quick Workout',
                            style: TextStyle(
                                color: Color.fromRGBO(164, 164, 164, 1)))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15.0, top: 15, bottom: 15),
            child: Text(
              'Browse Freestyle',
              style: TextStyle(
                  fontSize: 20, color: Color.fromRGBO(164, 164, 164, 1)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 10.0, right: 10, top: 15, bottom: 25),
            child: TextField(
              cursorColor: Colors.white,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 8, bottom: 8, left: 15),
                  // suffixIcon: Padding(
                  //   padding: const EdgeInsets.only(right: 5.0),
                  //   child: Container(
                  //     width: 5,
                  //     height: 3,
                  //     decoration: BoxDecoration(
                  //         color: Colors.black,
                  //         borderRadius: BorderRadius.circular(15)),
                  //     child: Center(
                  //       child: IconButton(
                  //         onPressed: () {},
                  //         icon: const Icon(Icons.add),
                  //         color: const Color.fromRGBO(164, 164, 164, 1),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  suffixIcon: IconButton(
                    iconSize: 30,
                    onPressed: () {},
                    icon: const Icon(Icons.add_circle),
                    color: Colors.black,
                  ),
                  enabledBorder: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(20.0),
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  focusedBorder: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(25.0),
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  filled: true,
                  hintStyle: const TextStyle(
                      color: Color.fromRGBO(164, 164, 164, 0.5)),
                  hintText: "Build Freestyle Workout...",
                  fillColor: const Color.fromRGBO(20, 20, 20, 1)),
            ),
          ),
        ]));
  }
}

class Item1 extends StatelessWidget {
  const Item1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.white,
            image: const DecorationImage(
                image: AssetImage("assets/1.jpg"), fit: BoxFit.cover)),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25)),
                  color: Colors.black.withOpacity(0.5),
                ),
                height: 75,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0, top: 5.0),
                      child: Column(children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(left: 15.0),
                                    child: Text(
                                      'Calisthenics l',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color:
                                              Color.fromRGBO(223, 223, 223, 1)),
                                    ),
                                  ),
                                  const Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 15.0),
                                    child: FractionallySizedBox(
                                      child: TextButton(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: const [
                                            Text(
                                              'Free ',
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      164, 164, 164, 1)),
                                            ),
                                            Icon(
                                              Icons.chevron_right,
                                              color: Color.fromRGBO(
                                                  164, 164, 164, 1),
                                            ),
                                          ],
                                        ),
                                        style: TextButton.styleFrom(
                                          primary: Colors.white,
                                          backgroundColor: const Color.fromRGBO(
                                              20, 20, 20, 1),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                          ),
                                        ),
                                        onPressed: () {},
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 15.0),
                                child: Text(
                                  '3 workouts per week',
                                  style: TextStyle(
                                      color: Color.fromRGBO(223, 223, 223, 1),
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ]),
                      ]),
                    ),
                  ],
                )),
          ],
        ));
  }
}

class Item2 extends StatelessWidget {
  const Item2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            image: const DecorationImage(
                image: AssetImage("assets/2.jpg"), fit: BoxFit.cover)),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
                height: 75,
                color: Colors.black.withOpacity(0.5),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0, top: 5.0),
                      child: Column(children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(left: 15.0),
                                    child: Text(
                                      'Calisthenics l',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color:
                                              Color.fromRGBO(223, 223, 223, 1)),
                                    ),
                                  ),
                                  const Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 15.0),
                                    child: FractionallySizedBox(
                                      child: TextButton(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: const [
                                            Text(
                                              'Free ',
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      164, 164, 164, 1)),
                                            ),
                                            Icon(
                                              Icons.chevron_right,
                                              color: Color.fromRGBO(
                                                  164, 164, 164, 1),
                                            ),
                                          ],
                                        ),
                                        style: TextButton.styleFrom(
                                          primary: Colors.white,
                                          backgroundColor: const Color.fromRGBO(
                                              20, 20, 20, 1),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                          ),
                                        ),
                                        onPressed: () {},
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 15.0),
                                child: Text(
                                  '3 workouts per week',
                                  style: TextStyle(
                                      color: Color.fromRGBO(223, 223, 223, 1),
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ]),
                      ]),
                    ),
                  ],
                )),
          ],
        ));
  }
}

class Item3 extends StatelessWidget {
  const Item3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            image: const DecorationImage(
                image: AssetImage("assets/3.jpg"), fit: BoxFit.cover)),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
                height: 75,
                color: Colors.black.withOpacity(0.5),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0, top: 5.0),
                      child: Column(children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(left: 15.0),
                                    child: Text(
                                      'Calisthenics l',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color:
                                              Color.fromRGBO(223, 223, 223, 1)),
                                    ),
                                  ),
                                  const Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 15.0),
                                    child: FractionallySizedBox(
                                      child: TextButton(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: const [
                                            Text(
                                              'Free ',
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      164, 164, 164, 1)),
                                            ),
                                            Icon(
                                              Icons.chevron_right,
                                              color: Color.fromRGBO(
                                                  164, 164, 164, 1),
                                            ),
                                          ],
                                        ),
                                        style: TextButton.styleFrom(
                                          primary: Colors.white,
                                          backgroundColor: const Color.fromRGBO(
                                              20, 20, 20, 1),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                          ),
                                        ),
                                        onPressed: () {},
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 15.0),
                                child: Text(
                                  '3 workouts per week',
                                  style: TextStyle(
                                      color: Color.fromRGBO(223, 223, 223, 1),
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ]),
                      ]),
                    ),
                  ],
                )),
          ],
        ));
  }
}

class Item4 extends StatelessWidget {
  const Item4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            image: const DecorationImage(
                image: AssetImage("assets/4.jpg"), fit: BoxFit.cover)),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                    )),
                height: 75,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0, top: 5.0),
                      child: Column(children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(left: 15.0),
                                    child: Text(
                                      'Calisthenics l',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color:
                                              Color.fromRGBO(223, 223, 223, 1)),
                                    ),
                                  ),
                                  const Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 15.0),
                                    child: FractionallySizedBox(
                                      child: TextButton(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: const [
                                            Text(
                                              'Free ',
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      164, 164, 164, 1)),
                                            ),
                                            Icon(
                                              Icons.chevron_right,
                                              color: Color.fromRGBO(
                                                  164, 164, 164, 1),
                                            ),
                                          ],
                                        ),
                                        style: TextButton.styleFrom(
                                          primary: Colors.white,
                                          backgroundColor: const Color.fromRGBO(
                                              20, 20, 20, 1),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                          ),
                                        ),
                                        onPressed: () {},
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 15.0),
                                child: Text(
                                  '3 workouts per week',
                                  style: TextStyle(
                                      color: Color.fromRGBO(223, 223, 223, 1),
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ]),
                      ]),
                    ),
                  ],
                )),
          ],
        ));
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
        builder: (context, _) {
          final themeProvider = Provider.of<ThemeProvider>(context);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            themeMode: themeProvider.themeMode,
            theme: MyThemes.lightTheme,
            darkTheme: MyThemes.darkTheme,
            home: HomePage(),
          );
        },
      );
}
