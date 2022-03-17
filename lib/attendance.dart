import 'package:flutter/material.dart';



class Calendar extends StatefulWidget {
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  DateTime selectedDate = DateTime.now(); // TO tracking date

  int currentDateSelectedIndex = 0; //For Horizontal Date
  ScrollController scrollController =
      ScrollController(); //To Track Scroll of ListView

  List<String> listOfMonths = [
    "Jan",
    "Feb",
    "Mar",
    "Apr",
    "May",
    "Jun",
    "Jul",
    "Aug",
    "Sep",
    "Oct",
    "Nov",
    "Dec"
  ];

  List<String> listOfDays = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 230, 226, 226),
          title: Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(width: 180),
              Image.asset(
                'images/Logo.png',
                fit: BoxFit.contain,
                height: 100,
              ),
              const SizedBox(
                width: 200,
              ),
              Column(
                children: const [
                  Text('Teacher Name',
                      style: TextStyle(
                          color: Colors.orange, fontWeight: FontWeight.w500)),
                  SizedBox(
                    height: 5,
                  ),
                  Text('Mobile Number',
                      style: TextStyle(
                          color: Colors.orange, fontWeight: FontWeight.w500)),
                ],
              ),
            ],
          ),
          toolbarHeight: 120,
          actions: [
            Image.asset(
              'images/robo.png',
              fit: BoxFit.fitHeight,
            ),
          ],
        ),
      body: Column(
        children: [
          //To Show Current Date
          Container(
              height: 30,
              margin: EdgeInsets.only(left: 10),
              alignment: Alignment.centerLeft,
              child: Text(
                selectedDate.day.toString() +
                    '-' +
                    listOfMonths[selectedDate.month - 1] +
                    ', ' +
                    selectedDate.year.toString(),
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: Colors.indigo[700]),
              )),
          SizedBox(height: 10),
          //To show Calendar Widget
          Container(
              height: 80,
              child: Container(
                  child: ListView.separated(
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(width: 10);
                },
                itemCount: 365,
                controller: scrollController,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        currentDateSelectedIndex = index;
                        selectedDate =
                            DateTime.now().add(Duration(days: index));
                      });
                    },
                    child: Container(
                      height: 80,
                      width: 60,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          // borderRadius: BorderRadius.circular(8),
                          // boxShadow: [
                          //   BoxShadow(
                          //       color: Colors.blueGrey,
                          //       offset: Offset(3, 3),
                          //       blurRadius: 5)
                          // ],
                          color: currentDateSelectedIndex == index
                              ? Colors.blue
                              : Colors.white),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            listOfMonths[DateTime.now()
                                        .add(Duration(days: index))
                                        .month -
                                    1]
                                .toString(),
                            style: TextStyle(
                                fontSize: 16,
                                color: currentDateSelectedIndex == index
                                    ? Colors.white
                                    : Colors.grey),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            DateTime.now()
                                .add(Duration(days: index))
                                .day
                                .toString(),
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                                color: currentDateSelectedIndex == index
                                    ? Colors.white
                                    : Colors.grey),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            listOfDays[DateTime.now()
                                        .add(Duration(days: index))
                                        .weekday -
                                    1]
                                .toString(),
                            style: TextStyle(
                                fontSize: 16,
                                color: currentDateSelectedIndex == index
                                    ? Colors.white
                                    : Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ))),
        ],
      ),
    ));
  }
}