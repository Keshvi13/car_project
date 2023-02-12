import 'dart:io';

import 'package:car_project/Second_Page.dart';
import 'package:flutter/material.dart';

class FIRST_PAGE extends StatelessWidget {
  const FIRST_PAGE({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          // MediaQuery.of(context).size.width < 500
          //     ? Center():
          LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth < 768) {
          return Column(children: [
            Expanded(
                child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  'images/car3.jpg',
                  fit: BoxFit.cover,
                ),
                Container(color: Color(0x99AAAAA)),
                Column(children: [
                  // Container(
                  //     // child: Image.asset(
                  //     //   'images/unnamed.jpg',
                  //     //   height: 80,
                  //     //   width: 50,
                  //     // ),
                  //     margin: EdgeInsets.only(top: 100,left: 520)
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(right: 300, top: 25),
                    child: Icon(Icons.crisis_alert_rounded),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 35, right: 120),
                    child: Text(
                      'Find the ideal\nsport car for you.',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 500),
                    child: Text(
                      'Get a great car at a great price.',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white70),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      color: Color.fromRGBO(1, 138, 184, 1),
                    ),
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 25, right: 50, left: 50),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SECOND_PAGE()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(0), // <-- Radius
                              ),
                            ),
                            child: Text(
                              'Get Started',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(right: 110)),
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.white60,
                            child: IconButton(
                              padding: EdgeInsets.only(left: 3),
                              icon: Icon(
                                Icons.keyboard_double_arrow_right,
                                color: Colors.black,
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SECOND_PAGE()),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(15)),
                  // Text(
                  //   'Already have an account? Sign in',
                  //   style: TextStyle(
                  //       fontSize: 15,
                  //       fontWeight: FontWeight.bold,
                  //       color: Colors.white70),
                  // ),
                  Text.rich(
                    TextSpan(
                      text: 'Already have an account?    ',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white70),
                      children: <TextSpan>[
                        TextSpan(
                            text: ' Sign in',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromRGBO(112, 170, 194, 1),
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            )),
                        // can add more TextSpans here...
                      ],
                    ),
                  )
                ])
              ],
            )),
            Row(
              children: [
                // Expanded(
                //     child: Container(
                //         color: Color.fromARGB(255, 142, 196, 74),
                //         child: TextButton(
                //           onPressed: () {
                //             // Navigator.push(
                //             //   context,
                //             //   MaterialPageRoute(builder: (context) => Pre_Login()),
                //             // );
                //           },
                //           child: Text(
                //             'LOGIN',
                //             style: TextStyle(color: Colors.white),
                //           ),
                //         ))),
                // Expanded(
                //     child: Container(
                //   color: Colors.black,
                //   child: TextButton(
                //     onPressed: () {
                //       // Navigator.push(
                //       // //   context,
                //       // //   // MaterialPageRoute(builder: (context) => Add_List()),
                //       // // );
                //     },
                //     child: Text(
                //       'SIGNUP >>',
                //       style: TextStyle(color: Colors.white),
                //     ),
                //   ),
                // )),
                // Icon(
                //   Icons.keyboard_double_arrow_right,
                //   color: Colors.blue,
                //   size: 20,
                // ),
              ],
            )
          ]);
        } else {
          return Row(children: [
            Expanded(
                child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  'images/car3.jpg',
                  fit: BoxFit.cover,
                ),
                Container(color: Color(0x99AAAAA)),
                Column(children: [
                  // Container(
                  //     // child: Image.asset(
                  //     //   'images/unnamed.jpg',
                  //     //   height: 80,
                  //     //   width: 50,
                  //     // ),
                  //     margin: EdgeInsets.only(top: 100,left: 520)
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(left:00, top: 25),
                    child: Icon(Icons.crisis_alert_rounded),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 35, right: 120),
                    child: Text(
                      'Find the ideal\nsport car for you.',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 500),
                    child: Text(
                      'Get a great car at a great price.',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white70),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      color: Color.fromRGBO(1, 138, 184, 1),
                    ),
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 25, right: 50, left: 50),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SECOND_PAGE()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(0), // <-- Radius
                              ),
                            ),
                            child: Text(
                              'Get Started',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(right: 110)),
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.white60,
                            child: IconButton(
                              padding: EdgeInsets.only(left: 3),
                              icon: Icon(
                                Icons.keyboard_double_arrow_right,
                                color: Colors.black,
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SECOND_PAGE()),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(15)),
                  // Text(
                  //   'Already have an account? Sign in',
                  //   style: TextStyle(
                  //       fontSize: 15,
                  //       fontWeight: FontWeight.bold,
                  //       color: Colors.white70),
                  // ),
                  Text.rich(
                    TextSpan(
                      text: 'Already have an account?    ',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white70),
                      children: <TextSpan>[
                        TextSpan(
                            text: ' Sign in',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromRGBO(112, 170, 194, 1),
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            )),
                        // can add more TextSpans here...
                      ],
                    ),
                  )
                ])
              ],
            )),
            Row(
              children: [
                // Expanded(
                //     child: Container(
                //         color: Color.fromARGB(255, 142, 196, 74),
                //         child: TextButton(
                //           onPressed: () {
                //             // Navigator.push(
                //             //   context,
                //             //   MaterialPageRoute(builder: (context) => Pre_Login()),
                //             // );
                //           },
                //           child: Text(
                //             'LOGIN',
                //             style: TextStyle(color: Colors.white),
                //           ),
                //         ))),
                // Expanded(
                //     child: Container(
                //   color: Colors.black,
                //   child: TextButton(
                //     onPressed: () {
                //       // Navigator.push(
                //       // //   context,
                //       // //   // MaterialPageRoute(builder: (context) => Add_List()),
                //       // // );
                //     },
                //     child: Text(
                //       'SIGNUP >>',
                //       style: TextStyle(color: Colors.white),
                //     ),
                //   ),
                // )),
                // Icon(
                //   Icons.keyboard_double_arrow_right,
                //   color: Colors.blue,
                //   size: 20,
                // ),
              ],
            )
          ]);
        }
      }),
    );
  }
}
