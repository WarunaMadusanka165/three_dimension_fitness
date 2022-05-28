// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool status = false;
  bool status2 = false;
  List<bool> isSelected = [true, false, false];
  List<bool> isSelected2 = [true, false];
  List<bool> isSelected3 = [true, false];
  List<bool> isSelected4 = [true, false];
  List<bool> isSelected5 = [true, false];
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
          "Settings",
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10),
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 15.0, bottom: 25, left: 10.0),
              child: Text(
                'Appearance',
                style: TextStyle(
                    color: Color.fromRGBO(164, 164, 164, 1), fontSize: 20),
              ),
            ),
            Center(
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromRGBO(20, 20, 20, 1),
                ),
                child: ToggleButtons(
                  borderRadius: BorderRadius.circular(15),
                  isSelected: isSelected,
                  selectedColor: Colors.black,
                  color: const Color.fromRGBO(164, 164, 164, 1),
                  fillColor: Colors.white,
                  renderBorder: false,
                  //splashColor: Colors.red,
                  highlightColor: Colors.orange,
                  children: const <Widget>[
                    Padding(
                      padding: EdgeInsets.all(12),
                      child: Text('System'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(12),
                      child: Text('Light '),
                    ),
                    Padding(
                      padding: EdgeInsets.all(12),
                      child: Text('Dark  '),
                    ),
                  ],
                  onPressed: (int newIndex) {
                    setState(() {
                      for (int index = 0; index < isSelected.length; index++) {
                        if (index == newIndex) {
                          isSelected[index] = true;
                        } else {
                          isSelected[index] = false;
                        }
                      }
                    });
                  },
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 35.0, bottom: 25, left: 10.0),
              child: Text(
                'Default Units',
                style: TextStyle(
                    color: Color.fromRGBO(164, 164, 164, 1), fontSize: 20),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 10.0, top: 15),
                  child: Text('Weight',
                      style: TextStyle(color: Colors.white, fontSize: 17)),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0, top: 15),
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromRGBO(20, 20, 20, 1),
                    ),
                    child: ToggleButtons(
                      borderRadius: BorderRadius.circular(15),
                      isSelected: isSelected2,
                      selectedColor: Colors.black,
                      color: const Color.fromRGBO(164, 164, 164, 1),
                      fillColor: const Color.fromRGBO(255, 104, 26, 1),
                      renderBorder: false,
                      //splashColor: Colors.red,
                      highlightColor: Colors.orange,
                      children: const <Widget>[
                        Padding(
                          padding: EdgeInsets.all(12),
                          child: Text('Ib'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(12),
                          child: Text('Kg'),
                        ),
                      ],
                      onPressed: (int newIndex) {
                        setState(() {
                          for (int index = 0;
                              index < isSelected2.length;
                              index++) {
                            if (index == newIndex) {
                              isSelected2[index] = true;
                            } else {
                              isSelected2[index] = false;
                            }
                          }
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text('Distance',
                        style: TextStyle(color: Colors.white, fontSize: 17)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromRGBO(20, 20, 20, 1),
                      ),
                      child: ToggleButtons(
                        borderRadius: BorderRadius.circular(15),
                        isSelected: isSelected3,
                        selectedColor: Colors.black,
                        color: const Color.fromRGBO(164, 164, 164, 1),
                        fillColor: const Color.fromRGBO(255, 104, 26, 1),
                        renderBorder: false,
                        //splashColor: Colors.red,
                        highlightColor: Colors.orange,
                        children: const <Widget>[
                          Padding(
                            padding: EdgeInsets.all(12),
                            child: Text('Ib'),
                          ),
                          Padding(
                            padding: EdgeInsets.all(12),
                            child: Text('Kg'),
                          ),
                        ],
                        onPressed: (int newIndex) {
                          setState(() {
                            for (int index = 0;
                                index < isSelected3.length;
                                index++) {
                              if (index == newIndex) {
                                isSelected3[index] = true;
                              } else {
                                isSelected3[index] = false;
                              }
                            }
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text('Body Weight',
                        style: TextStyle(color: Colors.white, fontSize: 17)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromRGBO(20, 20, 20, 1),
                      ),
                      child: ToggleButtons(
                        borderRadius: BorderRadius.circular(15),
                        isSelected: isSelected4,
                        selectedColor: Colors.black,
                        color: const Color.fromRGBO(164, 164, 164, 1),
                        fillColor: const Color.fromRGBO(255, 104, 26, 1),
                        renderBorder: false,
                        //splashColor: Colors.red,
                        highlightColor: Colors.orange,
                        children: const <Widget>[
                          Padding(
                            padding: EdgeInsets.all(12),
                            child: Text('Ib'),
                          ),
                          Padding(
                            padding: EdgeInsets.all(12),
                            child: Text('Kg'),
                          ),
                        ],
                        onPressed: (int newIndex) {
                          setState(() {
                            for (int index = 0;
                                index < isSelected4.length;
                                index++) {
                              if (index == newIndex) {
                                isSelected4[index] = true;
                              } else {
                                isSelected4[index] = false;
                              }
                            }
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text('Height',
                        style: TextStyle(color: Colors.white, fontSize: 17)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromRGBO(20, 20, 20, 1),
                      ),
                      child: ToggleButtons(
                        borderRadius: BorderRadius.circular(15),
                        isSelected: isSelected5,
                        selectedColor: Colors.black,
                        color: const Color.fromRGBO(164, 164, 164, 1),
                        fillColor: const Color.fromRGBO(255, 104, 26, 1),
                        renderBorder: false,
                        //splashColor: Colors.red,
                        highlightColor: Colors.orange,
                        children: const <Widget>[
                          Padding(
                            padding: EdgeInsets.all(12),
                            child: Text('Ib'),
                          ),
                          Padding(
                            padding: EdgeInsets.all(12),
                            child: Text('Kg'),
                          ),
                        ],
                        onPressed: (int newIndex) {
                          setState(() {
                            for (int index = 0;
                                index < isSelected4.length;
                                index++) {
                              if (index == newIndex) {
                                isSelected5[index] = true;
                              } else {
                                isSelected5[index] = false;
                              }
                            }
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 50.0, bottom: 35, left: 10.0),
              child: Text(
                'Smart Progression',
                style: TextStyle(
                    color: Color.fromRGBO(164, 164, 164, 1), fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text('Auto Progression',
                      style: TextStyle(color: Colors.white, fontSize: 17)),
                  FlutterSwitch(
                    width: 55.0,
                    height: 30.0,
                    activeColor: const Color.fromRGBO(255, 104, 26, 1),
                    valueFontSize: 12.0,
                    toggleSize: 18.0,
                    value: status,
                    onToggle: (val) {
                      setState(() {
                        status = val;
                      });
                    },
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 20.0, left: 10, top: 20),
              child: Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s',
                style: TextStyle(color: Color.fromRGBO(164, 164, 164, 1)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10, top: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text('Inheritance',
                      style: TextStyle(color: Colors.white, fontSize: 17)),
                  FlutterSwitch(
                    width: 55.0,
                    height: 30.0,
                    activeColor: const Color.fromRGBO(255, 104, 26, 1),
                    valueFontSize: 12.0,
                    toggleSize: 18.0,
                    value: status2,
                    onToggle: (val) {
                      setState(() {
                        status2 = val;
                      });
                    },
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 30.0, left: 10, top: 20),
              child: Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a',
                style: TextStyle(color: Color.fromRGBO(164, 164, 164, 1)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 35.0, bottom: 15, left: 10),
              child: Text('Work Guide',
                  style: TextStyle(color: Colors.white, fontSize: 22)),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10, bottom: 25),
              child: Text(
                'Lorem Ipsum is simply dummy text of the printing',
                style: TextStyle(color: Color.fromRGBO(164, 164, 164, 1)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
