import 'package:flutter/material.dart';
import 'package:ecomm/g1.dart';
import 'package:ecomm/g2.dart';
import 'package:ecomm/g3.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Grocery App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(left: 20.0,top: 25),
          child:Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                          Colors.white,
                          Colors.white,
                          Colors.lightBlueAccent,
                        ]
                    ),
                  ),
                  height: 100,
                  child: Row(
                      children: [
                        Text('Grocery ', style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,),
                        ),
                        Icon(Icons.arrow_forward_ios_outlined, color: Colors.blue),
                        Padding(padding: const EdgeInsets.only(left: 100.0),
                          child: Row(
                            children: [
                              Image.asset('assets/rakshita/file.png')
                            ],
                          ),
                        )
                      ]
                  ),
                ),
                SizedBox(height: 30.0,),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'For you',
                          style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold,),
                        ),
                        SizedBox(height: 30.0),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child:  Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Grocery3()));
                                  },
                                  child: Column(
                                    children: [
                                      CircleAvatar(
                                        radius: 45,
                                        backgroundImage: AssetImage('assets/rakshita/file3.png'),
                                      ),
                                      Text(
                                        'Essentials',
                                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 30.0,),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Grocery2()));
                                  },
                                  child: Column(
                                    children: [
                                      CircleAvatar(
                                        radius: 45,
                                        backgroundImage: AssetImage('assets/rakshita/file2.jpg'),
                                      ),
                                      Text(
                                        'Snacks',
                                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 45.0,),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Grocery()));
                                  },
                                  child: Column(
                                    children: [
                                      CircleAvatar(
                                        radius: 45,
                                        backgroundImage: AssetImage('assets/rakshita/f1.jpg'),
                                      ),
                                      Text(
                                        'Kitchen',
                                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                )
                              ]
                          ),
                        ),
                      ]
                  ),
                ),
              ]
          ),
        )
    );
  }
}