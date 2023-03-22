import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:streaming/lecture_video2.dart';
import 'package:streaming/login.dart';

import 'package:streaming/essaie1.dart';
import 'package:streaming/register.dart';
import 'package:streaming/screnns/views/search_affiche.dart';



class Basketview extends StatelessWidget {
  const Basketview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return new Scaffold(
      // appBar: new AppBar(
      //   backgroundColor: Colors.blueGrey,
      //   title: new Text("DRAVER"),
      // ),
      
      backgroundColor: Colors.black.withOpacity(0.7),
      body:
      ListView(
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 40),
               
                height: 40,
                child: TextField(
                  
                  
                  decoration: InputDecoration(
                    labelText: "Recherche",
                    prefixIcon: Icon(Icons.search),
                    
                    filled: true,
                    fillColor: Colors.grey.shade300,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2, color: Colors.grey.shade300,
                      ),
                      borderRadius: BorderRadius.circular(50.0)
                    )
                  ),
                ),
              ),

               Container(
                margin: EdgeInsets.only(top: 40),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     Column(
                       children: [
                         Container(
                          width: 100,
                          height: 50,
                           child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(
                                  Color.fromARGB(255, 96, 139, 110),
                                ),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                )),
                              ),
                              child: Text(
                                'Fiction',
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              onPressed: () {
                                 Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SearchAf()));
                                
                              }),
                         ),
                       ],
                     ),

                     Column(
                      children: [
                        Container(
                          width: 100,
                          height: 50,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(
                                  Color.fromARGB(255, 139, 96, 96),
                                ),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                )),
                              ),
                              child: Text(
                                'Drame',
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SearchAf()));
                              }),
                        ),
                      ],
                    ),

                    Column(
                      children: [
                        Container(
                          width: 100,
                          height: 50,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(
                                  Color.fromARGB(255, 139, 120, 96),
                                ),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                )),
                              ),
                              child: Text(
                                'classique',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SearchAf()));
                              }),
                        ),
                      ],
                    ),
                   ],
                 ),
               ),
                Container(
                margin: EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 100,
                          height: 50,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(
                                  Color.fromARGB(255, 96, 100, 139),
                                ),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                )),
                              ),
                              child: Text(
                                'Horreur',
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SearchAf()));
                              }),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 100,
                          height: 50,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(
                                  Color.fromARGB(255, 172, 165, 79),
                                ),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                )),
                              ),
                              child: Text(
                                'Comedie',
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SearchAf()));
                              }),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 100,
                          height: 50,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(
                                  Color.fromARGB(255, 134, 96, 139),
                                ),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                )),
                              ),
                              child: Text(
                                'Aventure',
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SearchAf()));
                              }),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
               Container(
                margin: EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 100,
                          height: 50,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(
                                  Color.fromARGB(255, 115, 209, 189),
                                ),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                )),
                              ),
                              child: Text(
                                'Action',
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SearchAf()));
                              }),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 100,
                          height: 50,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(
                                  Color.fromARGB(255, 102, 33, 62),
                                ),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                )),
                              ),
                              child: Text(
                                'Education',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SearchAf()));
                              }),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 100,
                          height: 50,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(
                                  Color.fromARGB(255, 131, 150, 231),
                                ),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                )),
                              ),
                              child: Text(
                                'Tv show',
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SearchAf()));
                              }),
                        ),
                      ],
                    ),
                  ],
                ),
              ),


              Column(
                children: [
                  Container(
                    color: Color.fromARGB(255, 43, 43, 43),
                    margin: EdgeInsets.only(top: 30),
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
                                        'https://streaming.simplonien-da.net/marvel.jpg'),
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
          ),
        ],
      ) ,
    );
  }
}
