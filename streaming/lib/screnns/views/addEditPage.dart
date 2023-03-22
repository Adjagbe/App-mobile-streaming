

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:input_validator/input_validator.dart';
import 'package:streaming/screnns/views/edit_profil.dart';
import 'package:streaming/screnns/views/setting_view.dart';

class AddEditPage extends StatefulWidget {
  List? list = [];
  late int? index = 0;
  AddEditPage({this.list, this.index});
  @override
  _AddEditPageState createState() => _AddEditPageState();
}

class _AddEditPageState extends State<AddEditPage> {

  final formBuilder = InputValidator.builder(fields: {
    "email": FieldData(rules: "required|email"),
    "username": FieldData(rules: "required|min_length:4"),
    "password": FieldData(
      rules: "required|min_length:6|max_length:16|strong",
      messages: {
        "strong": CustomHandler(
          onHandle: (payload, _) {
            String p =
                r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
            return payload != null && RegExp(p).hasMatch(payload)
                ? null
                : "Uppercase, Lowercase, Number and Symbles.";
          },
        ),
      },
    ),
  });
  TextEditingController user = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  bool editMode = false;

  addUpdateData() {
    if (editMode) {
      String uri = ("https://streaming.simplonien-da.net/edit.php");
      final response = http.post(
          Uri.parse("https://streaming.simplonien-da.net/edit.php"),
          body: {
            'id': widget.list![widget.index!]['id'],
            'username': user.text,
            'email': email.text,
            'password': pass.text,
          });
    } else {
      String uri = ("https://streaming.simplonien-da.net/edit.php");
      final response = http.post(
          Uri.parse("https://streaming.simplonien-da.net/edit.php"),
          body: {
            'username': user.text,
            'email': email.text,
            'password': pass.text,
          });
    }
  }

  @override
  void initState() {
    super.initState();
    if (widget.index != null) {
      editMode = true;

      user.text = widget.list![widget.index!]['username'];
      email.text = widget.list![widget.index!]['email'];
      pass.text = widget.list![widget.index!]['password'];
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
      appBar: AppBar(
         backgroundColor: Colors.blueGrey,
        title: Text(editMode ? 'Paramètre>Mon compte>Modifier' : 'Ajouter' ,style: TextStyle(fontSize: 13),),
      ),
      body: ListView(
        children: <Widget>[
          formBuilder.build(context, child: (formState) {
            return Column(children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        onChanged: (value) async {
                          if (formState.add("username", value)) {
                            formState.setState = "CHECKING_USERNAME";
                            var isValid = await checkUsername(value);
                            if (!isValid) {
                              formState.setError(
                                  "username", "Username not available.");
                            } else {
                              formState.setError("username", null);
                            }
                            formState.setState = "STABLE";
                          }
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          labelText: "Nom d'utilisateur",
                          errorText: formState.getError("username"),
                        ),
                        controller: user,
                      ),
                    ),
                    if (formState.currentState == "CHECKING_USERNAME")
                      CircularProgressIndicator()
                  ],
                ),
              ),
               Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
                padding: EdgeInsets.all(8),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      addUpdateData();
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Edit()//Settingorview(),
                      ),
                    );
                    debugPrint('Clicked RaisedButton Button');
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
                  child: Text(
                    editMode ? 'Modifier' : 'Sauvegarder',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ]);
          }),
        ],
      ),
    );
  }
}

Future<bool> checkUsername(String value) {
  var used = ["test", "hello", "utpal", "sarkar"];
  int d = Random(0).nextInt(2);
  return Future.delayed(Duration(seconds: d), () {
    return !used.contains(value);
  });
}
