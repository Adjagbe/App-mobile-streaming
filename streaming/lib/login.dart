import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:http/http.dart' as http;

import 'package:streaming/Accueil.dart';
import 'package:streaming/motdepasseoub.dart';
import 'package:streaming/essaie1.dart';
import 'package:streaming/register.dart';
import 'package:streaming/screnns/Accueil1.dart';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController user = TextEditingController();
  TextEditingController pass = TextEditingController();

  Future login() async {
    if (user != "" && pass != "") {
      String uri = ("https://streaming.simplonien-da.net/login.php");
      final response = await http.post(
          Uri.parse('https://streaming.simplonien-da.net/login.php'),
          body: {
            "username": user.text,
            "password": pass.text,
          });
      var data = json.decode(response.body);
      if (data == "Success") {
        Fluttertoast.showToast(
          msg: 'Connexion...',
          textColor: Colors.green,
          fontSize: 15,
        );
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ),
        );
      } else {
        Fluttertoast.showToast(
          msg: "Nom d'utilisateur ou mot de passe incorrect ",
          textColor: Colors.red,
          fontSize: 15,
        );
      }
    } else {
      print("veuillez remplir les champs");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("DRAVER"), backgroundColor: Colors.blueGrey),
        backgroundColor: Color.fromARGB(255, 43, 43, 43),
        body: ListView(children: [
          Center(
            child: Container(
              margin: EdgeInsets.all(30),
              child: Card(
                // color: Colors.amber,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Connexion',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "Nom d'utilisateur",
                          prefixIcon: Icon(Icons.person),
                          // border: OutlineInputBorder(
                          //     borderRadius: BorderRadius.circular(8)),
                        ),
                        controller: user,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Mot de passe',
                          prefixIcon: Icon(Icons.lock),
                          // border: OutlineInputBorder(
                          //     borderRadius: BorderRadius.circular(8)),
                        ),
                        controller: pass,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Passoub()));
                      },
                      child: const Text(
                        'Mot de passe oublié?',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    Container(
                      // decoration: BoxDecoration(
                      //   borderRadius: BorderRadius.circular(70),
                      // ),
                      margin: EdgeInsets.all(20),
                      width: 150,
                      height: 40,
                      child: ElevatedButton(
                        
                        style: ButtonStyle(
                          

                          backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.blueGrey,
                              ),
                          shape: MaterialStateProperty
                                  .all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(borderRadius:  BorderRadius.circular(15.0),
                          )
                                  ),
                                 
                        ),
                        
                          
                          
                          child: Text('Valider',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                                  
                                  ),
                                  
                          onPressed: () {
                            login();
                          }),
                    ),
                    Row(
                      children: <Widget>[
                        const Text('pas de compte ?'),
                        TextButton(
                          child: const Text(
                            'inscrivez-vous',
                            style: TextStyle(fontSize: 13),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Register()));
                          },
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]));
  }
}
