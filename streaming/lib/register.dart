import 'dart:convert';
import 'dart:math';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:streaming/Mode_paiement.dart';

import 'package:flutter/material.dart';
import 'package:input_validator/input_validator.dart';
import 'package:streaming/login.dart';
import 'package:streaming/screnns/Accueil1.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  /// Initialize the form builder fields
  final formBuilder = InputValidator.builder(fields: {
   
    "email": FieldData(rules: "required|email") , 
    "password": FieldData(
      rules: "required|min_length:6|max_length:16|strong" ,
      messages: {
        "strong": CustomHandler(
          onHandle: (payload, _) {
            String p =
                r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
            return payload != null && RegExp(p).hasMatch(payload)
                ? null
                : "Majuscule, Miniscule, Nombre et Symblole.";
          },
        ),
      },
    ),
    "username": FieldData(rules: "required|min_length:4"),
  });

  TextEditingController user = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController email = TextEditingController();
  

  Future register() async {
    if (user.text != "" && pass.text != "" && email.text != "") {
      String uri = ("https://streaming.simplonien-da.net/register.php");
      final response = await http.post(
          Uri.parse('https://streaming.simplonien-da.net/register.php'),
          body: {
             "email": email.text,
            "username": user.text,
            
            "password": pass.text,
           
          });
      var data = json.decode(response.body);
      if (data == "Error") {
        Fluttertoast.showToast(
          msg: 'Ce nom existe dejà',
          textColor: Colors.red,
          fontSize: 15,
        );
      } else {
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
            margin: EdgeInsets.all(30),
            color: Colors.white,
            child: formBuilder.build(
              context,
              child: (formState) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Inscription',
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
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: TextField(
                         obscureText: true,
                        
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
                        child: ElevatedButton(
                           style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.blueGrey,
                              ),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              )),
                            ),
                        


                            child: Text('Valider',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                            onPressed: () {
                              register();
                            }),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        const Text(
                          'vous avez un compte ?',
                          style: TextStyle(fontSize: 12),
                        ),
                        TextButton(
                          child: const Text(
                            'connectez-vous',
                            style: TextStyle(fontSize: 12),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyHomePage()));
                          },
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
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
