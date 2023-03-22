// import 'dart:convert';
// import 'dart:ui';

// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:http/http.dart' as http;
// import 'package:streaming/Mode_paiement.dart';
// import 'package:streaming/login.dart';

// import 'package:streaming/screnns/Accueil1.dart';
// import 'package:input_validator/input_validator.dart';
// import 'Accueil.dart';
// import 'main.dart';

// class Register extends StatefulWidget {
//   @override
//   _RegisterState createState() => _RegisterState();
// }

// class _RegisterState extends State<Register> {
  
//   TextEditingController user = TextEditingController();
//   TextEditingController pass = TextEditingController();
//   TextEditingController email = TextEditingController();

//   Future register() async {
//     if (user.text != "" && pass.text != "" && email.text != "") {
//       String uri = ("https://streaming.simplonien-da.net/register.php");
//       final response = await http.post(
//           Uri.parse('https://streaming.simplonien-da.net/register.php'),
//           body: {
//             "username": user.text,
//             "password": pass.text,
//             "email": email.text,
//           });
//       var data = json.decode(response.body);
//       if (data == "Error") {
//         Fluttertoast.showToast(
//           msg: 'Ce nom existe dejà',
//           textColor: Colors.red,
//           fontSize: 15,
//         );
//       } else {
//         Fluttertoast.showToast(
//           msg: 'Incription...',
//           textColor: Colors.green,
//           fontSize: 15,
//         );
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => Paiement(),
//           ),
//         );
//       }
//     } else {
//       Text(
//         "veuillez remplir tout les champs",
//         style: TextStyle(fontSize: 25, color: Colors.black),
//       );
//     }
//   }

 

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("DRAVER"), backgroundColor: Colors.blueGrey),
//       backgroundColor: Color.fromARGB(255, 43, 43, 43),
//       body: ListView(children: [
//          Center(
//             child: Container(
//               margin: EdgeInsets.only(top: 50),
//               height: 470,
//               width: 320,
//               child: Card(
//                 // color: Colors.white.withOpacity(0.2),
//                 child: Column(
//                   children: <Widget>[
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text(
//                         'Inscription',
//                         style: TextStyle(
//                             fontSize: 25, fontWeight: FontWeight.bold),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: TextFormField(
//                         decoration: InputDecoration(
//                           labelText: 'Pseudo',
//                           prefixIcon: Icon(Icons.person),

//                           // border: OutlineInputBorder(
//                           //     borderRadius: BorderRadius.circular(8)),
//                         ),
//                         // validator: (value) {
//                         //   if (value!.isEmpty ||
//                         //       !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
//                         //     return "Veillez entrer un nom correct";
//                         //   } else {
//                         //     return null;
//                         //   }
//                         // },
//                         controller: user,
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: TextFormField(
                        
//                         decoration: InputDecoration(
//                           labelText: 'E-mail',
//                           prefixIcon: Icon(Icons.mail),
//                           // border: OutlineInputBorder(
//                           //     borderRadius: BorderRadius.circular(8)),
//                         ),
//                         // validator: (value) {
//                         //   if (value!.isEmpty ||
//                         //       !RegExp(r'^[/w-/.]+@([/w-]+/.)+[/w]{2,4}')
//                         //           .hasMatch(value!)) {
//                         //     return "ehgcjv";
//                         //   } else {
//                         //     return null;
//                         //   }
//                         // },

//                         controller: email,
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: TextField(
//                         obscureText: true,
//                         decoration: InputDecoration(
//                           labelText: 'Mot de passe',
//                           prefixIcon: Icon(Icons.lock),
//                           // border: OutlineInputBorder(
//                           //     borderRadius: BorderRadius.circular(8)),
//                         ),
//                         controller: pass,
//                       ),
//                     ),
//                     Column(
//                       children: <Widget>[
//                         Container(
//                           margin: EdgeInsets.all(20),
//                           width: 150,
//                           height: 40,
//                           child: MaterialButton(
//                               color: Colors.blueGrey,
//                               child: Text('Valider',
//                                   style: TextStyle(
//                                       fontSize: 20,
//                                       fontWeight: FontWeight.bold,
//                                       color: Colors.white)),
//                               onPressed: () {
//                                 register();
//                               }),

                          
//                         ),
//                         Row(
//                           children: <Widget>[
//                             const Text(
//                               'vous avez un compte ?',
//                               style: TextStyle(fontSize: 11),
//                             ),
//                             TextButton(
//                               child: const Text(
//                                 'connectez-vous',
//                                 style: TextStyle(fontSize: 10),
//                               ),
//                               onPressed: () {
//                                 Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                         builder: (context) => MyHomePage()));
//                               },
//                             )
//                           ],
//                           mainAxisAlignment: MainAxisAlignment.center,
//                         ),
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//             ),
          
//         ),
//       ]),
//     );
//   }
// }
