

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:streaming/lecture_video.dart';
import 'package:streaming/lecture_video2.dart';
import 'package:streaming/login.dart';
import 'package:streaming/motdepasseoub.dart';

import 'package:streaming/essaie1.dart';
import 'package:streaming/register.dart';
import 'package:streaming/screnns/views/search_affiche.dart';

import 'edit_profil.dart';

class Homeview extends StatelessWidget {
  const Homeview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1FFWyTdb2735ATZkjwqTjSXw7WPwim6uW2d8r9_SDfGaY26PwinvRZ4mZD8mebQgBMj8&usqp=CAU',
      'https://images-na.ssl-images-amazon.com/images/S/pv-target-images/f6057271a238bb5534df2c4830be03afcd55373af6a5b1fe0c6a1a5aa74fe12c._UY500_UX667_RI_V_TTW_.jpg',
      'https://img2.hulu.com/user/v3/artwork/d1d023da-ebb7-474c-b858-c4890e2d5757?base_image_bucket_name=image_manager&base_image=fae3cfba-d33c-404b-8ed5-2681fe2a5723&region=US&format=jpeg&size=952x536',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWBGjhj18rmSJc5qmZekeRZw0m5UG5o20X3w&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2lGZ2JOs0eEOeth4l-fI3rmiOM2eY9lpFZXEpH71tofslg5ZKX8oaPDw1-qSCdBUMid0&usqp=CAU',
      // 'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
      'https://www.ivoiresoir.net/wp-content/uploads/2020/06/CACAO-Alex-Ogou.jpg'
    ];

    final List<Widget> imageSliders = imgList
        .map((item) => Container(
              child: Container(
                margin: EdgeInsets.all(5.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    child: Stack(
                      children: <Widget>[
                        Image.network(item, fit: BoxFit.cover, width: 1000.0),
                        Positioned(
                          bottom: 0.0,
                          left: 0.0,
                          right: 0.0,
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromARGB(200, 0, 0, 0),
                                  Color.fromARGB(0, 0, 0, 0)
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 20.0),
                            child: Text(
                              'N° ${imgList.indexOf(item)} Série',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ))
        .toList();

    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blueGrey,
        title: new Text("DRAVER"),
      ),
      drawer: new Drawer(
        backgroundColor: Colors.black.withOpacity(0.7),
        child: ListView(children: <Widget>[
          new UserAccountsDrawerHeader(
              accountName: new Text("ADJAGBE JOSEPHINE"),
              accountEmail: new Text("josephineadjagbe@gmail.com")),
          new ListTile(
            title: new Text(
              "Films",
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) => new SearchAf()));
            },
          ),
          new ListTile(
            title: new Text(
              "Séries",
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) => new SearchAf()));
            },
          ),
          new ListTile(
            title: new Text(
              "Action et Aventure",
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) => new SearchAf()));
            },
          ),
          new ListTile(
            title: new Text(
              "Comedie",
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) => new SearchAf()));
            },
          ),
          new ListTile(
            title: new Text(
              "Classique",
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) => new SearchAf()));
            },
          ),
          new ListTile(
            title: new Text(
              "Science fiction et Horreur",
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) => new SearchAf()));
            },
          ),
          new ListTile(
            title: new Text(
              "Drame",
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) => new SearchAf()));
            },
          ),
          new ListTile(
            title: new Text(
              "Enfants",
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) => new SearchAf()));
            },
          ),
          new ListTile(
            title: new Text(
              "Déconnexion",
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) => new MyHomePage()));
            },
          ),
        ]),
      ),
      backgroundColor: Color.fromARGB(255, 43, 43, 43),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                child: CarouselSlider(
                  options: CarouselOptions(
                    aspectRatio: 2.0,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: false,
                    initialPage: 2,
                    autoPlay: true,
                  ),
                  items: imageSliders,
                ),
              ),
             Container(
                  margin: EdgeInsets.only(top: 10, right: 270),
                  child: Text(
                    " Films",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  )),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Material(
                            elevation: 6,
                            child: SizedBox(
                              width: 80,
                              height: 120,
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
                                      'https://streaming.simplonien-da.net/prince.jpeg'),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Material(
                            elevation: 6,
                            child: SizedBox(
                              width: 80,
                              height: 120,
                              child: InkWell(
                                radius: 100,
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Myhomepag2()));
                                },
                                child: Ink.image(
                                  fit: BoxFit.cover,
                                  image: const NetworkImage(
                                      'https://streaming.simplonien-da.net/merci.jpeg'),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Material(
                            elevation: 6,
                            child: SizedBox(
                              width: 80,
                              height: 120,
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
                                      'https://streaming.simplonien-da.net/toutmoi.jpeg'),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Material(
                            elevation: 6,
                            child: SizedBox(
                              width: 80,
                              height: 120,
                              child: InkWell(
                                radius: 100,
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Myhomepag2()));
                                },
                                child: Ink.image(
                                  fit: BoxFit.cover,
                                  image: const NetworkImage(
                                      'https://streaming.simplonien-da.net/unca.jpeg'),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ]),
              ),
              Container(
                  margin: EdgeInsets.only(top: 10, right: 260),
                  child: Text(
                    " Séries",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  )),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Material(
                            elevation: 6,
                            child: SizedBox(
                              width: 80,
                              height: 120,
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
                                      'https://streaming.simplonien-da.net/africa.jpeg'),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Material(
                            elevation: 6,
                            child: SizedBox(
                              width: 80,
                              height: 120,
                              child: InkWell(
                                radius: 100,
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Myhomepag2()));
                                },
                                child: Ink.image(
                                  fit: BoxFit.cover,
                                  image: const NetworkImage(
                                      'https://streaming.simplonien-da.net/noir.jpeg'),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Material(
                            elevation: 6,
                            child: SizedBox(
                              width: 80,
                              height: 120,
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
                                      'https://streaming.simplonien-da.net/siemba.jpeg'),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Material(
                            elevation: 6,
                            child: SizedBox(
                              width: 80,
                              height: 120,
                              child: InkWell(
                                radius: 100,
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Myhomepag2()));
                                },
                                child: Ink.image(
                                  fit: BoxFit.cover,
                                  image: const NetworkImage(
                                      'https://streaming.simplonien-da.net/tout.jpeg'),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ]),
              ),







              Container(
                  margin: EdgeInsets.only(top: 10, right: 145),
                  child: Text(
                    " Films et Séries ivoiriens",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  )),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Material(
                            elevation: 6,
                            child: SizedBox(
                              width: 80,
                              height: 120,
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
                                      'https://streaming.simplonien-da.net/abobo.jpeg'),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Material(
                            elevation: 6,
                            child: SizedBox(
                              width: 80,
                              height: 120,
                              child: InkWell(
                                radius: 100,
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Myhomepag2()));
                                },
                                child: Ink.image(
                                  fit: BoxFit.cover,
                                  image: const NetworkImage(
                                      'https://streaming.simplonien-da.net/famille.jpeg'),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Material(
                            elevation: 6,
                            child: SizedBox(
                              width: 80,
                              height: 120,
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
                                      'https://streaming.simplonien-da.net/perfide.jpeg'),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Material(
                            elevation: 6,
                            child: SizedBox(
                              width: 80,
                              height: 120,
                              child: InkWell(
                                radius: 100,
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => 
                                          Myhomepag2()));
                                },
                                child: Ink.image(
                                  fit: BoxFit.cover,
                                  image: const NetworkImage(
                                      'https://streaming.simplonien-da.net/ticket.jpeg'),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ]),
              ),







             Container(
                  margin: EdgeInsets.only(top: 10, right: 260),
                  child: Text(
                    " Enfant",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  )),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Material(
                            elevation: 6,
                            child: SizedBox(
                              width: 80,
                              height: 120,
                              child: InkWell(
                                radius: 100,
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>Video2()));
                                },
                                child: Ink.image(
                                  fit: BoxFit.cover,
                                  image: const NetworkImage(
                                      'https://streaming.simplonien-da.net/aya.jpeg'),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Material(
                            elevation: 6,
                            child: SizedBox(
                              width: 80,
                              height: 120,
                              child: InkWell(
                                radius: 100,
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Myhomepag2()));
                                },
                                child: Ink.image(
                                  fit: BoxFit.cover,
                                  image: const NetworkImage(
                                      'https://streaming.simplonien-da.net/bob.jpeg'),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Material(
                            elevation: 6,
                            child: SizedBox(
                              width: 80,
                              height: 120,
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
                                      'https://streaming.simplonien-da.net/loud.jpeg'),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Material(
                            elevation: 6,
                            child: SizedBox(
                              width: 80,
                              height: 120,
                              child: InkWell(
                                radius: 100,
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Myhomepag2()));
                                },
                                child: Ink.image(
                                  fit: BoxFit.cover,
                                  image: const NetworkImage(
                                      'https://streaming.simplonien-da.net/boss.jpeg'),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ]),
              ),




               Container(
                  margin: EdgeInsets.only(top: 10, right: 250), child: 
                  Text(" Asiatique",style: TextStyle(color:Colors.white,fontSize: 15),)),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Material(
                            elevation: 6,
                            child: SizedBox(
                              width: 80,
                              height: 120,
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
                                      'https://streaming.simplonien-da.net/clean.jpeg'),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Material(
                            elevation: 6,
                            child: SizedBox(
                              width: 80,
                              height: 120,
                              child: InkWell(
                                radius: 100,
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Myhomepag2()));
                                },
                                child: Ink.image(
                                  fit: BoxFit.cover,
                                  image: const NetworkImage(
                                      'https://streaming.simplonien-da.net/core.jpeg'),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Material(
                            elevation: 6,
                            child: SizedBox(
                              width: 80,
                              height: 120,
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
                                      'https://streaming.simplonien-da.net/lovarl.jpeg'),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Material(
                            elevation: 6,
                            child: SizedBox(
                              width: 80,
                              height: 120,
                              child: InkWell(
                                radius: 100,
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Myhomepag2()));
                                },
                                child: Ink.image(
                                  fit: BoxFit.cover,
                                  image: const NetworkImage(
                                      'https://streaming.simplonien-da.net/pino.jpeg'),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
