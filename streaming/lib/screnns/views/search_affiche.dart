import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:streaming/lecture_video2.dart';

class SearchAf extends StatefulWidget {
  const SearchAf({super.key});

  @override
  State<SearchAf> createState() => _SearchAfState();
}

class _SearchAfState extends State<SearchAf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blueGrey,
        title: new Text("DRAVER"),
      ),
      backgroundColor: Colors.black.withOpacity(0.7),
      body: 
      ListView(
        children: [
          Column(
            children: [
             
             
                  Container(
                    color:Color.fromARGB(255, 43, 43, 43), 
                    margin: EdgeInsets.only(top: 30),
                    child: 
                  
                   Row(
                    children: [
                      Column(
                        children: [
                           Material(
                          elevation: 6,
                          child: SizedBox(
                            width: 170,
                            height: 100,
                            child: InkWell(
                              radius: 100,
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => Video2()));
                              },
                              child: Ink.image(
                                fit: BoxFit.cover,
                                image: const NetworkImage(
                                    'https://streaming.simplonien-da.net/marvel.jpg'),
                              ),
                            ),
                          ),
                        ),
                        ],
                      ),



                      Column(children: [
                        Text(" Avengers: infinity", style: TextStyle(
                          color: Colors.white
                        ),)
                      ],),

                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Column(
                          children: [
                            Icon(Icons.play_circle, color: Colors.white,)
                          ],
                        ),
                      )
                    ],
                  ),
                  ),



                  Container(
                color: Color.fromARGB(255, 43, 43, 43),
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Material(
                          elevation: 6,
                          child: SizedBox(
                            width: 170,
                            height: 100,
                            child: InkWell(
                              radius: 100,
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Video2()));
                              },
                              child: Ink.image(
                                fit: BoxFit.cover,
                                image: const NetworkImage(
                                    'https://streaming.simplonien-da.net/last.jpeg'),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          " The Last song       ",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Column(
                        children: [
                          Icon(
                            Icons.play_circle,
                            color: Colors.white,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),


               Container(
                color: Color.fromARGB(255, 43, 43, 43),
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Material(
                          elevation: 6,
                          child: SizedBox(
                            width: 170,
                            height: 100,
                            child: InkWell(
                              radius: 100,
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Video2()));
                              },
                              child: Ink.image(
                                fit: BoxFit.cover,
                                image: const NetworkImage(
                                    'https://streaming.simplonien-da.net/ima.png'),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          " Ima                       ",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Column(
                        children: [
                          Icon(
                            Icons.play_circle,
                            color: Colors.white,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
               Container(
                color: Color.fromARGB(255, 43, 43, 43),
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Material(
                          elevation: 6,
                          child: SizedBox(
                            width: 170,
                            height: 100,
                            child: InkWell(
                              radius: 100,
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Video2()));
                              },
                              child: Ink.image(
                                fit: BoxFit.cover,
                                image: const NetworkImage(
                                    'https://streaming.simplonien-da.net/eternel.jpg'),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          " Eternals               ",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Column(
                        children: [
                          Icon(
                            Icons.play_circle,
                            color: Colors.white,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
               Container(
                color: Color.fromARGB(255, 43, 43, 43),
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Material(
                          elevation: 6,
                          child: SizedBox(
                            width: 170,
                            height: 100,
                            child: InkWell(
                              radius: 100,
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Video2()));
                              },
                              child: Ink.image(
                                fit: BoxFit.cover,
                                image: const NetworkImage(
                                    'https://streaming.simplonien-da.net/corana.jpg'),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          " Corona                ",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Column(
                        children: [
                          Icon(
                            Icons.play_circle,
                            color: Colors.white,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),

               Container(
                color: Color.fromARGB(255, 43, 43, 43),
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Material(
                          elevation: 6,
                          child: SizedBox(
                            width: 170,
                            height: 100,
                            child: InkWell(
                              radius: 100,
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Video2()));
                              },
                              child: Ink.image(
                                fit: BoxFit.cover,
                                image: const NetworkImage(
                                    'https://streaming.simplonien-da.net/max.jpg'),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          " Avengers: infinity",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Column(
                        children: [
                          Icon(
                            Icons.play_circle,
                            color: Colors.white,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
               Container(
                color: Color.fromARGB(255, 43, 43, 43),
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Material(
                          elevation: 6,
                          child: SizedBox(
                            width: 170,
                            height: 100,
                            child: InkWell(
                              radius: 100,
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Video2()));
                              },
                              child: Ink.image(
                                fit: BoxFit.cover,
                                image: const NetworkImage(
                                    'https://streaming.simplonien-da.net/mas.jpg'),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          " Avengers: infinity",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Column(
                        children: [
                          Icon(
                            Icons.play_circle,
                            color: Colors.white,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
                
              
            ],
          ),
        ],
      )
      ,
    );
  }
}