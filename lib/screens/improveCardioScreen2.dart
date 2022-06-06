// // ignore_for_file: unused_local_variable

// import 'package:flutter/material.dart';

// class ImproveCardio2 extends StatefulWidget {
//   const ImproveCardio2({Key? key}) : super(key: key);

//   @override
//   State<ImproveCardio2> createState() => _ImproveCardio2State();
// }

// class _ImproveCardio2State extends State<ImproveCardio2> {
//   @override
//   Widget build(BuildContext context) {
//     final double width = MediaQuery.of(context).size.width;
//     final double height = MediaQuery.of(context).size.height;
//     return Scaffold(
//       appBar: PreferredSize(
//         preferredSize: Size.fromHeight(220), // Set this height
//         child: Container(
//           decoration: BoxDecoration(
//               image: DecorationImage(
//                   image: AssetImage("assets/improveCardio.jpg"),
//                   fit: BoxFit.cover)),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.only(left: 15.0),
//         child: GridView.count(
//           primary: false,
//           padding: const EdgeInsets.all(20),
//           crossAxisSpacing: 20,
//           mainAxisSpacing: 20,
//           crossAxisCount: 2,
//           children: <Widget>[
//             Container(
//               padding: const EdgeInsets.all(8),
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(12),
//                   image: const DecorationImage(
//                       image: AssetImage("assets/champagne.jpg"),
//                       fit: BoxFit.cover)),
//             ),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   'Champagne',
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
//                 ),
//               ],
//             ),
//             Container(
//               padding: const EdgeInsets.all(8),
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(12),
//                   image: const DecorationImage(
//                       image: AssetImage("assets/steak.jpg"),
//                       fit: BoxFit.cover)),
//             ),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   'Steak',
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
//                 ),
//               ],
//             ),
//             Container(
//               padding: const EdgeInsets.all(8),
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(12),
//                   image: const DecorationImage(
//                       image: AssetImage("assets/tofu.jpg"), fit: BoxFit.cover)),
//             ),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   'Tofu',
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:three_dimension_fitness/screens/improveCardioScreen.dart';


class ImproveCardio2 extends StatefulWidget {
  const ImproveCardio2({Key? key}) : super(key: key);

  @override
  State<ImproveCardio2> createState() => _ImproveCardio2State();
}

class _ImproveCardio2State extends State<ImproveCardio2> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(220), // Set this height
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage("assets/improveCardio.jpg"),
                      fit: BoxFit.cover)),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding:
                    const EdgeInsets.only(bottom: 20.0, left: 10, right: 10),
                child: Text(
                  'Foods for improve your cardio',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.yellow,
                      fontWeight: FontWeight.w400),
                ),
              ),
            )
            // Center(
            //   child: Text('kdsgjjhds'),
            // )
          ],
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, left: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: const DecorationImage(
                            image: AssetImage("assets/champagne.jpg"),
                            fit: BoxFit.cover)),
                    width: width / 2 - 20,
                    height: height * 0.17,
                  ),
                ),
                SizedBox(width: 20),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Text(
                    'Champagne',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, left: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: const DecorationImage(
                            image: AssetImage("assets/steak.jpg"),
                            fit: BoxFit.cover)),
                    width: width / 2 - 20,
                    height: height * 0.17,
                  ),
                ),
                SizedBox(width: 20),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Text(
                    'Steak',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, left: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: const DecorationImage(
                            image: AssetImage("assets/tofu.jpg"),
                            fit: BoxFit.cover)),
                    width: width / 2 - 20,
                    height: height * 0.17,
                  ),
                ),
                SizedBox(width: 20),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Text(
                    'Tofu',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: SizedBox(
                  width: 80,
                  child: TextButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.arrow_left,
                          color: Colors.green,
                          size: 60,
                        ),
                      ],
                    ),
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => (ImproveCardio())),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
