// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';

// import 'package:http/http.dart' as http;

// import 'package:streaming/Accueil.dart';
// import 'package:streaming/motdepasseoub.dart';
// import 'package:streaming/essaie1.dart';
// import 'package:streaming/register.dart';
// import 'package:streaming/screnns/Accueil1.dart';
// import 'package:streaming/update_record.dart';

// class Passoub extends StatefulWidget {
//   @override
//   _PassoubState createState() => _PassoubState();
// }

// class _PassoubState extends State<Passoub> {
//   TextEditingController email = TextEditingController();
//   TextEditingController pass = TextEditingController();

//   Future login() async {
    
//       String uri = ("https://streaming.simplonien-da.net/update.php");
//       final response = await http.post(
//           Uri.parse('https://streaming.simplonien-da.net/update.php'),
//           body: {
//             "email": email.text,
//             "password": pass.text,
//           });
//       var data = json.decode(response.body);
//       if (data == "Success") {
//         Fluttertoast.showToast(
//           msg: 'Connexion...',
//           textColor: Colors.green,
//           fontSize: 15,
//         );
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => HomeScreen(),
//           ),
//         );
//       } else {
//         Fluttertoast.showToast(
//           msg: 'Aucune correspondance avec ce email',
//           textColor: Colors.red,
//           fontSize: 15,
//         );
//       }
  
    
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(title: Text("DRAVER"), backgroundColor: Colors.blueGrey),
//         backgroundColor: Color.fromARGB(255, 43, 43, 43),
//         body: ListView(children: [
//           Center(
//             child: Container(
//               margin: EdgeInsets.all(30),
//               child: Card(
//                 // color: Colors.amber,
//                 child: Column(
//                   children: <Widget>[
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text(
//                         'Modifier le mot de passe ',
//                         style: TextStyle(
//                             fontSize: 17, fontWeight: FontWeight.bold),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: TextField(
//                         decoration: InputDecoration(
//                           labelText: 'email',
//                           prefixIcon: Icon(Icons.person),
//                           // border: OutlineInputBorder(
//                           //     borderRadius: BorderRadius.circular(8)),
//                         ),
//                         controller: email,
                        
//                       ),
//                     ),
//                     Padding(
//                       padding:
//                           EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//                       child: TextField(
//                         onChanged: (value) => formState.add("password", value),
//                         decoration: InputDecoration(
//                           prefixIcon: Icon(Icons.lock_open),
//                           labelText: "Mot de passe",
//                           errorText: formState.getError("password"),
//                         ),
//                         controller: pass,
//                       ),
//                     ),
//                     Container(
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(0),
//                       ),
//                       margin: EdgeInsets.all(20),
//                       width: 150,
//                       height: 40,
//                       child: MaterialButton(
//                           color: Colors.blueGrey,
//                           child: Text('Modifier',
//                               style: TextStyle(
//                                   fontSize: 20,
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.white)),
//                           onPressed: () {
//                             login();
//                           }),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ]));
//   }
// }



import 'dart:convert';
import 'dart:math';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:streaming/Mode_paiement.dart';

import 'package:flutter/material.dart';
import 'package:input_validator/input_validator.dart';
import 'package:streaming/login.dart';
import 'package:streaming/screnns/Accueil1.dart';

class Passoub extends StatefulWidget {
  @override
  _PassoubState createState() => _PassoubState();
}

class _PassoubState extends State<Passoub> {
  /// Initialize the form builder fields
  final formBuilder = InputValidator.builder(fields: {
    
    "email": FieldData(rules: "required|email"),
    "password": FieldData(
      rules: "required|min_length:6|max_length:16|strong",
      messages: {
        "strong": CustomHandler(
          onHandle: (payload, _) {
            String p =
                r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
            return payload != null && RegExp(p).hasMatch(payload)
                ? null
                : "majuscule, miniscule, Nombre et Symblole.";
          },
        ),
      },
    ),
   
  });

  
  TextEditingController pass = TextEditingController();
  TextEditingController email = TextEditingController();
  

  Future registe() async {
    if (  email.text != "" && pass.text != "" ) {
      String uri = ("https://streaming.simplonien-da.net/update.php");
      final response = await http.post(
          Uri.parse('https://streaming.simplonien-da.net/update.php'),
          body: {
            "email": email.text,
            "password": pass.text,
            
          });
      var data = json.decode(response.body);
     if (data == "Success") {
        Fluttertoast.showToast(
          msg: 'Chargement...',
          textColor: Colors.green,
          fontSize: 15,
        );
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MyHomePage(),
          ),
        );
      } else {
        Fluttertoast.showToast(
          msg: "Nom d'utilisateur ou mot de passe incorrect",
          textColor: Colors.red,
          fontSize: 15,
        );
      }
    } else {
      print("veuillez remplir les champs");
    }
  }

  @override
  void dispose() {
    /// dispose the form builder's stream
    formBuilder.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("DRAVER"), backgroundColor: Colors.blueGrey),
      backgroundColor: Color.fromARGB(255, 43, 43, 43),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            color: Colors.white,
            child: formBuilder.build(
              context,
              child: (formState) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Modifier le mot de passe',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                    
                    
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: TextField(
                        onChanged: (value) => formState.add("email", value),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          labelText: "Email",
                          errorText: formState.getError("email"),
                        ),
                        controller: email,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: TextField(
                        onChanged: (value) => formState.add("password", value),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock_open),
                          labelText: "Mot de passe",
                          errorText: formState.getError("password"),
                        ),
                        controller: pass,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Container(
                        margin: EdgeInsets.all(20),
                        width: 150,
                        height: 40,
                        child: MaterialButton(
                            color: Colors.blueGrey,
                            child: Text('Valider',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                            onPressed: () {
                              registe();
                            }),
                      ),
                    ),
                    
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Future<bool> checkUsername(String value) {
    var used = ["test", "hello", "utpal", "sarkar"];
    int d = Random(0).nextInt(2);
    return Future.delayed(Duration(seconds: d), () {
      return !used.contains(value);
    });
  }
}
