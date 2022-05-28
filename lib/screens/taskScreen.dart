// ignore_for_file: unused_field

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Task extends StatefulWidget {
  const Task({Key? key}) : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int _counter = 0;

  void _incrementCount() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCount() {
    setState(() => _counter--);
  }

  void _resetCount() {
    setState(() => _counter = 0);
  }

  // late CardController controller;
  // List<String> welcomeImages = [
  //   "https://images.unsplash.com/photo-1653055124338-f243c59d194f?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0Nnx8fGVufDB8fHx8&auto=format&fit=crop&w=500",
  //   "https://images.unsplash.com/photo-1653052140721-0ac42513e5ca?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0Mnx8fGVufDB8fHx8&auto=format&fit=crop&w=500",
  //   "https://images.unsplash.com/photo-1653060303041-032d8257b522?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzN3x8fGVufDB8fHx8&auto=format&fit=crop&w=500",
  // ];

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    var themeData =
        Theme.of(context).copyWith(scaffoldBackgroundColor: Colors.black);
    List<int> list = [1, 2, 3, 4, 5];
    return Scaffold(
      backgroundColor: themeData.scaffoldBackgroundColor,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: SizedBox(
          width: 90,
          child: TextButton(
            child: Text(
              '4:32',
              style: TextStyle(
                  color: Color.fromRGBO(255, 104, 26, 1), fontSize: 15),
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
        centerTitle: true,
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
                      'End  ',
                      style: TextStyle(color: Color.fromRGBO(164, 164, 164, 1)),
                    ),
                    Icon(
                      Icons.block,
                      color: Color.fromRGBO(255, 75, 71, 1),
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
          Padding(
            padding:
                const EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 15),
            child: CarouselSlider(
              items: list
                  .map((item) => Column(
                            children: [
                              Container(
                                width: width,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Color.fromRGBO(20, 20, 20, 1)),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                              item.toString() +
                                                  '/' +
                                                  list.length.toString(),
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: Color.fromRGBO(
                                                      89, 89, 89, 1))),
                                          Icon(Icons.arrow_circle_down,
                                              size: 30,
                                              color:
                                                  Color.fromRGBO(89, 89, 89, 1))
                                        ],
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                            height: height * 0.338,
                                            width: width * 0.8,
                                            child: Image(
                                                image: AssetImage(
                                                    'assets/logo.png'))),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('Lorem ipsum',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.white)),
                                          SizedBox(
                                            width: 100,
                                            child: TextButton(
                                              child: Text(
                                                'Warm up',
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        164, 164, 164, 1),
                                                    fontSize: 15),
                                              ),
                                              style: TextButton.styleFrom(
                                                primary: Colors.white,
                                                backgroundColor:
                                                    const Color.fromRGBO(
                                                        89, 89, 89, 1),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          25.0),
                                                ),
                                              ),
                                              onPressed: () {},
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.bottomCenter,
                                      decoration: BoxDecoration(
                                          color:
                                              Color.fromRGBO(255, 104, 26, 1),
                                          borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(20),
                                              bottomRight:
                                                  Radius.circular(20))),
                                      height: 10,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )

                      //  Center(child: Text(item.toString())),
                      )
                  .toList(),
              options: CarouselOptions(
                  viewportFraction: 1.0,
                  autoPlay: false,
                  enlargeCenterPage: true,
                  aspectRatio: 0.84),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: const Color.fromRGBO(20, 20, 20, 1)),
                width: width,
                height: height * 0.23,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20.0,
                        left: 25,
                        right: 25,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              Text('4',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 40)),
                              SizedBox(width: 5),
                              Text(
                                'reps',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Color.fromRGBO(164, 164, 164, 1)),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              children: const [
                                Text(
                                  '124',
                                  style: TextStyle(
                                    fontSize: 40,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  'lb',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromRGBO(164, 164, 164, 1)),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 25, right: 15, top: 15, bottom: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              Text('47.5 lb ',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20)),
                              SizedBox(width: 2),
                              Text(
                                'on each side of the bar',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Color.fromRGBO(164, 164, 164, 1)),
                              )
                            ],
                          ),
                          IconButton(
                            icon: Icon(Icons.arrow_forward_ios_rounded,
                                color: Color.fromRGBO(164, 164, 164, 1)),
                            onPressed: () => {},
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: FractionalOffset.bottomCenter,
                        child: Padding(
                          padding: EdgeInsets.only(
                            bottom: 1.0,
                            left: 12,
                            right: 12,
                          ),
                          child: Container(
                            alignment: Alignment.bottomCenter,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(164, 164, 164, 0.1),
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20))),
                            height: 5,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50.0, bottom: 15),
            child: Center(
              child: SizedBox(
                width: 90,
                child: TextButton(
                  child: Text(
                    'Reset',
                    style: TextStyle(
                        color: Color.fromRGBO(255, 104, 26, 1), fontSize: 15),
                  ),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: const Color.fromRGBO(20, 20, 20, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                  onPressed: _resetCount,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: _incrementCount,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromRGBO(20, 20, 20, 1)),
                  width: 40,
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.add,
                          size: 20,
                          color: Color.fromRGBO(255, 104, 26, 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 20),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromRGBO(20, 20, 20, 1)),
                height: height * 0.1,
                width: width * 0.2,
                child: Center(
                  child: Text(
                    '$_counter',
                    style: TextStyle(
                        fontSize: 45, color: Color.fromRGBO(255, 104, 26, 1)),
                  ),
                ),
              ),
              SizedBox(width: 20),
              GestureDetector(
                onTap: _decrementCount,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromRGBO(20, 20, 20, 1)),
                  width: 40,
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: Icon(
                          Icons.minimize,
                          size: 20,
                          color: Color.fromRGBO(255, 104, 26, 1),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}

class ImageCarouselSlider extends StatefulWidget {
  const ImageCarouselSlider({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  State<ImageCarouselSlider> createState() => _ImageCarouselSliderState();
}

class _ImageCarouselSliderState extends State<ImageCarouselSlider> {
  List<int> list = [1, 2, 3, 4, 5];
  int _current = 0;
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      CarouselSlider(
                        items: list
                            .map((item) => Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color.fromRGBO(20, 20, 20, 1)),
                                  child: Center(child: Text(item.toString())),
                                ))
                            .toList(),
                        carouselController: _controller,
                        options: CarouselOptions(
                            viewportFraction: 1.0,
                            autoPlay: true,
                            height: widget.height,
                            enlargeCenterPage: true,
                            aspectRatio: 4.0,
                            onPageChanged: (index, reason) {
                              setState(() {
                                _current = index;
                              });
                            }),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
