// ignore_for_file: file_names, unused_local_variable, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class QuickWorkout extends StatefulWidget {
  const QuickWorkout({Key? key}) : super(key: key);

  @override
  State<QuickWorkout> createState() => _QuickWorkoutState();
}

class _QuickWorkoutState extends State<QuickWorkout> {
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
          "Quick Workout",
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
                    String url = 'https://www.youtube.com/watch?v=6Wm8t-1pFTM';
                    await launch(url);
                  },
                  child: Container(
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
                          "Quick Workout",
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
                    String url = 'https://www.youtube.com/watch?v=Ulduc3QuBXg';
                    await launch(url);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            image: NetworkImage(
                                "https://firebasestorage.googleapis.com/v0/b/three-dimension-fitness.appspot.com/o/homeCards%2Fnew%2015.jpg?alt=media&token=637be3a8-78aa-4e05-8ba0-7add01ae7927"),
                            fit: BoxFit.cover)),
                    child:
                        Stack(alignment: Alignment.bottomLeft, children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Quick Workout",
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
                    String url = 'https://www.youtube.com/watch?v=V0dYd1jyLpE';
                    await launch(url);
                  },
                  child: Container(
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
                          "Quick Workout",
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
                    String url = 'https://www.youtube.com/watch?v=GHcAIiL9J_Y';
                    await launch(url);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            image: NetworkImage(
                                "https://firebasestorage.googleapis.com/v0/b/three-dimension-fitness.appspot.com/o/homeCards%2Fnew%2011.jpg?alt=media&token=2a3ca4a7-f39d-421f-b4c1-0d9c9390a616"),
                            fit: BoxFit.cover)),
                    child:
                        Stack(alignment: Alignment.bottomLeft, children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Quick Workout",
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
                    String url = 'https://www.youtube.com/watch?v=zhFoDNzSTyE';
                    await launch(url);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            image: NetworkImage(
                                "https://firebasestorage.googleapis.com/v0/b/three-dimension-fitness.appspot.com/o/homeCards%2Fnew%2018.jpg?alt=media&token=71ac600a-f4bb-4a7b-8159-b8758dcb47b9"),
                            fit: BoxFit.cover)),
                    child:
                        Stack(alignment: Alignment.bottomLeft, children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Quick Workout",
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
                    String url = 'https://www.youtube.com/watch?v=sIvJTfGxdFo';
                    await launch(url);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            image: NetworkImage(
                                "https://firebasestorage.googleapis.com/v0/b/three-dimension-fitness.appspot.com/o/homeCards%2Fnew%2026.jpg?alt=media&token=9ecfea17-2e94-47ae-aacd-c33361f75a9f"),
                            fit: BoxFit.cover)),
                    child:
                        Stack(alignment: Alignment.bottomLeft, children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Quick Workout",
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
                    String url = 'https://www.youtube.com/watch?v=1f8yoFFdkcY';
                    await launch(url);
                  },
                  child: Container(
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
                          "Quick Workout",
                          style: TextStyle(
                              color: Color.fromRGBO(223, 223, 223, 1),
                              fontSize: 20),
                        ),
                      ),
                    ]),
                  ),
                ),
                // GestureDetector(
                //   onTap: () async {
                //     String url = '';
                //     await launch(url);
                //   },
                //   child: Container(
                //     padding: const EdgeInsets.all(8),
                //     decoration: BoxDecoration(
                //         borderRadius: BorderRadius.circular(20),
                //         image: const DecorationImage(
                //             image: NetworkImage(
                //                 "https://firebasestorage.googleapis.com/v0/b/three-dimension-fitness.appspot.com/o/homeCards%2Fnew%203.jpg?alt=media&token=a956f642-7a3c-4c92-876f-973f155482cb"),
                //             fit: BoxFit.cover)),
                //     child:
                //         Stack(alignment: Alignment.bottomLeft, children: const [
                //       Padding(
                //         padding: EdgeInsets.all(8.0),
                //         child: Text(
                //           "Quick Workout",
                //           style: TextStyle(
                //               color: Color.fromRGBO(223, 223, 223, 1),
                //               fontSize: 20),
                //         ),
                //       ),
                //     ]),
                //   ),
                // ),
                // GestureDetector(
                //   onTap: () async {
                //     String url = '';
                //     await launch(url);
                //   },
                //   child: Container(
                //     padding: const EdgeInsets.all(8),
                //     decoration: BoxDecoration(
                //         borderRadius: BorderRadius.circular(20),
                //         image: const DecorationImage(
                //             image: NetworkImage(
                //                 "https://firebasestorage.googleapis.com/v0/b/three-dimension-fitness.appspot.com/o/homeCards%2Fnew%2024.jpg?alt=media&token=05a1dd5a-48be-4e41-99fd-eaa45b8e5cf7"),
                //             fit: BoxFit.cover)),
                //     child:
                //         Stack(alignment: Alignment.bottomLeft, children: const [
                //       Padding(
                //         padding: EdgeInsets.all(8.0),
                //         child: Text(
                //           "Quick Workout",
                //           style: TextStyle(
                //               color: Color.fromRGBO(223, 223, 223, 1),
                //               fontSize: 20),
                //         ),
                //       ),
                //     ]),
                //   ),
                // ),
                // GestureDetector(
                //   onTap: () async {
                //     String url = '';
                //     await launch(url);
                //   },
                //   child: Container(
                //     padding: const EdgeInsets.all(8),
                //     decoration: BoxDecoration(
                //         borderRadius: BorderRadius.circular(20),
                //         image: const DecorationImage(
                //             image: NetworkImage(
                //                 "https://firebasestorage.googleapis.com/v0/b/three-dimension-fitness.appspot.com/o/homeCards%2Fnew%207.jpg?alt=media&token=b89b7e6d-135c-4d93-a576-d6846d709c45"),
                //             fit: BoxFit.cover)),
                //     child:
                //         Stack(alignment: Alignment.bottomLeft, children: const [
                //       Padding(
                //         padding: EdgeInsets.all(8.0),
                //         child: Text(
                //           "Quick Workout",
                //           style: TextStyle(
                //               color: Color.fromRGBO(223, 223, 223, 1),
                //               fontSize: 20),
                //         ),
                //       ),
                //     ]),
                //   ),
                // ),
                // GestureDetector(
                //   onTap: () async {
                //     String url = '';
                //     await launch(url);
                //   },
                //   child: Container(
                //     padding: const EdgeInsets.all(8),
                //     decoration: BoxDecoration(
                //         borderRadius: BorderRadius.circular(20),
                //         image: const DecorationImage(
                //             image: NetworkImage(
                //                 "https://firebasestorage.googleapis.com/v0/b/three-dimension-fitness.appspot.com/o/homeCards%2Fnew%2023.jpg?alt=media&token=c95ce3db-5021-4ce2-852a-a4457386316e"),
                //             fit: BoxFit.cover)),
                //     child:
                //         Stack(alignment: Alignment.bottomLeft, children: const [
                //       Padding(
                //         padding: EdgeInsets.all(8.0),
                //         child: Text(
                //           "Quick Workout",
                //           style: TextStyle(
                //               color: Color.fromRGBO(223, 223, 223, 1),
                //               fontSize: 20),
                //         ),
                //       ),
                //     ]),
                //   ),
                // ),
                // GestureDetector(
                //   onTap: () async {
                //     String url = '';
                //     await launch(url);
                //   },
                //   child: Container(
                //     padding: const EdgeInsets.all(8),
                //     decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(20),
                //       image: const DecorationImage(
                //           image: NetworkImage(
                //               "https://firebasestorage.googleapis.com/v0/b/three-dimension-fitness.appspot.com/o/homeCards%2Fnew%201.jpg?alt=media&token=ac78ddf3-804c-44fb-84b1-705b13811316"),
                //           fit: BoxFit.cover),
                //     ),
                //     child:
                //         Stack(alignment: Alignment.bottomLeft, children: const [
                //       Padding(
                //         padding: EdgeInsets.all(8.0),
                //         child: Text(
                //           "Quick Workout",
                //           style: TextStyle(
                //               color: Color.fromRGBO(223, 223, 223, 1),
                //               fontSize: 20),
                //         ),
                //       ),
                //     ]),
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
