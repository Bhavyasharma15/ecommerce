import 'package:ecomm/AC.dart';
import 'package:flutter/material.dart';
import 'package:ecomm/Fan.dart';
import 'package:ecomm/Dishwasher.dart';
import 'package:ecomm/Oven.dart';
import 'package:ecomm/Ref.dart';
import 'package:ecomm/TV.dart';


void main(){
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: home(),
      )
  );
}

class home extends StatefulWidget {

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 35),
        child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.white,
                      Colors.white,
                      Colors.lightBlueAccent,
                    ],
                  ),
                ),
                height: 100,
                child: Row(
                  children: [
                    Text('  Appliance',style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                    ),
                    Icon(

                      Icons.arrow_forward_ios_outlined,
                      color: Colors.blue,),
                    Padding(
                        padding: const EdgeInsets.only(left: 95.0),
                        child:
                        Row(
                          children: [
                            Image.asset('assets/gunjan/app-removebg-preview.png',
                            ),
                          ],
                        )
                    )
                  ],
                ),
              ),
              SizedBox(height: 70.0),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: [
                      SizedBox(width: 5,),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Fan(),
                            ),
                          );
                        },
                        child: Column(
                            children: [

                              CircleAvatar(
                                radius: 45,
                                backgroundImage: AssetImage(
                                    'assets/gunjan/fan.jpg'),
                              ),
                              Text('Fan',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold ),
                              ),

                            ]
                        ),
                      ),
                      SizedBox(width: 30.0,),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>  Dishwasher(),
                            ),
                          );
                        },
                        child: Column(
                            children: [
                              CircleAvatar(
                                radius: 45,
                                backgroundImage: AssetImage(
                                    'assets/gunjan/dishwasher.jpg'),
                              ),
                              Text('Dishwasher',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ]
                        ),
                      ),
                      SizedBox(width: 30.0,),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Oven(),
                            ),
                          );
                        },
                        child: Column(
                            children: [
                              CircleAvatar(
                                radius: 45,
                                backgroundImage: AssetImage(
                                    'assets/gunjan/oven.jpg'),
                              ),
                              Text('Oven',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ]
                        ),
                      ),
                    ] // backgroundColor: Colors.transparent,
                ),
              ),
              SizedBox(height: 30.0),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: [
                      SizedBox(width: 5,),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Ref(),
                            ),
                          );
                        },
                        child: Column(
                            children: [
                              CircleAvatar(
                                radius: 45,
                                backgroundImage: AssetImage(
                                    'assets/gunjan/ref.jpg'),
                              ),
                              Text('Refrigerator',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ]
                        ),
                      ),
                      SizedBox(width: 30.0),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>  TV(),
                            ),
                          );
                        },
                        child: Column(
                            children: [
                              CircleAvatar(
                                radius: 45,
                                backgroundImage: AssetImage('assets/gunjan/tv.jpeg'),
                              ),
                              Text('Television',
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ]
                        ),
                      ),
                      SizedBox(width: 30.0),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>  AC(),
                            ),
                          );
                        },
                        child: Column(
                            children: [
                              CircleAvatar(
                                radius: 45,
                                backgroundImage: AssetImage(
                                    'assets/gunjan/ac.jpg'),
                              ),
                              Text('      Air\nConditioner',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ]
                        ),
                      ),
                    ] // backgroundColor: Colors.transparent,
                ),
              ),
            ]
        ),
      ),

    );

  }
}





