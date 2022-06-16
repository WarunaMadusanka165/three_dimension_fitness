// ignore_for_file: file_names, unused_local_variable, deprecated_member_use

import 'package:flutter/material.dart';

class Toining extends StatefulWidget {
  const Toining({Key? key}) : super(key: key);

  @override
  State<Toining> createState() => _ToiningState();
}

class _ToiningState extends State<Toining> {
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
          "Toining",
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
                              "https://firebasestorage.googleapis.com/v0/b/three-dimension-fitness.appspot.com/o/homeCards%2Fnew%2025.jpg?alt=media&token=8871ffa0-4489-4d3f-aadf-2ed90a69d062"),
                          fit: BoxFit.cover)),
                  child:
                      Stack(alignment: Alignment.bottomLeft, children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Toining",
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
                        "Toining",
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
                              "https://firebasestorage.googleapis.com/v0/b/three-dimension-fitness.appspot.com/o/homeCards%2Fnew%203.jpg?alt=media&token=a956f642-7a3c-4c92-876f-973f155482cb"),
                          fit: BoxFit.cover)),
                  child:
                      Stack(alignment: Alignment.bottomLeft, children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Toining",
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
                              "https://firebasestorage.googleapis.com/v0/b/three-dimension-fitness.appspot.com/o/homeCards%2Fnew%2010.jpg?alt=media&token=d1cd2775-ee6f-4911-b35e-6101ac9026b2"),
                          fit: BoxFit.cover)),
                  child:
                      Stack(alignment: Alignment.bottomLeft, children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Toining",
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
                          fit: BoxFit.cover)),
                  child:
                      Stack(alignment: Alignment.bottomLeft, children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Toining",
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
                              "https://firebasestorage.googleapis.com/v0/b/three-dimension-fitness.appspot.com/o/freeStyle%2FfreeStyle%206.jpg?alt=media&token=66cd75ab-7054-4fa0-817b-aa6120794972"),
                          fit: BoxFit.cover)),
                  child:
                      Stack(alignment: Alignment.bottomLeft, children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Toining",
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
                        "Toining",
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
                              "https://firebasestorage.googleapis.com/v0/b/three-dimension-fitness.appspot.com/o/freeStyle%2FfreeStyle%208.jpg?alt=media&token=26badf82-b15d-4159-802f-5922a37b69db"),
                          fit: BoxFit.cover)),
                  child:
                      Stack(alignment: Alignment.bottomLeft, children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Toining",
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
                        "Toining",
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
                              "https://firebasestorage.googleapis.com/v0/b/three-dimension-fitness.appspot.com/o/homeCards%2Fnew%2010.jpg?alt=media&token=d1cd2775-ee6f-4911-b35e-6101ac9026b2"),
                          fit: BoxFit.cover)),
                  child:
                      Stack(alignment: Alignment.bottomLeft, children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Toining",
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
                              "https://firebasestorage.googleapis.com/v0/b/three-dimension-fitness.appspot.com/o/homeCards%2Fnew%2019.jpg?alt=media&token=afb64ec1-35a3-4150-a339-fbf571b04b6e"),
                          fit: BoxFit.cover)),
                  child:
                      Stack(alignment: Alignment.bottomLeft, children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Toining",
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
                            "https://firebasestorage.googleapis.com/v0/b/three-dimension-fitness.appspot.com/o/homeCards%2Fnew%2017.jpg?alt=media&token=520e39de-71ca-424f-a4f6-7919f5a3fc96"),
                        fit: BoxFit.cover),
                  ),
                  child:
                      Stack(alignment: Alignment.bottomLeft, children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Toining",
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
