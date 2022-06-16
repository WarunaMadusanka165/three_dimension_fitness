// ignore_for_file: file_names, unused_local_variable, deprecated_member_use

import 'package:flutter/material.dart';

class BuildMuscle extends StatefulWidget {
  const BuildMuscle({Key? key}) : super(key: key);

  @override
  State<BuildMuscle> createState() => _BuildMuscleState();
}

class _BuildMuscleState extends State<BuildMuscle> {
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
          "Build Muscle",
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FractionallySizedBox(
                child: TextButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'No Equipment ',
                        style:
                            TextStyle(color: Color.fromRGBO(164, 164, 164, 1)),
                      ),
                      Icon(
                        Icons.close,
                        color: Color.fromRGBO(255, 104, 26, 1),
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
              FractionallySizedBox(
                child: TextButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        '0 - 30 Min ',
                        style:
                            TextStyle(color: Color.fromRGBO(164, 164, 164, 1)),
                      ),
                      Icon(
                        Icons.refresh,
                        color: Color.fromRGBO(255, 104, 26, 1),
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
              FractionallySizedBox(
                child: TextButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Any muscle ',
                        style:
                            TextStyle(color: Color.fromRGBO(164, 164, 164, 1)),
                      ),
                      Icon(
                        Icons.accessibility_new,
                        color: Color.fromRGBO(255, 104, 26, 1),
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
            ],
          ),
          Expanded(
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                          image: NetworkImage(
                              "https://firebasestorage.googleapis.com/v0/b/three-dimension-fitness.appspot.com/o/homeCards%2Fnew%2013.jpg?alt=media&token=61fc3d67-e35f-4ea7-bccc-ab9fc0244bae"),
                          fit: BoxFit.cover)),
                  child:
                      Stack(alignment: Alignment.bottomLeft, children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Build Muscle",
                        style: TextStyle(
                            color: Color.fromRGBO(223, 223, 223, 1),
                            fontSize: 20),
                      ),
                    ),
                  ]),
                ),
                Container(
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
                        "Build Muscle",
                        style: TextStyle(
                            color: Color.fromRGBO(223, 223, 223, 1),
                            fontSize: 20),
                      ),
                    ),
                  ]),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                          image: NetworkImage(
                              "https://firebasestorage.googleapis.com/v0/b/three-dimension-fitness.appspot.com/o/homeCards%2Fnew%205.jpg?alt=media&token=5fd020f8-a2f8-4b22-a1ef-1defe33cbb0b"),
                          fit: BoxFit.cover)),
                  child:
                      Stack(alignment: Alignment.bottomLeft, children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Build Muscle",
                        style: TextStyle(
                            color: Color.fromRGBO(223, 223, 223, 1),
                            fontSize: 20),
                      ),
                    ),
                  ]),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                          image: NetworkImage(
                              "https://firebasestorage.googleapis.com/v0/b/three-dimension-fitness.appspot.com/o/homeCards%2Fnew%204.jpeg?alt=media&token=35eda0e7-bd37-4480-bd56-93040b2f0c9d"),
                          fit: BoxFit.cover)),
                  child:
                      Stack(alignment: Alignment.bottomLeft, children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Build Muscle",
                        style: TextStyle(
                            color: Color.fromRGBO(223, 223, 223, 1),
                            fontSize: 20),
                      ),
                    ),
                  ]),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                          image: NetworkImage(
                              "https://firebasestorage.googleapis.com/v0/b/three-dimension-fitness.appspot.com/o/homeCards%2Fnew%2024.jpg?alt=media&token=05a1dd5a-48be-4e41-99fd-eaa45b8e5cf7"),
                          fit: BoxFit.cover)),
                  child:
                      Stack(alignment: Alignment.bottomLeft, children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Build Muscle",
                        style: TextStyle(
                            color: Color.fromRGBO(223, 223, 223, 1),
                            fontSize: 20),
                      ),
                    ),
                  ]),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                          image: NetworkImage(
                              "https://firebasestorage.googleapis.com/v0/b/three-dimension-fitness.appspot.com/o/homeCards%2Fnew%2020.jpg?alt=media&token=fa18f871-587f-4185-a174-e35730b62abc"),
                          fit: BoxFit.cover)),
                  child:
                      Stack(alignment: Alignment.bottomLeft, children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Build Muscle",
                        style: TextStyle(
                            color: Color.fromRGBO(223, 223, 223, 1),
                            fontSize: 20),
                      ),
                    ),
                  ]),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                          image: NetworkImage(
                              "https://firebasestorage.googleapis.com/v0/b/three-dimension-fitness.appspot.com/o/freeStyle%2FfreeStyle%207.jpg?alt=media&token=5bc0e0a9-754a-4aa6-94d6-84a236632c07"),
                          fit: BoxFit.cover)),
                  child:
                      Stack(alignment: Alignment.bottomLeft, children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Build Muscle",
                        style: TextStyle(
                            color: Color.fromRGBO(223, 223, 223, 1),
                            fontSize: 20),
                      ),
                    ),
                  ]),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                          image: NetworkImage(
                              "https://firebasestorage.googleapis.com/v0/b/three-dimension-fitness.appspot.com/o/homeCards%2Fnew%209.jpg?alt=media&token=1239747e-738d-4ad8-bac5-e02562dcc40c"),
                          fit: BoxFit.cover)),
                  child:
                      Stack(alignment: Alignment.bottomLeft, children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Build Muscle",
                        style: TextStyle(
                            color: Color.fromRGBO(223, 223, 223, 1),
                            fontSize: 20),
                      ),
                    ),
                  ]),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                          image: NetworkImage(
                              "https://firebasestorage.googleapis.com/v0/b/three-dimension-fitness.appspot.com/o/homeCards%2Fnew%2020.jpg?alt=media&token=fa18f871-587f-4185-a174-e35730b62abc"),
                          fit: BoxFit.cover)),
                  child:
                      Stack(alignment: Alignment.bottomLeft, children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Build Muscle",
                        style: TextStyle(
                            color: Color.fromRGBO(223, 223, 223, 1),
                            fontSize: 20),
                      ),
                    ),
                  ]),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                          image: NetworkImage(
                              "https://firebasestorage.googleapis.com/v0/b/three-dimension-fitness.appspot.com/o/homeCards%2Fnew%201.jpg?alt=media&token=ac78ddf3-804c-44fb-84b1-705b13811316"),
                          fit: BoxFit.cover)),
                  child:
                      Stack(alignment: Alignment.bottomLeft, children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Build Muscle",
                        style: TextStyle(
                            color: Color.fromRGBO(223, 223, 223, 1),
                            fontSize: 20),
                      ),
                    ),
                  ]),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                          image: NetworkImage(
                              "https://firebasestorage.googleapis.com/v0/b/three-dimension-fitness.appspot.com/o/homeCards%2Fnew%2021.jpg?alt=media&token=af12434f-8c52-419a-b4b9-5a3c8ff25217"),
                          fit: BoxFit.cover)),
                  child:
                      Stack(alignment: Alignment.bottomLeft, children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Build Muscle",
                        style: TextStyle(
                            color: Color.fromRGBO(223, 223, 223, 1),
                            fontSize: 20),
                      ),
                    ),
                  ]),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        image: NetworkImage(
                            "https://firebasestorage.googleapis.com/v0/b/three-dimension-fitness.appspot.com/o/homeCards%2Fnew%2022.jpg?alt=media&token=f71e78be-0252-492e-a4dd-1ecf81735db6"),
                        fit: BoxFit.cover),
                  ),
                  child:
                      Stack(alignment: Alignment.bottomLeft, children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Build Muscle",
                        style: TextStyle(
                            color: Color.fromRGBO(223, 223, 223, 1),
                            fontSize: 20),
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
