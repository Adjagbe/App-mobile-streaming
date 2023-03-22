// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

// import 'package:http/http.dart' as http;

// class Modifier extends StatefulWidget {
//   const Modifier({super.key});

//   @override
//   State<Modifier> createState() => _ModifierState();
// }

// class _ModifierState extends State<Modifier> {
//   TextEditingController user = TextEditingController();

//   Future checkUser() async {
//     String uri =
//         ("http://localhost/streaming%20-%20Copie%20(2)/streaming/modifier.php");
//     final response = await http.post(
//         Uri.parse(
//             "http://localhost/streaming%20-%20Copie%20(2)/streaming/modifier.php"),
//         body: {
//           "username": user.text,
//         });

//     var link = json.decode(response.body);
//     print(link);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Forgot password recover'),
//       ),
//       body: SafeArea(
//           child: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TextField(
//               controller: user,
//               decoration: InputDecoration(hintText: "User Email"),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: MaterialButton(
//               color: Colors.blueGrey,
//               onPressed: () {
//                 checkUser();
//               },
//               child: Text('Recorver password'),
//             ),
//           )
//         ],
//       )),
//     );
//   }
// }
