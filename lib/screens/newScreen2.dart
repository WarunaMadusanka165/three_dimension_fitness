// ignore_for_file: file_names, unused_local_variable, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class New2 extends StatefulWidget {
  const New2({Key? key}) : super(key: key);

  @override
  State<New2> createState() => _New2State();
}

class _New2State extends State<New2> {
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
          "New",
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
                GestureDetector(
                  onTap: () async {
                    String url =
                        'https://www.youtube.com/watch?v=JOjToKrGJZw&amp;ab_channel=%D9%85%D9%87%D9%88%D9%88%D8%B3%D8%B9%D8%B6%D9%84%D8%A7%D8%AA%2F%D9%83%D9%85%D8%A7%D9%84%D8%A7%D9%84%D8%A3%D8%AC%D8%B3%D8%A7%D9%85';
                    await launch(url);
                  },
                  child: Container(
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
                          "New",
                          style: TextStyle(
                              color: Color.fromRGBO(223, 223, 223, 1),
                              fontSize: 20),
                        ),
                      ),
                    ]),
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    String url =
                        'https://www.youtube.com/watch?v=vRhmL5HbGo0&amp;ab_channel=PietroBoselli';
                    await launch(url);
                  },
                  child: Container(
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
                          "New",
                          style: TextStyle(
                              color: Color.fromRGBO(223, 223, 223, 1),
                              fontSize: 20),
                        ),
                      ),
                    ]),
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    String url =
                        'https://www.youtube.com/watch?v=0JfYxMRsUCQ&amp;ab_channel=Bodybuilding.com';
                    await launch(url);
                  },
                  child: Container(
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
                          "New",
                          style: TextStyle(
                              color: Color.fromRGBO(223, 223, 223, 1),
                              fontSize: 20),
                        ),
                      ),
                    ]),
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    String url =
                        'https://www.youtube.com/watch?v=b8cNbFvBTgE&amp;ab_channel=MiamiMuscleUSA';
                    await launch(url);
                  },
                  child: Container(
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
                          "New",
                          style: TextStyle(
                              color: Color.fromRGBO(223, 223, 223, 1),
                              fontSize: 20),
                        ),
                      ),
                    ]),
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    String url =
                        'https://www.youtube.com/watch?v=hChjZQhX1Ls&amp;ab_channel=ScottHermanFitness';
                    await launch(url);
                  },
                  child: Container(
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
                          "New",
                          style: TextStyle(
                              color: Color.fromRGBO(223, 223, 223, 1),
                              fontSize: 20),
                        ),
                      ),
                    ]),
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    String url =
                        'https://www.youtube.com/watch?v=XE_pHwbst04&amp;ab_channel=FitFatherProject-FitnessForBusyFathers';
                    await launch(url);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            image: NetworkImage(
                                "https://firebasestorage.googleapis.com/v0/b/three-dimension-fitness.appspot.com/o/homeCards%2Fnew%206.jpg?alt=media&token=150382f1-ec41-4bc4-98cb-9bc370c784be"),
                            fit: BoxFit.cover)),
                    child:
                        Stack(alignment: Alignment.bottomLeft, children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "New",
                          style: TextStyle(
                              color: Color.fromRGBO(223, 223, 223, 1),
                              fontSize: 20),
                        ),
                      ),
                    ]),
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    String url =
                        'https://www.youtube.com/watch?v=4INnuqPeyIQ&amp;ab_channel=ColossusFitness';
                    await launch(url);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            image: NetworkImage(
                                "https://firebasestorage.googleapis.com/v0/b/three-dimension-fitness.appspot.com/o/homeCards%2Fnew%207.jpg?alt=media&token=b89b7e6d-135c-4d93-a576-d6846d709c45"),
                            fit: BoxFit.cover)),
                    child:
                        Stack(alignment: Alignment.bottomLeft, children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "New",
                          style: TextStyle(
                              color: Color.fromRGBO(223, 223, 223, 1),
                              fontSize: 20),
                        ),
                      ),
                    ]),
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    String url =
                        'https://www.youtube.com/watch?v=QZEqB6wUPxQ&amp;ab_channel=ScottHermanFitness';
                    await launch(url);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            image: NetworkImage(
                                "https://firebasestorage.googleapis.com/v0/b/three-dimension-fitness.appspot.com/o/homeCards%2Fnew%208.jpg?alt=media&token=cc5612d8-2165-4e81-a1eb-852f1d5b5add"),
                            fit: BoxFit.cover)),
                    child:
                        Stack(alignment: Alignment.bottomLeft, children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "New",
                          style: TextStyle(
                              color: Color.fromRGBO(223, 223, 223, 1),
                              fontSize: 20),
                        ),
                      ),
                    ]),
                  ),
                ),
                // Container(
                //   padding: const EdgeInsets.all(8),
                //   decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(20),
                //       image: const DecorationImage(
                //           image: NetworkImage(
                //               "https://firebasestorage.googleapis.com/v0/b/three-dimension-fitness.appspot.com/o/homeCards%2Fnew%209.jpg?alt=media&token=1239747e-738d-4ad8-bac5-e02562dcc40c"),
                //           fit: BoxFit.cover)),
                //   child:
                //       Stack(alignment: Alignment.bottomLeft, children: const [
                //     Padding(
                //       padding: EdgeInsets.all(8.0),
                //       child: Text(
                //         "New",
                //         style: TextStyle(
                //             color: Color.fromRGBO(223, 223, 223, 1),
                //             fontSize: 20),
                //       ),
                //     ),
                //   ]),
                // ),
                // Container(
                //   padding: const EdgeInsets.all(8),
                //   decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(20),
                //       image: const DecorationImage(
                //           image: NetworkImage(
                //               "https://firebasestorage.googleapis.com/v0/b/three-dimension-fitness.appspot.com/o/homeCards%2Fnew%2010.jpg?alt=media&token=d1cd2775-ee6f-4911-b35e-6101ac9026b2"),
                //           fit: BoxFit.cover)),
                //   child:
                //       Stack(alignment: Alignment.bottomLeft, children: const [
                //     Padding(
                //       padding: EdgeInsets.all(8.0),
                //       child: Text(
                //         "New",
                //         style: TextStyle(
                //             color: Color.fromRGBO(223, 223, 223, 1),
                //             fontSize: 20),
                //       ),
                //     ),
                //   ]),
                // ),
                // Container(
                //   padding: const EdgeInsets.all(8),
                //   decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(20),
                //       image: const DecorationImage(
                //           image: NetworkImage(
                //               "https://firebasestorage.googleapis.com/v0/b/three-dimension-fitness.appspot.com/o/homeCards%2Fnew%2011.jpg?alt=media&token=2a3ca4a7-f39d-421f-b4c1-0d9c9390a616"),
                //           fit: BoxFit.cover)),
                //   child:
                //       Stack(alignment: Alignment.bottomLeft, children: const [
                //     Padding(
                //       padding: EdgeInsets.all(8.0),
                //       child: Text(
                //         "New",
                //         style: TextStyle(
                //             color: Color.fromRGBO(223, 223, 223, 1),
                //             fontSize: 20),
                //       ),
                //     ),
                //   ]),
                // ),
                // Container(
                //   padding: const EdgeInsets.all(8),
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(20),
                //     image: const DecorationImage(
                //         image: NetworkImage(
                //             "https://firebasestorage.googleapis.com/v0/b/three-dimension-fitness.appspot.com/o/homeCards%2Fnew%2012.jpg?alt=media&token=7434778c-f3cd-4bcc-9c0b-cd0247227c10"),
                //         fit: BoxFit.cover),
                //   ),
                //   child:
                //       Stack(alignment: Alignment.bottomLeft, children: const [
                //     Padding(
                //       padding: EdgeInsets.all(8.0),
                //       child: Text(
                //         "New",
                //         style: TextStyle(
                //             color: Color.fromRGBO(223, 223, 223, 1),
                //             fontSize: 20),
                //       ),
                //     ),
                //   ]),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
