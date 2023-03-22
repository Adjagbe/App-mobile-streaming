// import 'dart:ui';

// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'dart:convert';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:http/http.dart' as http;
// import 'package:streaming/screnns/views/addEditPage.dart';

// class Settingorview extends StatefulWidget {
//   const Settingorview({super.key});

//   @override
//   State<Settingorview> createState() => _SettingorviewState();
// }

// class _SettingorviewState extends State<Settingorview> {
//   Future getData() async {
//     String uri = ("https://streaming.simplonien-da.net/read.php");
//     final response = await http
//         .get(Uri.parse("https://streaming.simplonien-da.net/read.php"));

//     return json.decode(response.body);
//   }

//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Paramètre'),
//         backgroundColor: Colors.blueGrey,
//       ),
//       body: FutureBuilder(
//         future: getData(),
//         builder: (context, snapshot) {
//           if (snapshot.hasError) print(snapshot.error);
//           return snapshot.hasData
//               ? ListView.builder(
//                   itemCount: snapshot.data.length,
//                   itemBuilder: (context, index) {
//                     List list = snapshot.data;
//                     return ListTile(
//                       leading: GestureDetector(
//                         child: Icon(Icons.edit),
//                         onTap: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => AddEditPage(
//                                 list: list,
//                                 index: index,
//                               ),
//                             ),
//                           );
//                           debugPrint('Edit Clicked');
//                         },
//                       ),
//                       title: Text(list[index]['username']),
//                       subtitle: Text(list[index]['email']),
//                     );
//                   })
//               : CircularProgressIndicator();
//         },
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:streaming/screnns/notification.dart';
import 'package:streaming/screnns/views/edit_profil.dart';

class Settingorview extends StatefulWidget {
  const Settingorview({super.key});

  @override
  State<Settingorview> createState() => _SettingorviewState();
}

class _SettingorviewState extends State<Settingorview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.black.withOpacity(0.7),
      body:
      ListView(
        children: [
          Column(
            children: [
              Container(
                child: Column(children: [

                  Container(
                    
                    margin: EdgeInsets.only(right: 160,top: 50),
                    child: Text("Paramètres",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white
                    ),) ,
                  ),
                  Container(
                     margin: EdgeInsets.only(top: 35),
                    child: TextButton(onPressed:() {
                       Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Edit()));
                    },
                    child:Row(
                      children: [
                        Column(
                          children: [
                            Icon(Icons.person,
                                  color: Colors.white70,
                                  size: 40,
                                ),
                          ],
                        ),
                        Column(children: [
                                Text("Mon compte",
                                style: TextStyle(
                      fontSize: 15,
                      color: Colors.white70
                    ),),
                              ],),
                             
                      ],
                    )),
                  ),



                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: TextButton(
                        onPressed: () {
                          
                        },
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Icon(Icons.settings,
                                color: Colors.white70, size: 40,),
                              ],
                            ),
                            Column(
                              children: [
                                Text("Réglages",
                                style:
                                      TextStyle(fontSize: 15, color: Colors.white70),
                                ),
                              ],
                            ),
                            
                          ],
                        )),
                  ),


                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: TextButton(
                        onPressed: () {
                          
                        },
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Icon(
                                  Icons.security,
                                  color: Colors.white70,
                                  size: 40,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text("Confidentialité",
                                style:
                                      TextStyle(fontSize: 15, color: Colors.white70),
                                ),
                              ],
                            ),
                            
                          ],
                        )),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Notif()));
                         
                        },
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Icon(
                                  Icons.notifications,
                                  color: Colors.white70,
                                  size: 40,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  "Notification",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white70),
                                ),
                              ],
                            ),
                            
                          ],
                        )),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: TextButton(
                        onPressed: () {
                          
                        },
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Icon(
                                  Icons.help,
                                  color: Colors.white70,
                                  size: 40,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  "Aide",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white70),
                                ),
                              ],
                            ),
                           
                          ],
                        )),
                  )

                ]),
              ),

              
            ],
          ),
        ],
      ) ,
    );
  }
}