import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:streaming/motdepasseoub.dart';

class Paiement extends StatelessWidget {
  const Paiement({super.key});

  @override
  Widget build(BuildContext context) {
    return 
       Scaffold(
      appBar: AppBar(title: const Text('DRAVER'),
      backgroundColor:  Colors.blueGrey,
      ),
      
      body: 
       
       
         Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
            Container(
              margin: EdgeInsets.only(left: 30),
              child: Row(
                children: [
                  
                  Icon(Icons.paid,
                  color: Colors.green,
                  size: 30,),
                  Text(
                  "ABONNEMENT",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                ],
                
              ),
            ),
            
            
              Text(" Veuillez selectionner le mode de paiement ",
              style: TextStyle(
                fontSize: 15,
              
              ),),
            
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,


              children: [
                Column(
                 
                  children: [
                    Material(
                    elevation: 6,
                    
                    
                    child: SizedBox(
                      width: 100,
                      height: 100,
                      
                      
                      child: InkWell(
                        radius: 100,
                        
                        onTap: () {
                          // ScaffoldMessenger.of(context).clearSnackBars();
                          // ScaffoldMessenger.of(context).showSnackBar(
                          //   const SnackBar(
                          //     content: Text('Hello There!'),
                          //     duration: Duration(milliseconds: 1500),
                          //   ),
                          // );
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) =>Passoub() ));
                        },
                        // implement the image with Ink.image
                        child: Ink.image(
                          fit: BoxFit.cover,
                          image: const NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmLpsQEEI-OVF4ao8aUUoSiywoXM5DZGuRZ8tV6520e8arSIIrO3r6YwCEhJ8PbYdj5Vo&usqp=CAU'),
                        ),
                      ),
                    ),
              ),
                  ],
                ),

                Column(
                
                  children: [

                    Material(
                    elevation: 6,
                    child: SizedBox(
                      width: 100,
                      height: 100,
                      child: InkWell(
                        radius: 100,

                        onTap: () {
                          // ScaffoldMessenger.of(context).clearSnackBars();
                          // ScaffoldMessenger.of(context).showSnackBar(
                          //   const SnackBar(
                          //     content: Text('Hello There!'),
                          //     duration: Duration(milliseconds: 1500),
                          //   ),
                          // );
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Passoub()));
                        },
                        // implement the image with Ink.image
                        child: Ink.image(
                          fit: BoxFit.cover,
                          image: const NetworkImage(
                            
                              'https://st2.depositphotos.com/1102480/7110/i/450/depositphotos_71103597-stock-photo-mastercard-logo-printed-on-paper.jpg',),
                        ),
                      ),
                    ),
                  ),

                  ],
                ),


                Column(
                
                  children: [

                    Material(
                    elevation: 6,
                    child: SizedBox(
                      width: 100,
                      height: 100,
                      child: InkWell(
                        radius: 100,

                        onTap: () {
                          // ScaffoldMessenger.of(context).clearSnackBars();
                          // ScaffoldMessenger.of(context).showSnackBar(
                          //   const SnackBar(
                          //     content: Text('Hello There!'),
                          //     duration: Duration(milliseconds: 1500),
                          //   ),
                          // );
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Passoub()));
                        },
                        // implement the image with Ink.image
                        child: Ink.image(
                          fit: BoxFit.cover,
                          image: const NetworkImage(
                              'https://thumbs.dreamstime.com/b/ic%C3%B4ne-de-logo-visa-inc-est-une-soci%C3%A9t%C3%A9-multinationale-am%C3%A9ricaine-services-financiers-si%C3%A9g%C3%A9e-dans-la-ville-adoptive-140089949.jpg'),
                        ),
                      ),
                    ),
                  ),

                  ],
                )
        ]
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Column(
              children: [
                Material(
                  elevation: 6,
                  child: SizedBox(
                    width: 100,
                    height: 100,
                    child: InkWell(
                      radius: 100,

                      onTap: () {
                        // ScaffoldMessenger.of(context).clearSnackBars();
                        // ScaffoldMessenger.of(context).showSnackBar(
                        //   const SnackBar(
                        //     content: Text('Hello There!'),
                        //     duration: Duration(milliseconds: 1500),
                        //   ),
                        // );
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Passoub()));
                      },
                      // implement the image with Ink.image
                      child: Ink.image(
                        fit: BoxFit.cover,
                        image: const NetworkImage(
                          
                            'https://upload.wikimedia.org/wikipedia/commons/5/59/WU_LOGO.jpg'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Material(
                  elevation: 6,
                  child: SizedBox(
                    width: 100,
                    height: 100,
                    child: InkWell(
                      radius: 100,

                      onTap: () {
                        // ScaffoldMessenger.of(context).clearSnackBars();
                        // ScaffoldMessenger.of(context).showSnackBar(
                        //   const SnackBar(
                        //     content: Text('Hello There!'),
                        //     duration: Duration(milliseconds: 1500),
                        //   ),
                        // );
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Passoub()));
                      },
                      // implement the image with Ink.image
                      child: Ink.image(
                        fit: BoxFit.cover,
                        image: const NetworkImage(
                            'https://i0.wp.com/www.africanewsquick.net/wp-content/uploads/2019/02/unnamed.jpg?fit=512%2C512&ssl=1'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Material(
                  elevation: 6,
                  child: SizedBox(
                    width: 100,
                    height: 100,
                    child: InkWell(
                      radius: 100,

                      onTap: () {
                        // ScaffoldMessenger.of(context).clearSnackBars();
                        // ScaffoldMessenger.of(context).showSnackBar(
                        //   const SnackBar(
                        //     content: Text('Hello There!'),
                        //     duration: Duration(milliseconds: 1500),
                        //   ),
                        // );
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Passoub()));
                      },
                      // implement the image with Ink.image
                      child: Ink.image(
                        fit: BoxFit.cover,
                        image: const NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYYw8kXZOvPmOiMQvAkanIPPBI2KJkA8rbMPNfyHn5yCAAF9TlJcQpHEV04GAe1sMMBN8&usqp=CAU'),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ]),


          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Column(
              children: [
                Material(
                  elevation: 6,
                  child: SizedBox(
                    width: 100,
                    height: 100,
                    child: InkWell(
                      radius: 100,

                      onTap: () {
                        // ScaffoldMessenger.of(context).clearSnackBars();
                        // ScaffoldMessenger.of(context).showSnackBar(
                        //   const SnackBar(
                        //     content: Text('Hello There!'),
                        //     duration: Duration(milliseconds: 1500),
                        //   ),
                        // );
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Passoub()));
                      },
                      // implement the image with Ink.image
                      child: Ink.image(
                        fit: BoxFit.cover,
                        image: const NetworkImage(
                            'https://upload.wikimedia.org/wikipedia/fr/1/1d/Moov_Africa_logo.png'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Material(
                  elevation: 6,
                  child: SizedBox(
                    width: 100,
                    height: 100,
                    child: InkWell(
                      radius: 100,

                      onTap: () {
                        // ScaffoldMessenger.of(context).clearSnackBars();
                        // ScaffoldMessenger.of(context).showSnackBar(
                        //   const SnackBar(
                        //     content: Text('Hello There!'),
                        //     duration: Duration(milliseconds: 1500),
                        //   ),
                        // );
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Passoub()));
                      },
                      // implement the image with Ink.image
                      child: Ink.image(
                        fit: BoxFit.cover,
                        image: const NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThSxzcjDs6dTVSj9Or7tpe3FOvlKHwEh0I9HHaLEKqMGnNLhcI6req5DzPtE2OQI0TPfc&usqp=CAU'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Material(
                  elevation: 6,
                  child: SizedBox(
                    width: 100,
                    height: 100,
                    child: InkWell(
                      radius: 100,

                      onTap: () {
                        // ScaffoldMessenger.of(context).clearSnackBars();
                        // ScaffoldMessenger.of(context).showSnackBar(
                        //   const SnackBar(
                        //     content: Text('Hello There!'),
                        //     duration: Duration(milliseconds: 1500),
                        //   ),
                        // );
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Passoub()));
                      },
                      // implement the image with Ink.image
                      child: Ink.image(
                        fit: BoxFit.cover,
                        image: const NetworkImage(
                            'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/American_Express_logo_%282018%29.svg/1200px-American_Express_logo_%282018%29.svg.png'),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ]),
           ],
         ),

        
      
    );
  }
}