import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'dart:convert';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;
import 'package:streaming/screnns/views/addEditPage.dart';

class Notif extends StatefulWidget {
  const Notif({super.key});

  @override
  State<Notif> createState() => _NotifState();
}

class _NotifState extends State<Notif> {
  Future getData() async {
    String uri = ("https://streaming.simplonien-da.net/reade.php");
    final response = await http
        .get(Uri.parse("https://streaming.simplonien-da.net/reade.php"));

    return json.decode(response.body);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Paramètre > Notification',
          style: TextStyle(fontSize: 15),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      backgroundColor: Color.fromARGB(255, 43, 43, 43),
      body: FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.hasError) print(snapshot.error);
          return snapshot.hasData
              ? ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index) {
                    List list = snapshot.data;
                    return ListTile(
                      leading: GestureDetector(
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                        onTap: () {
                          
                          debugPrint('Notification');
                        },
                      ),
                      title: Text(
                        list[index]['titre'],
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: Text(
                        list[index]['text'],
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing: GestureDetector(
                        child: Icon(Icons.delete),
                        
                        onTap: () {
                          setState(() {
                            String uri =
                                ("https://streaming.simplonien-da.net/delete.php");
                            final response = http.post(
                                Uri.parse(
                                    "https://streaming.simplonien-da.net/delete.php"),
                                body: {
                                  'id': list[index]['id'],
                                });
                          });
                          debugPrint('delete Clicked');
                        },
                        
                      ),

                      
                    );
                  })
              : CircularProgressIndicator();
        },
      ),


      
    );
  }
}
