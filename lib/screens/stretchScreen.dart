// ignore_for_file: file_names, unused_local_variable, deprecated_member_use

import 'package:flutter/material.dart';


class Stretch extends StatefulWidget {
  const Stretch({Key? key}) : super(key: key);

  @override
  State<Stretch> createState() => _StretchState();
}

class _StretchState extends State<Stretch> {
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
          "Stretch",
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
                          image: AssetImage("assets/new 1.jpg"),
                          fit: BoxFit.cover)),
                  child:
                      Stack(alignment: Alignment.bottomLeft, children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Stretch",
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
                          image: AssetImage("assets/new 11.jpg"),
                          fit: BoxFit.cover)),
                  child:
                      Stack(alignment: Alignment.bottomLeft, children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Stretch",
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
                          image: AssetImage("assets/new 4.jpeg"),
                          fit: BoxFit.cover)),
                  child:
                      Stack(alignment: Alignment.bottomLeft, children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Stretch",
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
                          image: AssetImage("assets/new 22.jpg"),
                          fit: BoxFit.cover)),
                  child:
                      Stack(alignment: Alignment.bottomLeft, children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Stretch",
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
                          image: AssetImage("assets/new 27.jpg"),
                          fit: BoxFit.cover)),
                  child:
                      Stack(alignment: Alignment.bottomLeft, children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Stretch",
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
                          image: AssetImage("assets/new 26.jpg"),
                          fit: BoxFit.cover)),
                  child:
                      Stack(alignment: Alignment.bottomLeft, children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Stretch",
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
                          image: AssetImage("assets/new 13.jpg"),
                          fit: BoxFit.cover)),
                  child:
                      Stack(alignment: Alignment.bottomLeft, children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Stretch",
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
                          image: AssetImage("assets/new 15.jpg"),
                          fit: BoxFit.cover)),
                  child:
                      Stack(alignment: Alignment.bottomLeft, children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Stretch",
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
                          image: AssetImage("assets/new 19.jpg"),
                          fit: BoxFit.cover)),
                  child:
                      Stack(alignment: Alignment.bottomLeft, children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Stretch",
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
                          image: AssetImage("assets/new 7.jpg"),
                          fit: BoxFit.cover)),
                  child:
                      Stack(alignment: Alignment.bottomLeft, children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Stretch",
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
                          image: AssetImage("assets/new 21.jpg"),
                          fit: BoxFit.cover)),
                  child:
                      Stack(alignment: Alignment.bottomLeft, children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Stretch",
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
                        image: AssetImage("assets/new 5.jpg"),
                        fit: BoxFit.cover),
                  ),
                  child:
                      Stack(alignment: Alignment.bottomLeft, children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Stretch",
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
