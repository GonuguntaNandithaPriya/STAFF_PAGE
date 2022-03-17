import 'package:flutter/material.dart';
import 'package:horizontal_calendar/horizontal_calendar.dart';

class MyHomePage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
              child: SizedBox(
                height: 90,
                //  width:1500,
                child: HorizontalCalendar(
                  date: DateTime.now(),
                  textColor: Colors.black45,
                  backgroundColor: Colors.white,
                  selectedColor: Colors.blue,
                  onDateSelected: (date) => print(
                    date.toString(),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.fromLTRB(200, 0, 0, 0),
                  child: Text(
                    "AI- LEVEL-1",
                    style: TextStyle(color: Color.fromARGB(255, 1, 48, 82),fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(width: 75),
                Text("AI- LEVEL-2",
                    style: TextStyle(
                        color: Color.fromARGB(255, 1, 48, 82),
                        fontWeight: FontWeight.w600)),
                SizedBox(width: 75),
                Text("AI- LEVEL-3",
                    style: TextStyle(
                        color: Color.fromARGB(255, 1, 48, 82),
                        fontWeight: FontWeight.w600)),
                SizedBox(width: 75),
                Text(
                  "AI- LEVEL-4",
                  style: TextStyle(
                      color: Color.fromARGB(255, 1, 48, 82),
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(width: 75),
                Text(
                  "AI- LEVEL-5",
                  style: TextStyle(
                      color: Color.fromARGB(255, 1, 48, 82),
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const Divider(
              indent: 200,
              endIndent: 290,
              color: Colors.orange,
              thickness: 1,
            ),
            const SizedBox(width: 40),
            Column(
              children: [
                top(context),
                const SizedBox(height: 30),
                top(context),
                const SizedBox(height: 30),
                top(context),
                const SizedBox(height: 30),
                top(context),
              ],
            ),
      
            // GridView(
            // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //     crossAxisCount: 3,
            //     mainAxisSpacing: 16),
            // children: [
            //   Card(context),
            //    Card(context),
            //     Card(context),
            // ])
          ],
        ),
      ),
    );
  }

  Widget top(BuildContext context) => Row(
        children: [
          const SizedBox(width: 80),
          Card(context),
          const SizedBox(width: 40),
          Card(context),
          const SizedBox(width: 40),
          Card(context)
        ],
      );

  Widget Card(
    BuildContext context,
  ) =>
      Column(children: [
        // const SizedBox(height: 20.0),
        Container(
            height: 130.0,
            width: 220.0,
            // padding: const EdgeInsets.all(10.0),
            // margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            decoration: BoxDecoration(
              border: Border.all(
                  color: const Color.fromARGB(255, 245, 234, 230), width: 2),
              color: const Color.fromARGB(255, 248, 240, 237),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(children: [
              const SizedBox(height: 2, width: 5),
              Row(
                children: [
                  InkWell(
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(10, 15, 0, 0),
                      child: CircleAvatar(
                        foregroundColor: Colors.white,
                        radius: 16.0,
                        backgroundImage: AssetImage('images/material.png'),
                        backgroundColor: Colors.white,
                      ),
                    ),
                    onTap: () {
                      print("Materials");
                    },
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(10, 15, 0, 0),
                    child: Text("PVNSS. GANESH BABU",
                        style: TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(255, 2, 4, 121),
                            fontWeight: FontWeight.w600)),
                  ),
                ],
              ),
              //  SizedBox(height: 5,),
              const Divider(
                color: Color.fromARGB(255, 7, 59, 8),
                indent: 9,
                endIndent: 25,
              ),
              Row(
                children: [
                  InkWell(
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                      child: CircleAvatar(
                        foregroundColor: Colors.white,
                        radius: 22.0,
                        backgroundImage: AssetImage('images/assignments.png'),
                        backgroundColor: Colors.white,
                      ),
                    ),
                    onTap: () {
                      print("Assignments");
                    },
                  ),
                  InkWell(
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                      child: CircleAvatar(
                        foregroundColor: Colors.white,
                        radius: 22.0,
                        backgroundImage: AssetImage('images/material.png'),
                        backgroundColor: Colors.white,
                      ),
                    ),
                    onTap: () {
                      print("Materials");
                    },
                  ),
                ],
              ),
            ]))
      ]);
}
