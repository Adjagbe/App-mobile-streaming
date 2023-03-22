import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'dart:convert';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;
import 'package:streaming/screnns/views/addEditPage.dart';

class Edit extends StatefulWidget {
  const Edit({super.key});

  @override
  State<Edit> createState() => _EditState();
}

class _EditState extends State<Edit> {
  Future getData() async {
    String uri = ("https://streaming.simplonien-da.net/read.php");
    final response = await http
        .get(Uri.parse("https://streaming.simplonien-da.net/read.php"));

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
          'Paramètre > Mon compte',
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
                          Icons.edit,
                          color: Colors.white,
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AddEditPage(
                                list: list,
                                index: index,
                              ),
                            ),
                          );
                          debugPrint('Edit Clicked');
                        },
                      ),
                      title: Text(
                        list[index]['username'],
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: Text(
                        list[index]['email'],
                        style: TextStyle(color: Colors.white),
                      ),
                     
                    );
                  })
              : CircularProgressIndicator();
        },
      ),
    );
  }
}
