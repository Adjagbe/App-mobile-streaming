import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:streaming/essaie1.dart';
import 'package:streaming/register.dart';


class Accueil extends StatelessWidget {
  const Accueil({Key ?key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor:  Colors.black.withOpacity(0.7),
      body: Stack(
        children: <Widget>[
          new Container(
            
            decoration: new BoxDecoration(
                image: new DecorationImage(
              image: new AssetImage("assets/images/lo.jpg"),
              
              fit: BoxFit.cover,
            )),
          ),
          // Center(
          //   child: new Container(
          //     margin: EdgeInsets.only(bottom: 280),
          //     width: 200,
          //     height: 50,
          //     decoration: new BoxDecoration(
          //         image: new DecorationImage(
          //       image: new AssetImage("assets/images/DRAVER.png"),
          //       fit: BoxFit.cover,
          //     )),
          //   ),
          // ),
          new Container(
            child: 
               Center(
                 child: new Container(
                  margin: EdgeInsets.only(top: 180),
                    width: 250,
                    height: 55,
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (BuildContext context) => new Register()));
                      },
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.grey.withOpacity(0.7),
                        side: BorderSide(color: Colors.grey), 
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18)
                        )
                      
                      ),
                      child: Text(
                        "Commencer",
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                    
                  
              ),
            ),
               ),
          ),
           new Container(
         margin: EdgeInsets.only( left: 60, top: 200),
              width: 240,
              height: 70,
              decoration: new BoxDecoration(
                  image: new DecorationImage(
                image: new AssetImage("assets/images/DRAVER.png"),
                fit: BoxFit.cover,
              )),
            ),
        ],
      ),
    );
  }
}
