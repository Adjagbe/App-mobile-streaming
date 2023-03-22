import 'package:flutter/material.dart';
import 'package:streaming/Accueil.dart';
import 'package:streaming/Mode_paiement.dart';
import 'package:streaming/modifier.dart';
import 'package:streaming/register.dart';

import 'package:streaming/login.dart';
import 'package:streaming/lecture_video.dart';
import 'package:streaming/screnns/views/home_view.dart';
import 'package:streaming/screnns/views/edit_profil.dart';


void main() {
  runApp( App());
}



class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "DRAVER",
      debugShowCheckedModeBanner: false,
      home: Accueil()
      //Modifier()
    
    );
  }
}
