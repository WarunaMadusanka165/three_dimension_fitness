// ignore_for_file: deprecated_member_use, unused_local_variable

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:three_dimension_fitness/screens/homeScreen.dart';
import 'package:three_dimension_fitness/screens/premiumScreen.dart';

class Status extends StatefulWidget {
  const Status({Key? key}) : super(key: key);

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  final List<Color> gradientColors = [
    const Color(0xff1F70C7),
    const Color(0xff2890FF),
  ];
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    var themeData =
        Theme.of(context).copyWith(scaffoldBackgroundColor: Colors.black);
    return Scaffold(
      //  backgroundColor: themeData.scaffoldBackgroundColor,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          "Status",
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        actions: <Widget>[
          // Using Stack to show Notification Badge

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
      bottomNavigationBar: Container(
        height: 50,
        color: const Color.fromRGBO(20, 20, 20, 1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => (HomePage())),
                  );
                },
                child: const Icon(
                  Icons.home_filled,
                  size: 25,
                )),
            FlatButton(
                onPressed: () {},
                child: const Icon(
                  Icons.open_in_new,
                  size: 25,
                  color: Color.fromRGBO(255, 104, 26, 1),
                )),
            FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => (const Premium())),
                  );
                },
                child: const Icon(
                  Icons.notifications_outlined,
                  size: 25,
                  color: Color.fromRGBO(241, 240, 244, 1),
                ))
          ],
        ),
      ),
      body: ListView(children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 10.0, right: 10, top: 25, bottom: 20),
          child: TextField(
            cursorColor: Colors.white,
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
                contentPadding: EdgeInsets.only(top: 8, bottom: 8, left: 15),
                suffixIcon: IconButton(
                  iconSize: 30,
                  onPressed: () {},
                  icon: const Icon(Icons.search),
                  color: Color.fromRGBO(164, 164, 164, 0.5),
                ),
                enabledBorder: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(20.0),
                  borderSide: BorderSide(color: Colors.transparent),
                ),
                focusedBorder: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(25.0),
                  borderSide: BorderSide(color: Colors.transparent),
                ),
                filled: true,
                hintStyle:
                    const TextStyle(color: Color.fromRGBO(164, 164, 164, 0.5)),
                hintText: "Search...",
                fillColor: const Color.fromRGBO(20, 20, 20, 1)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10),
          child: SfCalendar(
            headerStyle: const CalendarHeaderStyle(
                textStyle: TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.normal,
                    color: Color(0xFFFF681A),
                    fontWeight: FontWeight.w500)),
            todayHighlightColor: const Color(0xffFF681A),
            selectionDecoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(color: Color(0xFFFF681A), width: 2),
              borderRadius: const BorderRadius.all(Radius.circular(4)),
              shape: BoxShape.rectangle,
            ),
            view: CalendarView.month,
            //  backgroundColor: Color.fromRGBO(20, 20, 20, 1),
            // backgroundColor: Colors.black,
            initialSelectedDate: DateTime.now(),
            //showCurrentTimeIndicator: Colors.accents![899],
            cellBorderColor: Colors.transparent,

            viewHeaderStyle: const ViewHeaderStyle(
              dateTextStyle: TextStyle(fontSize: 50),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15.0, left: 10, right: 10),
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: const Color.fromRGBO(20, 20, 20, 1)),
              width: width,
              height: height * 0.2,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, left: 20, right: 20, bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const [
                            Icon(
                              Icons.undo,
                              size: 30,
                              color: Color.fromRGBO(8, 214, 139, 1),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Streak',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromRGBO(241, 240, 244, 1)),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            children: const [
                              Text(
                                '32',
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Color.fromRGBO(8, 214, 139, 1)),
                              ),
                              SizedBox(width: 10),
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 15,
                                color: Color.fromRGBO(255, 255, 255, 1),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: LinearPercentIndicator(
                        animation: true,
                        animationDuration: 5000,
                        lineHeight: 5,
                        percent: 0.3,
                        progressColor: const Color.fromRGBO(8, 214, 139, 1),
                        backgroundColor: const Color.fromRGBO(241, 240, 244, 1),
                      ),
                    ),
                  )
                ],
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15.0, left: 10, right: 10),
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: const Color.fromRGBO(20, 20, 20, 1)),
              width: width,
              height: height * 0.2,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, left: 20, right: 20, bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const [
                            Icon(
                              Icons.local_fire_department,
                              size: 30,
                              color: Color.fromRGBO(255, 104, 26, 1),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Calories',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromRGBO(241, 240, 244, 1)),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            children: const [
                              Text(
                                '423',
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Color.fromRGBO(255, 104, 26, 1)),
                              ),
                              SizedBox(width: 10),
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 15,
                                color: Color.fromRGBO(255, 255, 255, 1),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: LinearPercentIndicator(
                              animation: true,
                              animationDuration: 5000,
                              width: width * 0.5,
                              lineHeight: 5,
                              percent: 1.0,
                              progressColor:
                                  const Color.fromRGBO(248, 164, 17, 1),
                              backgroundColor:
                                  const Color.fromRGBO(241, 240, 244, 1),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: LinearPercentIndicator(
                              animation: true,
                              animationDuration: 5000,
                              width: width * 0.3,
                              lineHeight: 5,
                              percent: 1.0,
                              progressColor:
                                  const Color.fromRGBO(40, 144, 255, 1),
                              backgroundColor:
                                  const Color.fromRGBO(241, 240, 244, 1),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              )),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 10.0, right: 10, top: 20, bottom: 15),
          child: LineChartSample2(),
        )
      ]),
    );

    // MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   themeMode: ThemeMode.dark,
    //   darkTheme: ThemeData.dark().copyWith(
    //       scaffoldBackgroundColor: Colors.black,
    //       accentColor: Colors.black,
    //       primaryColor: Colors.black),
    //   home: const Body(),
    // );
  }
}

// class Body extends StatefulWidget {
//   const Body({Key? key}) : super(key: key);

//   @override
//   State<Body> createState() => _BodyState();
// }

// class _BodyState extends State<Body> {
//   final List<Color> gradientColors = [
//     const Color(0xff1F70C7),
//     const Color(0xff2890FF),
//   ];
//   @override
//   Widget build(BuildContext context) {

//     return
//   }
// }

class LineChartSample2 extends StatefulWidget {
  const LineChartSample2({Key? key}) : super(key: key);

  @override
  _LineChartSample2State createState() => _LineChartSample2State();
}

class _LineChartSample2State extends State<LineChartSample2> {
  List<Color> gradientColors = [
    const Color(0xff1F70C7),
    const Color(0xff2890FF),
  ];

  bool showAvg = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(18),
          ),
          color: Color.fromRGBO(20, 20, 20, 1)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Icon(
                      Icons.speed,
                      size: 30,
                      color: Color.fromRGBO(40, 144, 255, 1),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Body Weight',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromRGBO(241, 240, 244, 1)),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: const [
                      Text(
                        '132 ',
                        style: TextStyle(
                            fontSize: 25,
                            color: Color.fromRGBO(40, 144, 255, 1)),
                      ),
                      Text(
                        'lb',
                        style: TextStyle(fontSize: 25, color: Colors.grey),
                      ),
                      SizedBox(width: 10),
                      Icon(
                        Icons.add_circle,
                        size: 25,
                        color: Colors.grey,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Stack(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 5,
                child: Padding(
                  padding: const EdgeInsets.only(
                      right: 18.0, left: 12.0, bottom: 12),
                  child: LineChart(
                    showAvg ? avgData() : mainData(),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  LineChartData mainData() {
    return LineChartData(
      gridData: FlGridData(
        show: false,
        drawVerticalLine: false,
        // getDrawingHorizontalLine: (value) {
        //   return FlLine(
        //     color: const Color(0xff37434d),
        //     strokeWidth: 1,
        //   );
        // },
        // getDrawingVerticalLine: (value) {
        //   return FlLine(
        //     color: const Color(0xff37434d),
        //     strokeWidth: 1,
        //   );
        // },
      ),
      titlesData: FlTitlesData(
        show: false,
        rightTitles: SideTitles(showTitles: false),
        topTitles: SideTitles(showTitles: false),

        // bottomTitles: SideTitles(
        //   showTitles: true,
        //   reservedSize: 22,
        //   interval: 1,
        //   getTextStyles: (context, value) => const TextStyle(
        //       color: Color(0xff68737d),
        //       fontWeight: FontWeight.bold,
        //       fontSize: 16),
        //   getTitles: (value) {
        //     switch (value.toInt()) {
        //       case 2:
        //         return 'Text';
        //       case 5:
        //         return 'Text';
        //       case 8:
        //         return 'Text';
        //     }
        //     return '';
        //   },
        //   margin: 8,
        // ),
        // leftTitles: SideTitles(
        //   showTitles: true,
        //   interval: 1,
        //   getTextStyles: (context, value) => const TextStyle(
        //     color: Color(0xff67727d),
        //     fontWeight: FontWeight.bold,
        //     fontSize: 15,
        //   ),
        //   getTitles: (value) {
        //     switch (value.toInt()) {
        //       case 1:
        //         return '10k';
        //       case 3:
        //         return '30k';
        //       case 5:
        //         return '50k';
        //     }
        //     return '';
        //   },
        //   reservedSize: 32,
        //   margin: 12,
        // ),
      ),
      borderData: FlBorderData(
          show: false,
          border: Border.all(color: const Color(0xff37434d), width: 1)),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 3),
            FlSpot(2.6, 2),
            FlSpot(4.9, 5),
            FlSpot(6.8, 3.1),
            FlSpot(8, 4),
            FlSpot(9.5, 3),
            FlSpot(11, 4),
          ],
          isCurved: true,
          colors: gradientColors,
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            colors:
                gradientColors.map((color) => color.withOpacity(0.3)).toList(),
          ),
        ),
      ],
    );
  }

  LineChartData avgData() {
    return LineChartData(
      lineTouchData: LineTouchData(enabled: false),
      gridData: FlGridData(
        show: true,
        drawHorizontalLine: true,
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 22,
          getTextStyles: (context, value) => const TextStyle(
              color: Color(0xff68737d),
              fontWeight: FontWeight.bold,
              fontSize: 16),
          getTitles: (value) {
            switch (value.toInt()) {
              case 2:
                return 'MAR';
              case 5:
                return 'JUN';
              case 8:
                return 'SEP';
            }
            return '';
          },
          margin: 8,
          interval: 1,
        ),
        leftTitles: SideTitles(
          showTitles: true,
          getTextStyles: (context, value) => const TextStyle(
            color: Color(0xff67727d),
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return '10k';
              case 3:
                return '30k';
              case 5:
                return '50k';
            }
            return '';
          },
          reservedSize: 32,
          interval: 1,
          margin: 12,
        ),
        topTitles: SideTitles(showTitles: false),
        rightTitles: SideTitles(showTitles: false),
      ),
      borderData: FlBorderData(
          show: true,
          border: Border.all(color: const Color(0xff37434d), width: 1)),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 3.44),
            FlSpot(2.6, 3.44),
            FlSpot(4.9, 3.44),
            FlSpot(6.8, 3.44),
            FlSpot(8, 3.44),
            FlSpot(9.5, 3.44),
            FlSpot(11, 3.44),
          ],
          isCurved: true,
          colors: [
            ColorTween(begin: gradientColors[0], end: gradientColors[1])
                .lerp(0.2)!,
            ColorTween(begin: gradientColors[0], end: gradientColors[1])
                .lerp(0.2)!,
          ],
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(show: true, colors: [
            ColorTween(begin: gradientColors[0], end: gradientColors[1])
                .lerp(0.2)!
                .withOpacity(0.1),
            ColorTween(begin: gradientColors[0], end: gradientColors[1])
                .lerp(0.2)!
                .withOpacity(0.1),
          ]),
        ),
      ],
    );
  }
}
