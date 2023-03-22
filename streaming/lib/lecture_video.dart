import 'dart:ui';

import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:streaming/lecture_video2.dart';
import 'package:video_player/video_player.dart';

class Myhomepag2 extends StatefulWidget {
  const Myhomepag2({
    super.key,
  });

  @override
  State<Myhomepag2> createState() => _Myhomepag2State();
}

class _Myhomepag2State extends State<Myhomepag2> {
  VideoPlayerController? _videoPlayerController;
  ChewieController? _chewieController;

  @override
  void initState() {
    super.initState();
    _videoPlayerController = VideoPlayerController.network(
        'https://streaming.simplonien-da.net/entre.mp4');
    _videoPlayerController!.initialize().then((_) {
      _chewieController =
          ChewieController(videoPlayerController: _videoPlayerController!);
      setState(() {
        print('Video player');
      });
    });
  }

  @override
  void dispose() {
    _videoPlayerController!.dispose();
    _chewieController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("DRAVER"), backgroundColor: Colors.blueGrey),
      backgroundColor: Color.fromARGB(255, 43, 43, 43),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                  
                  height: 300,
                  child: _chewieVideoPlayer()),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 200, top: 20),
                    child: Text(
                      "#3 SÉRIE EPIQUE",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      right: 220,
                    ),
                    child: Text(
                      "Blood & Water",
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      right: 180,
                    ),
                    child: Text(
                      "Saison 1 Épisode 4",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                   Container(
                    margin: EdgeInsets.only(
                      
                    ),
                    child: Text(
                      " « Blood & Water » a pour héros des adolescents sud-africains ultra-fortunés dans un lycée huppé du Cap.Jonathan Ferreira",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                   
                  Container(
                    margin: EdgeInsets.only(right: 200, top: 10),
                    child: Text(
                      "Épisodes",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    color: Colors.black,
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
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxqKVlL_8whfXarPUdlzJ1gXjxf-CtsM9xJw&usqp=CAU'),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              " Blood & Water",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "      Saison 1 Épisodes 5",
                              style: TextStyle(color: Colors.white,fontStyle: FontStyle.italic),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                top: 10,right: 80
                              ),
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Icon(
                                        Icons.play_arrow,
                                        color: Colors.white,
                                      ),
                                      

                                    ],
                                  ),

                                  Column(
                                    children: [
                                      Text(
                                        " Play",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),

                            
                          ],
                        ),
                       
                      ],
                    ),
                  ),
                   Container(
                    color: Colors.black,
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
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSek2SOEpGPltnSwrkltPOHPdE0L_VPj1YMRQ&usqp=CAU'),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              " Blood & Water",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "      Saison 1 Épisodes 6",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10, right: 80),
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Icon(
                                        Icons.play_arrow,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        " Play",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _chewieVideoPlayer() {
    return _chewieController != null && _videoPlayerController != null
        ? Container(
            child: Chewie(controller: _chewieController!),
          )
        : const Text(
            'Chargement...',
            style: TextStyle(fontSize: 20, color: Colors.white),
          );
  }
}
