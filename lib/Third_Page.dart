import 'dart:ui';

import 'package:car_project/Second_Page.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class THIRD_PAGE extends StatelessWidget {
  const THIRD_PAGE({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
          color: Colors.white70,
          elevation: 5,
          child: Stack(
            // fit: StackFit.expand,
            children: [
              ListView(
                shrinkWrap: false,
                children: [
                  CarouselSlider(
                    items: [
                      //1st Image of Slider
                      // Image.asset('images/car1.jpg', fit: BoxFit.fitWidth),
                      Container(
                        width: double.infinity,
                        child: Expanded(
                          child: Card(
                            child: Image(
                              image: NetworkImage(
                                  'https://images.unsplash.com/photo-1541348263662-e068662d82af?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHJzM3xlbnwwfHwwfHw%3D&w=1000&q=80'),
                              fit: BoxFit.cover,
                            ),
                            // child: Row(children: [
                            //   Padding(padding: EdgeInsets.only(top: 550)),
                            //   Text('abc',style: TextStyle(color: Colors.white),)
                            // ],
                            // ),
                          ),
                        ),
                        // child: Row(children: [
                        //   Padding(padding: EdgeInsets.only(top: 550)),
                        //   Text('abc',style: TextStyle(color: Colors.white),)
                        // ],
                        // ),
                      ),

                      //2nd Image of Slider
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0.0),
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://cdn.nettiauto.com/live/2022/08/19/bc729e99b64ddb19-large.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      //3rd Image of Slider
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0.0),
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://images.unsplash.com/photo-1621349337628-d4f1c1a24114?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE2fHx8ZW58MHx8fHw%3D&w=1000&q=80"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      //4th Image of Slider
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0.0),
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbi3Lb3vwr2KOrKUO6QMr7BsaRXLX6TIwWZhjB-yaxILwI6_pS3Jjkv1CFkAuvCY6fQac&usqp=CAU"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      //5th Image of Slider
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0.0),
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://images.unsplash.com/photo-1639245863636-febfce90026e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGF1ZGklMjByczR8ZW58MHx8MHx8&w=1000&q=80'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],

                    //Slider Container properties
                    options: CarouselOptions(
                      height: 330.0,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      aspectRatio: 16 / 9,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      viewportFraction: 0.9,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 30, top: 60)),
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.black26,
                    child: IconButton(
                      padding: EdgeInsets.only(left: 3),
                      icon: Icon(
                        Icons.keyboard_double_arrow_left,
                        color: Colors.white,
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
                  Padding(
                      padding: EdgeInsets.only(left: 200, top: 60, right: 5)),
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.black26,
                    child: IconButton(
                      padding: EdgeInsets.only(left: 3),
                      icon: Icon(
                        Icons.zoom_out_map,
                        color: Colors.white,
                        size: 17,
                      ),
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => SECOND_PAGE()),
                        // );
                      },
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 25, top: 60)),
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.white,
                    child: IconButton(
                      padding: EdgeInsets.only(left: 2),
                      icon: Icon(
                        Icons.favorite,
                        color: Color.fromRGBO(237, 28, 36, 0.9),
                        size: 18,
                      ),
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => SECOND_PAGE()),
                        // );
                      },
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: Padding(
                          padding: const EdgeInsets.only(left: 52, top: 340),
                          child: Text(
                            'Audi RS7',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 23),
                          ))),
                  Expanded(
                      child: Padding(
                          padding: const EdgeInsets.only(left: 15, top: 320),
                          child: Card(
                              margin:
                                  EdgeInsets.only(left: 20, right: 20, top: 20),
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: CircleAvatar(
                                          radius: 25,
                                          backgroundColor: Colors.black,
                                          backgroundImage: NetworkImage(
                                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_bH1l3jZviBcuqhXISadYD1Q3YnyjB1eTSlj_WEbz80q3cDwNpi0PXW-Va2hfbRiWmKc&usqp=CAU')),
                                    ),
                                    Expanded(
                                        child: Text(
                                      textAlign: TextAlign.center,
                                      '  4.5',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    )),
                                    Expanded(
                                        child: Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent,
                                    ))
                                  ],
                                ),
                              ))))
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: Padding(
                          padding: const EdgeInsets.only(left: 15, top: 420),
                          // child: Icon(
                          //   size: 30,
                          //   Icons.drag_handle_rounded,
                          //   color: Colors.indigo,
                          // ),
                          child: Card(
                              color: Color.fromRGBO(27, 41, 98, 1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  textAlign: TextAlign.center,
                                  'Overall',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              )))),
                  Expanded(
                      child: Padding(
                          padding: const EdgeInsets.only(left: 2, top: 420),
                          // child: Icon(
                          //   size: 30,
                          //   Icons.drag_handle_rounded,
                          //   color: Colors.indigo,
                          // ),
                          // child: Card(
                          // color: Colors.white,
                          // shape: RoundedRectangleBorder(
                          //   borderRadius: BorderRadius.circular(15.0),
                          // ),
                          child: Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Text(
                              textAlign: TextAlign.center,
                              'Car',
                              style: TextStyle(
                                  color: Colors.indigo,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ))),
                  Expanded(
                      child: Padding(
                          padding: const EdgeInsets.only(top: 420),
                          // child: Icon(
                          //   size: 30,
                          //   Icons.drag_handle_rounded,
                          //   color: Colors.indigo,
                          // ),
                          // child: Card(
                          // color: Colors.white,
                          // shape: RoundedRectangleBorder(
                          //   borderRadius: BorderRadius.circular(15.0),
                          // ),
                          child: Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Text(
                              textAlign: TextAlign.left,
                              'Location',
                              style: TextStyle(
                                  color: Colors.indigo,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ))),
                  Expanded(
                      child: Padding(
                          padding: const EdgeInsets.only(left: 5, top: 420),
                          // child: Icon(
                          //   size: 30,
                          //   Icons.drag_handle_rounded,
                          //   color: Colors.indigo,
                          // ),
                          // child: Card(
                          //     color: Colors.white,
                          //     shape: RoundedRectangleBorder(
                          //       borderRadius: BorderRadius.circular(15.0),
                          //     ),
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Text(
                              textAlign: TextAlign.left,
                              'Reviews',
                              style: TextStyle(
                                  color: Colors.indigo,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          )))
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.only(left: 11, top: 480),
                    // child: Icon(
                    //   size: 30,
                    //   Icons.drag_handle_rounded,
                    //   color: Colors.indigo,
                    // ),
                    child: Card(
                        color: Colors.white60,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Container(
                          height: 100,
                          child: Expanded(
                              child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 7,
                                ),
                                child: Icon(Icons.speed, color: Colors.white),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8),
                                child: Text('3.6s',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.indigo,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Padding(
                                padding: EdgeInsets.all(2),
                                child: Text('0-700 km/h',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ],
                          )),
                        )),
                  )),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.only(left: 11, top: 480),
                    // child: Icon(
                    //   size: 30,
                    //   Icons.drag_handle_rounded,
                    //   color: Colors.indigo,
                    // ),
                    child: Card(
                        color: Colors.white60,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Container(
                          height: 100,
                          child: Expanded(
                              child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 7,
                                ),
                                child: Icon(Icons.local_gas_station_sharp,
                                    color: Colors.white),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8),
                                child: Text('450km',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.indigo,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Padding(
                                padding: EdgeInsets.all(2),
                                child: Text('Range',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ],
                          )),
                        )),
                  )),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.only(left: 11, top: 480),
                    // child: Icon(
                    //   size: 30,
                    //   Icons.drag_handle_rounded,
                    //   color: Colors.indigo,
                    // ),
                    child: Card(
                        color: Colors.white60,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Container(
                          height: 100,
                          child: Expanded(
                              child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 7,
                                ),
                                child: Icon(Icons.directions_car_filled,
                                    color: Colors.white),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8),
                                child: Text('535',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.indigo,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Padding(
                                padding: EdgeInsets.all(2),
                                child: Text('Trunk',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ],
                          )),
                        )),
                  )),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 590),
                  ),
                  Container(
                      color: Colors.red,
                      width: 380,
                      height: 240,
                      child: Expanded(
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            Image.network(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhEJEMM8Dw6AE-CoadFBLR3WfkYMOxNqSujO8PdEL5LzfV41RM95qO-nBdsZS1_BEmv18&usqp=CAU',
                              fit: BoxFit.cover,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(35),
                                color: Color.fromRGBO(1, 138, 184, 1),
                              ),
                              width: double.infinity,
                              margin: EdgeInsets.only(
                                  top: 150, right: 20, left: 20, bottom: 20),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Row(
                                  children: [
                                    TextButton(
                                        onPressed: () {
                                          Navigator.pop(
                                            context,
                                          );
                                        },
                                        style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                                0), // <-- Radius
                                          ),
                                        ),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(45),
                                            color: Color.fromRGBO(
                                                43, 57, 125, 0.3),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: TextButton(
                                              onPressed: () {
                                                Navigator.pop(
                                                  context,
                                                );
                                              },
                                              child: Text(r'1500$/day',
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white)),
                                              style: ElevatedButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0), // <-- Radius
                                                ),
                                              ),
                                            ),
                                          ),
                                        )),
                                    Padding(
                                        padding: EdgeInsets.only(right: 90)),
                                    Text(
                                      'Book Now',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.only(left: 15, top: 500),
                        // ),
                        // Image(
                        //     fit: BoxFit.fitWidth,
                        //     width: 350,
                        //     image: NetworkImage(
                        //         'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRh3NOfL4YOYEH6HKK-CfFlDPolQ2Jn8gGUTGzi3qqpwf08900N3THMl8sjOSxBDa8FZ8&usqp=CAU'))
                      ))
                ],
              ),
            ],
          )),
    );
  }
}
