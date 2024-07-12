import 'package:flutter/material.dart';
import 'package:ecomm/uihelper.dart';
import 'package:ecomm/face_wash.dart';
import 'package:ecomm/sunscreen.dart';
import 'package:ecomm/face_creams.dart';
import 'package:ecomm/serums.dart';
import 'package:ecomm/lotions.dart';
import 'package:ecomm/scrub.dart';


class PersonalCareCategories extends StatefulWidget {

  @override
  State<PersonalCareCategories> createState() => _PersonalCareCategoriesState();
}

class _PersonalCareCategoriesState extends State<PersonalCareCategories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(left: 20,top: 25),
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
                    Text('Personal\n    Care',style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                    ),
                    Icon(

                      Icons.arrow_forward_ios_outlined,
                      color: Colors.blue,),
                    Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child:
                        Row(
                          children: [
                            Image.asset('assets/krishnika/pc/care2.png',
                            ),
                          ],
                        )
                    )
                  ],
                ),
              ),

              SizedBox(height: 30.0,),
              Row(
                children: [
                  Uihelper.CustomText('Skin Care'),
                ],
              ),
              SizedBox(height: 10.0),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: [
                      //SizedBox(width: 5,),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FaceWash()));
                        },
                        child: Column(
                            children: [
                              Uihelper.CustomCircleAvatar('assets/krishnika/facewash/face wash.jpg'),
                              Uihelper.CustomText1('Face Wash'),
                            ]
                        ),
                      ),
                      SizedBox(width: 20.0,),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Sunscreen()));
                        },
                        child: Column(
                            children: [
                              Uihelper.CustomCircleAvatar('assets/krishnika/suns/sunscreen.jpeg'),
                              Uihelper.CustomText1('Sunscreen'),
                            ]
                        ),
                      ),
                      SizedBox(width: 20.0,),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>FaceCreams()));
                        },
                        child: Column(
                            children: [
                              Uihelper.CustomCircleAvatar('assets/krishnika/skin/face creams.jpeg'),
                              Uihelper.CustomText1('Face Creams'),
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
                      //SizedBox(width: 5,),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>Serums()));
                        },
                        child: Column(
                            children: [
                              Uihelper.CustomCircleAvatar('assets/krishnika/skin/serums.jpg'),
                              Uihelper.CustomText1('Serums'),
                            ]
                        ),
                      ),
                      SizedBox(width: 20.0),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>Lotions()));
                        },
                        child: Column(
                            children: [
                              Uihelper.CustomCircleAvatar('assets/krishnika/skin/lotions.jpg'),
                              Uihelper.CustomText1('Lotions'),
                            ]
                        ),
                      ),
                      SizedBox(width: 20.0),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>Scrub()));
                        },
                        child: Column(
                            children: [
                              Uihelper.CustomCircleAvatar('assets/krishnika/skin/scrub.jpeg'),
                              Uihelper.CustomText1('Scrub'),
                            ]
                        ),
                      ),
                    ] // backgroundColor: Colors.transparent,
                ),
              ),

              SizedBox(height: 30.0,),
              Row(
                children: [
                  Uihelper.CustomText('Hair Care'),
                ],
              ),
              SizedBox(height: 10.0),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: [
                      //SizedBox(width: 5,),
                      GestureDetector(
                        onTap: () {},
                        child: Column(
                            children: [
                              Uihelper.CustomCircleAvatar('assets/krishnika/hair/shampoo.jpg'),
                              Uihelper.CustomText1('Shampoo'),
                            ]
                        ),
                      ),
                      SizedBox(width: 20.0,),
                      GestureDetector(
                        onTap: () {},
                        child: Column(
                            children: [
                              Uihelper.CustomCircleAvatar('assets/krishnika/hair/hair oil.jpg'),
                              Uihelper.CustomText1('Hair Oil'),
                            ]
                        ),
                      ),
                      SizedBox(width: 20.0,),
                      GestureDetector(
                        onTap: () {},
                        child: Column(
                            children: [
                              Uihelper.CustomCircleAvatar('assets/krishnika/hair/hair serum.jpeg'),
                              Uihelper.CustomText1('Hair Serum'),
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
                      //SizedBox(width: 5,),
                      GestureDetector(
                        onTap: () {},
                        child: Column(
                            children: [
                              Uihelper.CustomCircleAvatar('assets/krishnika/hair/conditioner.jpg'),
                              Uihelper.CustomText1('Conditioner\n'),
                            ]
                        ),
                      ),
                      SizedBox(width: 20.0),
                      GestureDetector(
                        onTap: () {},
                        child: Column(
                            children: [
                              Uihelper.CustomCircleAvatar('assets/krishnika/hair/hair color.jpeg'),
                              Uihelper.CustomText1('Hair Color\n'),
                            ]
                        ),
                      ),
                      SizedBox(width: 20.0),
                      GestureDetector(
                        onTap: () {},
                        child: Column(
                            children: [
                              Uihelper.CustomCircleAvatar('assets/krishnika/hair/hair tools & Accessories.jpg'),
                              Uihelper.CustomText1('   Hair Tools\n& Accessories'),
                            ]
                        ),
                      ),
                    ] // backgroundColor: Colors.transparent,
                ),
              ),

              SizedBox(height: 30.0,),
              Row(
                children: [
                  Uihelper.CustomText('Fragrance'),
                ],
              ),
              SizedBox(height: 10.0),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: [
                      //SizedBox(width: 5,),
                      GestureDetector(
                        onTap: () {},
                        child: Column(
                            children: [
                              Uihelper.CustomCircleAvatar('assets/krishnika/Frag/unisex fragrances.jpg'),
                              Uihelper.CustomText1('   Unisex\nFragrances'),
                            ]
                        ),
                      ),
                      SizedBox(width: 20.0,),
                      GestureDetector(
                        onTap: () {},
                        child: Column(
                            children: [
                              Uihelper.CustomCircleAvatar('assets/krishnika/Frag/fragrances for her.jpg'),
                              Uihelper.CustomText1('For Her\n'),
                            ]
                        ),
                      ),
                      SizedBox(width: 20.0,),
                      GestureDetector(
                        onTap: () {},
                        child: Column(
                            children: [
                              Uihelper.CustomCircleAvatar('assets/krishnika/Frag/fragrances for him.jpeg'),
                              Uihelper.CustomText1('For Him\n'),
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
                      //SizedBox(width: 5,),
                      GestureDetector(
                        onTap: () {},
                        child: Column(
                            children: [
                              Uihelper.CustomCircleAvatar('assets/krishnika/Frag/roll on.jpg'),
                              Uihelper.CustomText1('Roll On\n'),
                            ]
                        ),
                      ),
                      SizedBox(width: 220.0),
                    ] // backgroundColor: Colors.transparent,
                ),
              ),

              SizedBox(height: 30.0,),
              Row(
                children: [
                  Uihelper.CustomText('Makeup'),
                ],
              ),
              SizedBox(height: 10.0),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: [
                      //SizedBox(width: 5,),
                      GestureDetector(
                        onTap: () {},
                        child: Column(
                            children: [
                              Uihelper.CustomCircleAvatar('assets/krishnika/makeup/face.jpeg'),
                              Uihelper.CustomText1('Face'),
                            ]
                        ),
                      ),
                      SizedBox(width: 20.0,),
                      GestureDetector(
                        onTap: () {},
                        child: Column(
                            children: [
                              Uihelper.CustomCircleAvatar('assets/krishnika/makeup/lips.jpeg'),
                              Uihelper.CustomText1('lips'),
                            ]
                        ),
                      ),
                      SizedBox(width: 20.0,),
                      GestureDetector(
                        onTap: () {},
                        child: Column(
                            children: [
                              Uihelper.CustomCircleAvatar('assets/krishnika/makeup/nails.jpeg'),
                              Uihelper.CustomText1('Nails'),
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
                      //SizedBox(width: 5,),
                      GestureDetector(
                        onTap: () {},
                        child: Column(
                            children: [
                              Uihelper.CustomCircleAvatar('assets/krishnika/makeup/eyes.jpeg'),
                              Uihelper.CustomText1('Eyes\n'),
                            ]
                        ),
                      ),
                      SizedBox(width: 20.0),
                      GestureDetector(
                        onTap: () {},
                        child: Column(
                            children: [
                              Uihelper.CustomCircleAvatar('assets/krishnika/makeup/tools & brushes.jpeg'),
                              Uihelper.CustomText1(' Tools &\nBrushes'),
                            ]
                        ),
                      ),
                      SizedBox(width: 20.0),
                      GestureDetector(
                        onTap: () {},
                        child: Column(
                            children: [
                              Uihelper.CustomCircleAvatar('assets/krishnika/makeup/makeup kits.jpeg'),
                              Uihelper.CustomText1('Makeup\n    Kits'),
                            ]
                        ),
                      ),
                    ] // backgroundColor: Colors.transparent,
                ),
              ),

              SizedBox(height: 30.0,),
              Row(
                children: [
                  Uihelper.CustomText('Daily Essentials'),
                ],
              ),
              SizedBox(height: 10.0),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: [
                      //SizedBox(width: 5,),
                      GestureDetector(
                        onTap: () {},
                        child: Column(
                            children: [
                              Uihelper.CustomCircleAvatar('assets/krishnika/de/bath & spa.jpeg'),
                              Uihelper.CustomText1('Bath & Spa\n'),
                            ]
                        ),
                      ),
                      SizedBox(width: 20.0,),
                      GestureDetector(
                        onTap: () {},
                        child: Column(
                            children: [
                              Uihelper.CustomCircleAvatar('assets/krishnika/de/oral care.jpeg'),
                              Uihelper.CustomText1('Oral Care\n'),
                            ]
                        ),
                      ),
                      SizedBox(width: 20.0,),
                      GestureDetector(
                        onTap: () {},
                        child: Column(
                            children: [
                              Uihelper.CustomCircleAvatar('assets/krishnika/de/women hygiene.jpeg'),
                              Uihelper.CustomText1(' Women\nHygiene'),
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
                      //SizedBox(width: 5,),
                      GestureDetector(
                        onTap: () {},
                        child: Column(
                            children: [
                              Uihelper.CustomCircleAvatar('assets/krishnika/de/men grooming.jpeg'),
                              Uihelper.CustomText1('     Men\nGrooming'),
                            ]
                        ),
                      ),
                      SizedBox(width: 20.0),
                      GestureDetector(
                        onTap: () {},
                        child: Column(
                            children: [
                              Uihelper.CustomCircleAvatar('assets/krishnika/de/shaving essentials.jpeg'),
                              Uihelper.CustomText1('  Shaving\nEssentials'),
                            ]
                        ),
                      ),
                      SizedBox(width: 20.0),
                      GestureDetector(
                        onTap: () {},
                        child: Column(
                            children: [
                              Uihelper.CustomCircleAvatar('assets/krishnika/de/soaps.jpeg'),
                              Uihelper.CustomText1('Soaps\n'),
                            ]
                        ),
                      ),
                    ] // backgroundColor: Colors.transparent,
                ),
              ),
              SizedBox(height: 30.0,),
            ],
          ),
        ),
      ),
    );
  }
}