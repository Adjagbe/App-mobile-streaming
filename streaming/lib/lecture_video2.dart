import 'dart:ui';

import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:streaming/lecture_video.dart';
import 'package:video_player/video_player.dart';

class Video2 extends StatefulWidget {
  const Video2({
    super.key,
  });

  @override
  State<Video2> createState() => _Video2State();
}

class _Video2State extends State<Video2> {
  VideoPlayerController? _videoPlayerController;
  ChewieController? _chewieController;

  @override
  void initState() {
    super.initState();
    _videoPlayerController = VideoPlayerController.network(
        'https://streaming.simplonien-da.net/jack.mp4');
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
      appBar: AppBar(
          title: Text("DRAVER"),
          backgroundColor:  Colors.blueGrey),
        backgroundColor: Color.fromARGB(255, 43, 43, 43),
      body: ListView(
        children: [
          Column(
            children: [
              
              Container(
              height: 300, child: 
               _chewieVideoPlayer()),

                Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 200, top: 20),
                    child: Text(
                      "#3 SÉRIE COMIQUE",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      right: 220,
                    ),
                    child: Text(
                      "Mes premières fois",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w800),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      right: 180,
                    ),
                    child: Text(
                      "Saison 2 Épisode 14",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(),
                    child: Text(
                      " « Mes Prémiers fois»  une adolescente indienne-américaine de première génération souhaite être plus appréciée à l'école, mais ses amis, sa famille et ses sentiments ne lui rendent pas la tâche facile.",
                      style: TextStyle(color: Colors.white),
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
                                            builder: (context) => Myhomepag2()));
                                  },
                                  child: Ink.image(
                                    fit: BoxFit.cover,
                                    image: const NetworkImage(
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvO-v8FydmFM4KXfmNNYH-IF2vzclzCPTkDQ&usqp=CAU'),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              style: TextStyle(color: Colors.white, fontSize: 12),
                              " Mes premières fois",
                            ),
                            Text(
                              "      Saison 2 Épisodes 15",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic,
                                  fontSize: 12),
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
                                        style: TextStyle(color: Colors.white,),
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
                                            builder: (context) => Myhomepag2()));
                                  },
                                  child: Ink.image(
                                    fit: BoxFit.cover,
                                    image: const NetworkImage(
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSihhqShneelOwvhkBNrBjMmgIvrtAXgADKvg&usqp=CAU'),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              " Mes premières fois",
                              style: TextStyle(color: Colors.white, fontSize: 12),
                            ),
                            Text(
                              "      Saison 2 Épisodes 16",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic,
                                  fontSize: 12),
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
              ),
              
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
        : const Text('Chargement...',
        style: TextStyle(fontSize: 20, color: Colors.white));
  }
}
