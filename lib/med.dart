import 'package:flutter/material.dart';
import 'package:ecomm/Ayurveda.dart';
import 'package:ecomm/FirstAid.dart';
import 'package:ecomm/M&B.dart';
import 'package:ecomm/Monsoon.dart';
import 'package:ecomm/supplements.dart';
import 'package:ecomm/Diabetes.dart';

void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Med(),
  )
  );
}
class Med extends StatefulWidget {

  @override
  
  State<Med> createState() => _MedState();
}

class _MedState extends State<Med> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      backgroundColor: Colors.white,
      body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 25),
              child: Container(
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
                      Text('Medicines',style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                      ),
                      Icon(

                        Icons.arrow_forward_ios_outlined,
                        color: Colors.blue,),
                      Padding(
                          padding: const EdgeInsets.only(left: 110.0),
                          child:
                          Row(
                            children: [
                              Image.asset('assets/images/med1.png',
                              ),
                            ],
                          )
                      ),
                    ]
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10.0),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                              children: [
                                SizedBox(width: 4,),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Ayur()
                                      ),
                                    );
                                    },
                                  child: Column(
                                      children: [
                                        CircleAvatar(
                                          radius: 45,
                                          backgroundImage: AssetImage(
                                              'assets/images/ayur.jpg'),
                                        ),
                                        Text('Ayurveda',
                                          style: TextStyle(
                                              fontSize: 16, fontWeight: FontWeight.bold ),
                                        ),
                                      ]
                                  ),
                                ),
                                SizedBox(width: 40.0,),
                                GestureDetector(
                                  onTap: () {Navigator.push(
                                      context,
                                      MaterialPageRoute(

                                          builder: (context)=>First()
                                      ));},
                                  child: Column(
                                      children: [
                                        CircleAvatar(
                                          radius: 45,
                                          backgroundImage: AssetImage(
                                              'assets/images/fa.jpg'),
                                        ),
                                        Text('First Aid',
                                          style: TextStyle(
                                              fontSize: 16, fontWeight: FontWeight.bold),
                                        ),
                                      ]
                                  ),
                                ),
                                SizedBox(width: 45.0,),
                                GestureDetector(
                                  onTap: () {Navigator.push(
                                      context,
                                      MaterialPageRoute(

                                          builder: (context)=>MB()
                                      ));},
                                  child: Column(
                                      children: [
                                        CircleAvatar(
                                          radius: 45,
                                          backgroundImage: AssetImage(
                                              'assets/images/mb-removebg-preview.png'),
                                        ),
                                        Text('Mom & Baby\n',
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
                                onTap: () {Navigator.push(
                                    context,
                                    MaterialPageRoute(

                                        builder: (context)=>Mon()
                                    ));},
                                child: Column(
                                    children: [
                                      CircleAvatar(
                                        radius: 45,
                                        backgroundImage: AssetImage(
                                            'assets/images/Monsoon.jpg'),
                                      ),
                                      Text(' Monsoon\nEssentials',
                                        style: TextStyle(
                                            fontSize: 16, fontWeight: FontWeight.bold),
                                      ),
                                    ]
                                ),
                              ),
                              SizedBox(width: 40.0),
                              GestureDetector(
                                onTap: () {Navigator.push(
                                    context,
                                    MaterialPageRoute(

                                        builder: (context)=>Sup()
                                    ));},
                                child: Column(
                                    children: [
                                      CircleAvatar(
                                        radius: 45,
                                        backgroundImage: AssetImage('assets/images/supp-removebg-preview.png'),
                                      ),
                                      Text('Supplements',
                                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                      ),
                                    ]
                                ),
                              ),
                              SizedBox(width: 40.0),
                              GestureDetector(
                                onTap: () {Navigator.push(
                                    context,
                                    MaterialPageRoute(

                                        builder: (context)=>Dia()
                                    ));},
                                child: Column(
                                    children: [
                                      CircleAvatar(
                                        radius: 45,
                                        backgroundImage: AssetImage(
                                            'assets/images/Diabetic-removebg-preview.png'),
                                      ),
                                      Text('Diabetes',
                                        style: TextStyle(
                                            fontSize: 16, fontWeight: FontWeight.bold),
                                      ),
                                    ]
                                ),
                              ),
                            ]
                          ),
                        ),
                      ],
                  )
                ),
              ]
            ),
          ]
      ),
    );
  }
}
