import 'dart:ui';

import 'package:car_project/Second_Page.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class FOURTH_PAGE extends StatelessWidget {
  const FOURTH_PAGE({Key? key}) : super(key: key);

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
                                  'https://stimg.cardekho.com/images/carexteriorimages/630x420/Mercedes-Benz/GLA/7269/1621948227508/front-left-side-47.jpg?tr=w-150'),
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
                                "https://navbharattimes.indiatimes.com/photo/msid-72491830,imgsize-62363/pic.jpg"),
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
                                "https://imgd.aeplcdn.com/600x600/n/cw/ec/94365/front-view0.jpeg"),
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
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfvR4UBBc-Tkn4pY1yz6EaMnflXY_UjOYFhVGn_GKpmTcqyCSD_nrykXgCkqmKWfwcliU&usqp=CAU"),
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
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSinUbw_npeM5HCRVE9xJMgT4barUMPL8UcNWx6wtmY4NwbmlGkgYx_7Wb_auGue6nBnro&usqp=CAU'),
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
                          padding: const EdgeInsets.only(left: 30, top: 340),
                          child: Text(
                            'Mercedes E 63S',
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
                                              'data:image/png;base64,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')),
                                    ),
                                    Expanded(
                                        child: Text(
                                      textAlign: TextAlign.center,
                                      '  6.5',
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
                                child: Text('4.5s',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.indigo,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Padding(
                                padding: EdgeInsets.all(2),
                                child: Text('0-900 km/h',
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
                                child: Text('550km',
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
                                child: Text('625',
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
                                          // Navigator.push(
                                          //   context,
                                          //   MaterialPageRoute(
                                          //       builder: (context) =>
                                          //           SECOND_PAGE()),
                                          // );
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
