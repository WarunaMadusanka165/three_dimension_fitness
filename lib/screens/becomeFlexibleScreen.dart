// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

class BecomeFlexible extends StatefulWidget {
  const BecomeFlexible({Key? key}) : super(key: key);

  @override
  State<BecomeFlexible> createState() => _BecomeFlexibleState();
}

class _BecomeFlexibleState extends State<BecomeFlexible> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(220), // Set this height
          child: Container(
            child: Stack(
              children: [
                Container(
                  height: 250,
                  width: width,
                  child: Image.network(
                    "https://firebasestorage.googleapis.com/v0/b/three-dimension-fitness.appspot.com/o/bodyShape%2FloseFat.jpg?alt=media&token=c5c41d6e-f716-4da3-b379-9cb6afdf0950",
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  width: double.infinity,
                  color: Colors.black.withOpacity(0.4),
                  margin: EdgeInsets.only(top: 30, left: 30, right: 30),
                  padding: EdgeInsets.all(20),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 10.0, right: 10, top: 10),
                    child: Text(
                      "Foods for shape your body",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.yellow,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ],
            ),
          )

          // Stack(
          //   children: [
          //     Container(
          //       width: double.infinity,
          //       margin: EdgeInsets.only(top: 20),
          //       padding: EdgeInsets.only(top: 200),
          //       child: Text(
          //         "Hello Everyone! This is FlutterCampus",
          //         style: TextStyle(fontSize: 25, color: Colors.white),
          //       ),
          //       decoration: BoxDecoration(
          //           color: Color.fromARGB(100, 22, 44, 33),
          //           image: const DecorationImage(
          //               image: AssetImage("assets/bodyShape.jpg"),
          //               fit: BoxFit.cover)),
          //     ),
          //     Align(
          //       alignment: Alignment.topCenter,
          //       child: Padding(
          //         padding: const EdgeInsets.only(
          //             bottom: 20.0, left: 20, right: 20, top: 30),
          //         child: Text(
          //           'Foods for lost your fat',
          //           textAlign: TextAlign.center,
          //           style: TextStyle(
          //               fontSize: 40,
          //               color: Colors.yellow,
          //               fontWeight: FontWeight.w400),
          //         ),
          //       ),
          //     )
          //     // Center(
          //     //   child: Text('kdsgjjhds'),
          //     // )
          //   ],
          // ),
          ),
      body: GridView.count(
        primary: false,
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            child: Column(
              children: [
                Container(
                  height: 120,
                  padding: const EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: const DecorationImage(
                          image: NetworkImage(
                              "https://firebasestorage.googleapis.com/v0/b/three-dimension-fitness.appspot.com/o/becomeFlexible%2FblueBerry.jpg?alt=media&token=d7ef8ec7-9b9c-4a7e-aab7-c9dc72aef9a9"),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  'Blue Berry',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  height: 120,
                  padding: const EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: const DecorationImage(
                          image: NetworkImage(
                              "https://firebasestorage.googleapis.com/v0/b/three-dimension-fitness.appspot.com/o/becomeFlexible%2Fturmeric.jpg?alt=media&token=9a91e6fc-4c13-4198-8ece-6225ea9f634c"),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  'Turmeric',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  height: 120,
                  padding: const EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: const DecorationImage(
                          image: NetworkImage(
                              "https://firebasestorage.googleapis.com/v0/b/three-dimension-fitness.appspot.com/o/becomeFlexible%2Fginger.jpg?alt=media&token=a00623e8-c6dc-46c1-a8c3-35e19c9bfc52"),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  'Ginger',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  height: 120,
                  padding: const EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: const DecorationImage(
                          image: NetworkImage(
                              "https://firebasestorage.googleapis.com/v0/b/three-dimension-fitness.appspot.com/o/becomeFlexible%2FfreshFish.jpg?alt=media&token=faca149b-4ffc-44e7-a6e3-0a3c684dfe3c"),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  'Fresh Fish',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  height: 120,
                  padding: const EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: const DecorationImage(
                          image: NetworkImage(
                              "https://firebasestorage.googleapis.com/v0/b/three-dimension-fitness.appspot.com/o/becomeFlexible%2Forange.jpg?alt=media&token=04c73410-5d25-469d-8e56-5a83d00720c0"),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  'Orange',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  height: 120,
                  padding: const EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: const DecorationImage(
                          image: NetworkImage(
                              "https://firebasestorage.googleapis.com/v0/b/three-dimension-fitness.appspot.com/o/becomeFlexible%2Fwatermelon.jpg?alt=media&token=d06c6c59-d72d-40d2-a7d7-5cddf67b1f69"),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  'Water Melon',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
