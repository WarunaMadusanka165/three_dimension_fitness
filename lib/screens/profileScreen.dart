// ignore_for_file: unused_local_variable

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:three_dimension_fitness/screens/goalScreen.dart';
import 'package:three_dimension_fitness/screens/workout1Screen.dart';
import 'package:three_dimension_fitness/screens/premiumScreen.dart';
import 'package:three_dimension_fitness/screens/settingScreen.dart';
import 'package:three_dimension_fitness/screens/taskScreen.dart';
import 'package:three_dimension_fitness/signUp.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    var themeData =
        Theme.of(context).copyWith(scaffoldBackgroundColor: Colors.black);
    GoogleSignInProvider provider;
    return Scaffold(
      backgroundColor: themeData.scaffoldBackgroundColor,
      bottomNavigationBar: Padding(
        padding:
            const EdgeInsets.only(top: 8.0, bottom: 8, right: 10, left: 10),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color.fromRGBO(20, 20, 20, 1)),
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.warning,
                color: Color.fromRGBO(241, 240, 244, 1),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Report and Issue',
                style: TextStyle(color: Color.fromRGBO(241, 240, 244, 1)),
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.black,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              width: 65,
              child: TextButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Edit  ',
                      style: TextStyle(color: Color.fromRGBO(164, 164, 164, 1)),
                    ),
                    Icon(
                      Icons.border_color,
                      color: Color.fromRGBO(0, 108, 221, 1),
                      size: 15,
                    ),
                  ],
                ),
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: const Color.fromRGBO(20, 20, 20, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 100,
                    width: width * 0.5,
                    decoration: BoxDecoration(
                        border: Border.all(width: 4, color: Colors.orange),
                        shape: BoxShape.circle,
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://media.istockphoto.com/photos/teen-girl-after-her-vaccination-picture-id1311564458?b=1&k=20&m=1311564458&s=170667a&w=0&h=fK1QViaweFI1OlHtQ6G3S4VrrrMK2lMDrZK-d6yTGms='))),
                  ),
                ),
                const Text(
                  'Anjlina Roy',
                  style: TextStyle(
                      color: Color.fromRGBO(241, 240, 244, 1), fontSize: 25),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => (const Task())),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: SizedBox(
                height: 70,
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 10.0, left: 10, right: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15)),
                        color: const Color.fromRGBO(20, 20, 20, 1)),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                      child: Row(
                        children: [
                          const Padding(
                              padding: EdgeInsets.only(left: 15.0),
                              child: Icon(
                                Icons.menu,
                                color: Color.fromRGBO(255, 104, 26, 1),
                              )),
                          const Padding(
                            padding: EdgeInsets.only(left: 15.0),
                            child: Text(
                              'My Plan',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromRGBO(164, 164, 164, 1)),
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 15.0),
                            child: Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 15,
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => (const Workout1())),
              );
            },
            child: SizedBox(
              height: 60,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 0.2),
                child: Container(
                  color: const Color.fromRGBO(20, 20, 20, 1),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                    child: Row(
                      children: [
                        const Padding(
                            padding: EdgeInsets.only(left: 15.0),
                            child: Icon(
                              Icons.fitness_center,
                              color: Color.fromRGBO(255, 104, 26, 1),
                            )),
                        const Padding(
                          padding: EdgeInsets.only(left: 15.0),
                          child: Text(
                            'My Freestyle',
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromRGBO(164, 164, 164, 1)),
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 15,
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => (const Goal())),
              );
            },
            child: SizedBox(
              height: 60,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 0.5),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15)),
                      color: const Color.fromRGBO(20, 20, 20, 1)),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                    child: Row(
                      children: [
                        const Padding(
                            padding: EdgeInsets.only(left: 15.0),
                            child: Icon(
                              Icons.sports_soccer_sharp,
                              color: Color.fromRGBO(255, 104, 26, 1),
                            )),
                        const Padding(
                          padding: EdgeInsets.only(left: 15.0),
                          child: Text(
                            'Fitness Profile',
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromRGBO(164, 164, 164, 1)),
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 15,
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => (const Premium())),
              );
            },
            child: SizedBox(
              height: 70,
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10),
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
                              Icons.person,
                              color: Color.fromRGBO(255, 104, 26, 1),
                            )),
                        const Padding(
                          padding: EdgeInsets.only(left: 15.0),
                          child: Text(
                            'Account',
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromRGBO(164, 164, 164, 1)),
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 15,
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => (const Settings())),
              );
            },
            child: SizedBox(
              height: 70,
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10),
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
                              Icons.settings,
                              color: Color.fromRGBO(255, 104, 26, 1),
                            )),
                        const Padding(
                          padding: EdgeInsets.only(left: 15.0),
                          child: Text(
                            'Settings',
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromRGBO(164, 164, 164, 1)),
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 15,
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => {
              showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: Text('Log Out'),
                  content: const Text('Are you sure,you want to logout?'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'Cancel'),
                      child: const Text('Cancel',
                          style: TextStyle(
                              color: Color.fromRGBO(255, 104, 26, 1))),
                    ),
                    TextButton(
                      onPressed: () => {
                        Navigator.pop(context, 'Cancel'),
                        provider = Provider.of<GoogleSignInProvider>(context,
                            listen: false),
                        provider.logout(),
                        FirebaseAuth.instance.signOut()
                      },
                      child: const Text('OK',
                          style: TextStyle(
                              color: Color.fromRGBO(255, 104, 26, 1))),
                    ),
                  ],
                ),
              )
            },
            child: SizedBox(
              height: 70,
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10),
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
                              Icons.arrow_back,
                              color: Color.fromRGBO(255, 104, 26, 1),
                            )),
                        const Padding(
                          padding: EdgeInsets.only(left: 15.0),
                          child: Text(
                            'Log Out',
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromRGBO(164, 164, 164, 1)),
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 15,
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromRGBO(20, 20, 20, 1),
                  ),
                  width: width / 2 - 15,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.ac_unit,
                          color: Color.fromRGBO(255, 90, 6, 1),
                        ),
                        SizedBox(width: 10),
                        Text('Instragram',
                            style: TextStyle(
                                color: Color.fromRGBO(164, 164, 164, 1)))
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  width: width / 2 - 15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromRGBO(20, 20, 20, 1),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.mail,
                          color: Color.fromRGBO(255, 90, 6, 1),
                        ),
                        SizedBox(width: 10),
                        Text('Contact',
                            style: TextStyle(
                                color: Color.fromRGBO(164, 164, 164, 1)))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
