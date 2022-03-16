import 'package:flutter/material.dart';
import 'modal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 230, 226, 226),
          title: Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width:180),
                  Image.asset(
                 'images/Logo.png',
                  fit: BoxFit.contain,
                  height: 100,
              ),
              SizedBox(width: 200,),
               Column(
                 children: const[
                   
                   Text('Teacher Name',style:TextStyle(color:Colors.orange,fontWeight: FontWeight.w500)),
                   SizedBox(height: 5,),
                   Text('Mobile Number',style:TextStyle(color:Colors.orange,fontWeight: FontWeight.w500)),
                 ],
               ),
              ],
               
          

          ),toolbarHeight: 120,actions: [Image.asset(
                 'images/robo.png',
                  fit: BoxFit.fitHeight,
                  
              ),],
  ),
        // body: ListView.builder(
        //                   controller: ScrollController(),
        //                 shrinkWrap: true,
        //                 scrollDirection: Axis.horizontal,
        //                 itemCount: 3,
        //                 itemBuilder: (BuildContext context, int index) =>
        //                     topCard(context,item:items[index]),
        //               ),

        body: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
              menuCard(context),
              // const Text(
              //   "Sessions:",
              //   style: TextStyle(fontSize: 18),
              // ),

                      Row(
                        children: [
                          const Padding(
                            padding:  EdgeInsets.fromLTRB(194,15,0,0),
                            child: Align(
                              alignment: Alignment.topLeft,
                            child:Text("Sessions:",style: TextStyle(color:Colors.orange,fontWeight: FontWeight.w600),)),
                          ),
            Padding(
              padding: const EdgeInsets.fromLTRB(1250,15,0,0),
               child:TextButton(
                  onPressed: () {
                    print("view all");
                  },
                  child:const Text("View all",style: TextStyle(color:Color.fromARGB(255, 6, 38, 145),fontWeight: FontWeight.w600),),
                ),
              
            ),
                        ],
                      ),
              Padding(
                padding: const EdgeInsets.fromLTRB(170,15,0,0),
                child: SizedBox(
                  height: 180.0,
                  child: ListView.builder(
                    physics: ClampingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) =>
                        topCard(context, item: items[index]),
                  ),
                ),
              ),

               
                
                      
             
                      Row(
                        children: [
                           const Padding(
                            padding:  EdgeInsets.fromLTRB(194,0,0,0),
                            child: Align(
                              alignment: Alignment.topLeft,
                            child:Text("Tasks Batches",style: TextStyle(color:Colors.orange,fontWeight: FontWeight.w600),)),
                          ),
                           Padding(
              padding: EdgeInsets.fromLTRB(100,0,0,0),
              child:TextButton(
                  onPressed: () {
                    print("view all");
                  },
                  child:const Text("View all",style: TextStyle(color:Color.fromARGB(255, 6, 38, 145),fontWeight: FontWeight.w600),),
                ),
            
            ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(170,6,0,0),
                        child: SizedBox(width: 280,
                     child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: items1.length,
                          itemBuilder: (BuildContext context, int index) =>
                              Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: taskBatch(context,
                              item1: items1[index],
                            ),
                          ),
                        ),
                              
                        ),
                      )
                    
                  
              
                  


            ])));
  }

  Widget topCard(BuildContext context, {required CardItem item}) =>
      Column(children: [
        // const SizedBox(height: 20.0),
        Container(
          height: 155.0,
          width: 310.0,
          // padding: const EdgeInsets.all(10.0),
          margin: const EdgeInsets.fromLTRB(20,0,20,0),
          decoration: BoxDecoration(
            color: item.color,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            children: [
              const SizedBox(height: 2, width: 5),
              Text(item.title,
                  style: const TextStyle(fontSize: 18, color: Colors.white)),
              const SizedBox(height: 5, width: 5),
              Text(item.subtitle,
                  style: const TextStyle(fontSize: 18, color: Colors.white)),
              const SizedBox(height: 5),
              const Divider(
                  thickness: 2, indent: 15, endIndent: 15, color: Colors.white),
              const SizedBox(height: 5),
              Row(
                children: [
                  const SizedBox(width: 20),
                  Column(
                    children:  [
                      InkWell(
                        child: const CircleAvatar(
                          radius: 20.0,
                            backgroundImage: AssetImage('images/assignments.png'),
                          backgroundColor: Colors.transparent,
                        ),
                        onTap:  () {
                    print("Live session");
                  },
                      ),
                       const SizedBox(
                        height: 6,
                      ),
                      const Text(
                        "Live session",
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(width: 55),
                  Column(
                    children:  [
                      InkWell(
                        child: const CircleAvatar(
                          foregroundColor: Colors.white,
                          radius: 20.0,
                          backgroundImage: AssetImage('images/material.png'),
                          backgroundColor: Colors.white,
                        ),
                        onTap:  () {
                    print("Materials");
                  },
                      ),
                     const SizedBox(
                        height: 6,
                      ),
                      const Text("Materials",
                          style: TextStyle(fontSize: 10, color: Colors.white)),
                    ],
                  ),
                  const SizedBox(width: 55),
                  Column(
                    children:  [
                      InkWell(
                        child: const CircleAvatar(
                          radius: 20.0,
                          backgroundImage: AssetImage('images/assignments.png'),
                          backgroundColor: Colors.transparent,
                        ),
                        onTap: () {
                    print("Assignments");
                  },
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      const Text(
                        "Assignments",
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        )
      ]);

  Widget menuCard(BuildContext context) => Column(children: [
        SingleChildScrollView(
          child: Container(
            height: 45.0,
          
            // padding: const EdgeInsets.all(10.0),
            // margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Color.fromARGB(159, 139, 85, 23),
              borderRadius: BorderRadius.circular(0.0),
            ),
            child: Row(
              children: [
                SizedBox(width: 200),        
                TextButton(
                  onPressed: () {
                    print("DashBoard");
                  },
                  child: const Text(
                    "DashBoard",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(width: 50),
                TextButton(
                  onPressed: () {
                    print("Assignments");
                  },
                  child: const Text(
                    "Assignments",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(width: 50),
                // Text("Assignments",style:TextStyle(color:Colors.white,fontSize: 14,fontWeight: FontWeight.w500)),
                TextButton(
                  onPressed: () {
                    print("Attendance");
                  },
                  child: const Text(
                    "Attendance",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                
                SizedBox(width: 50),
                TextButton(
                  onPressed: () {
                    print("Calender");
                  },
                  child: const Text(
                    "Calender",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(width: 50),
                TextButton(
                  onPressed: () {
                    print("Chat");
                  },
                  child: const Text(
                    "Chat",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),
        ),
      ]);




      Widget taskBatch(BuildContext context, {required CardItem1 item1}) => Container(
    margin: const EdgeInsets.fromLTRB(0,0,0,0),
    
        height: 120,
        width: 280,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 252, 242, 236),
          border:
              Border.all(color: Color.fromARGB(255, 252, 226, 209), width:3 ),
          borderRadius: const BorderRadius.all(Radius.circular(15)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(
                height: 50,
                // color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0,10,0,0),
                  child: Row( children: [
                   
                     const SizedBox(
                        height: 80,
                        width: 40,
                        child: Image(
                          image: AssetImage('images/img.png'),
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    const SizedBox(
                        width: 10,),
                     Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item1.title,
                            style: const TextStyle(
                                fontSize: 16,
                                color: Colors.indigo,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            item1.subtitle,
                            style: const TextStyle(
                                fontSize: 10, color: Colors.indigoAccent),
                          ),
                        ],
                      ),
                    
                  ]
                  ),
                ),
              ),
              
                 Align(
                  alignment: Alignment.topRight,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('View All',style: const TextStyle(
                              fontSize: 10)),
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(70, 30),
                        primary: Color.fromARGB(163, 252, 156, 46))),
                ),
              
            ]),
            
          
        )
        );
}
