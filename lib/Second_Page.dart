
import 'package:car_project/Fourth_Page.dart';
import 'package:car_project/Third_Page.dart';
import 'package:flutter/material.dart';

class SECOND_PAGE extends StatefulWidget {
  const SECOND_PAGE({Key? key}) : super(key: key);

  @override
  State<SECOND_PAGE> createState() => _SECOND_PAGEState();
}

class _SECOND_PAGEState extends State<SECOND_PAGE> {
  List<Map> users = [];

  void initUsers() {
    Map<String, dynamic> map = {};
    map['title'] = 'Audi RS7';
    map['Location'] = 'London';
    map['reviews'] = '4.5 (342 reviews)';

    users.add(map);

    map = {};
    map['title'] = 'Priyanshi';
    map['subtitle'] = '1313145456';

    users.add(map);
  }

  @override
  void initState() {
    super.initState();
    initUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(210, 210, 210, 0.3),
        body: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 3, right: 90),
                  // child: Icon(
                  //   size: 30,
                  //   Icons.drag_handle_rounded,
                  //   color: Colors.indigo,
                  // ),
                  child: IconButton(
                      icon: Icon(
                        size: 30,
                        Icons.drag_handle_rounded,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.pop(
                          context,
                        );
                      }),
                )),
                Expanded(
                  child: Padding(
                      padding: const EdgeInsets.only(right: 10, top: 10),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            WidgetSpan(
                              child: Icon(Icons.location_on, size: 20),
                            ),
                            TextSpan(
                              text: "United Kingdom",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12),
                            ),
                          ],
                        ),
                      )),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.black,
                        backgroundImage: NetworkImage(
                            'http://cdn.carbuzz.com/logos/original/0/200/279.png')),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50, right: 120),
              child: Text(
                "Let's find a sport \ncar for you",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 45, left: 25, right: 25),
              child: Column(
                children: [
                  Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: TextField(
                          cursorColor: Colors.grey,
                          decoration: InputDecoration(
                              // fillColor: Colors.white,
                              // filled: true,
                              // border: OutlineInputBorder(
                              //     borderRadius: BorderRadius.circular(10),
                              //     borderSide: BorderSide.none),
                              border: InputBorder.none,
                              hintText: 'Search a car...',
                              hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 18),
                              prefixIcon: Container(
                                padding: EdgeInsets.all(10),
                                child: Icon(Icons.search, color: Colors.indigo),
                              )),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 10),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Icon(
                            Icons.list,
                            color: Colors.black,
                          )),
                    ],
                  ),
                  Container(
                    height: 1,
                    color: Colors.black12,
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                    child: Padding(
                        padding: const EdgeInsets.only(left: 15, top: 29),
                        // child: Icon(
                        //   size: 30,
                        //   Icons.drag_handle_rounded,
                        //   color: Colors.indigo,
                        // ),
                        child: Card(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                textAlign: TextAlign.center,
                                'Audi',
                                style: TextStyle(
                                    color: Colors.indigo,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            )))),
                Expanded(
                    child: Padding(
                        padding: const EdgeInsets.only(left: 15, top: 29),
                        // child: Icon(
                        //   size: 30,
                        //   Icons.drag_handle_rounded,
                        //   color: Colors.indigo,
                        // ),
                        child: Card(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                textAlign: TextAlign.center,
                                'Jaguar',
                                style: TextStyle(
                                    color: Colors.indigo,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            )))),
                Expanded(
                    child: Padding(
                        padding: const EdgeInsets.only(left: 15, top: 29),
                        // child: Icon(
                        //   size: 30,
                        //   Icons.drag_handle_rounded,
                        //   color: Colors.indigo,
                        // ),
                        child: Card(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                textAlign: TextAlign.center,
                                'BMW',
                                style: TextStyle(
                                    color: Colors.indigo,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ))))
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: Padding(
                        padding: const EdgeInsets.only(left: 52, top: 9),
                        child: Text(
                          'New cars',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ))),
                Expanded(
                    child: Padding(
                        padding: const EdgeInsets.only(left: 15, top: 9),
                        child: Card(
                            margin: EdgeInsets.all(35),
                            color: Color.fromRGBO(27, 41, 98, 1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                textAlign: TextAlign.center,
                                'More',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ))))
              ],
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => THIRD_PAGE()),
                );
              },
              child: Container(
                height: 180,
                child: Card(
                  color: Color.fromRGBO(225, 225, 225, 0.9),
                  elevation: 2,
                  child: Row(
                    children: [
                      Container(
                        height: 200,
                        child: Expanded(
                          flex: 1,
                          child: Container(
                            height: 200,
                            child: Image.network(
                                alignment: Alignment.topLeft,
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4kQzNvoYuArDJZd32cRXR19oJTADLfxXqVEqH0LmSEdBAGwmTWOi-_U81F_RuO2uYLfw&usqp=CAU'),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            Container(
                                margin: EdgeInsets.only(top: 25, right: 20),
                                child: Text(
                                  'Audi RS5',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.indigo),
                                )),
                            Container(
                                margin: EdgeInsets.only(
                                    top: 5, right: 40, left: 30),
                                child: Row(
                                  children: [
                                    Icon(Icons.location_on_sharp,
                                        color: Colors.white),
                                    Text(
                                      ' London',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ],
                                )),
                            Container(
                                margin: EdgeInsets.only(
                                    top: 5, right: 40, left: 30),
                                child: Row(
                                  children: [
                                    Icon(Icons.star,
                                        color: Colors.orangeAccent),
                                    Text(
                                      ' 4.5 (342 reviews)',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ],
                                )),
                            Container(
                              margin: EdgeInsets.only(top: 9, left: 15),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Color.fromRGBO(27, 41, 98, 1)),
                                      child: const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text(
                                          textAlign: TextAlign.center,
                                          r' 1500$/day',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: const Padding(
                                          padding: EdgeInsets.only(left: 8),
                                          child: CircleAvatar(
                                              radius: 20,
                                              backgroundColor: Colors.black,
                                              backgroundImage: NetworkImage(
                                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSicrAYKphrXpxkmLILXBvDisQvj3P4QPSgS-cKsQKmUkUKr7cCmrb6_s_L-PFFhJm1u8c&usqp=CAU'))),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.white),
                                      child: const Padding(
                                        padding: EdgeInsets.all(7.0),
                                        child: Icon(Icons.favorite,
                                            color: Color.fromRGBO(
                                                237, 28, 36, 0.9),
                                            size: 18),
                                      ),
                                    ),
                                    //           child: Row(
                                    //               children: [
                                    //           Expanded(
                                    //           child: Card(
                                    //
                                    //           color: Color.fromRGBO(27, 41, 98, 1),
                                    //           shape: RoundedRectangleBorder(
                                    //             borderRadius: BorderRadius.circular(20.0),
                                    //           ),
                                    //           child: Padding(
                                    //             padding: const EdgeInsets.all(12.0),
                                    //             child: Row(
                                    //               children: [
                                    //                 Text(
                                    //                   textAlign: TextAlign.center,
                                    //                   r'  1500$/',
                                    //                   style: TextStyle(
                                    //                       color: Colors.white,
                                    //                       fontSize: 15,
                                    //                       fontWeight: FontWeight.bold),
                                    //                 ),
                                    //                 Text(
                                    //                   textAlign: TextAlign.center,
                                    //                   'day',
                                    //                   style: TextStyle(
                                    //                       color: Colors.white,
                                    //                       fontSize: 15,
                                    //                       fontWeight: FontWeight.bold),
                                    //                 ),
                                    //               ],
                                    //             ),
                                    //           )),
                                    //     ),
                                    //     Expanded(
                                    //          child: CircleAvatar(
                                    //               radius: 20,
                                    //               backgroundColor: Colors.black,
                                    //               backgroundImage: NetworkImage(
                                    //                   'http://cdn.carbuzz.com/logos/original/0/200/279.png')),
                                    //
                                    //       ),
                                    //
                                    //                 Expanded(
                                    //                   child: CircleAvatar(
                                    //                       radius: 20,
                                    //                       backgroundColor: Colors.black,
                                    //                       backgroundImage: NetworkImage(
                                    //                           'http://cdn.carbuzz.com/logos/original/0/200/279.png')),
                                    //
                                    //                 ),
                                    //
                                    //
                                    // ],
                                  ]),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FOURTH_PAGE()),
                );
              },
              child: Container(
                height: 180,
                child: Card(
                  color: Color.fromRGBO(225, 225, 225, 0.9),
                  elevation: 2,
                  child: Row(
                    children: [
                      Container(
                        height: 160,
                        child: Expanded(
                          flex: 1,
                          child: Container(
                            height: 200,
                            child: Image.network(
                                alignment: Alignment.topLeft,
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6dZSaqufoQPL337lei_iD-4rUM2-VZvVNJw&usqp=CAU'),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            Container(
                                margin: EdgeInsets.only(top: 25, right: 20),
                                child: Text(
                                  'Mercedes E 63S',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.indigo),
                                )),
                            Container(
                                margin: EdgeInsets.only(
                                    top: 5, right: 40, left: 30),
                                child: Row(
                                  children: [
                                    Icon(Icons.location_on_sharp,
                                        color: Colors.white),
                                    Text(
                                      ' Manchtster',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ],
                                )),
                            Container(
                                margin: EdgeInsets.only(
                                    top: 5, right: 40, left: 30),
                                child: Row(
                                  children: [
                                    Icon(Icons.star,
                                        color: Colors.orangeAccent),
                                    Text(
                                      ' 6.5 (450 reviews)',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ],
                                )),
                            Container(
                              margin: EdgeInsets.only(top: 9, left: 15),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Color.fromRGBO(27, 41, 98, 1)),
                                      child: const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text(
                                          textAlign: TextAlign.center,
                                          r' 1200$/day',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: const Padding(
                                          padding: EdgeInsets.only(left: 8),
                                          child: CircleAvatar(
                                              radius: 20,
                                              backgroundColor: Colors.black,
                                              backgroundImage: NetworkImage(
                                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSicrAYKphrXpxkmLILXBvDisQvj3P4QPSgS-cKsQKmUkUKr7cCmrb6_s_L-PFFhJm1u8c&usqp=CAU'))),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.white),
                                      child: const Padding(
                                        padding: EdgeInsets.all(7.0),
                                        child: Icon(Icons.favorite,
                                            color: Colors.grey, size: 18),
                                      ),
                                    ),
                                    //           child: Row(
                                    //               children: [
                                    //           Expanded(
                                    //           child: Card(
                                    //
                                    //           color: Color.fromRGBO(27, 41, 98, 1),
                                    //           shape: RoundedRectangleBorder(
                                    //             borderRadius: BorderRadius.circular(20.0),
                                    //           ),
                                    //           child: Padding(
                                    //             padding: const EdgeInsets.all(12.0),
                                    //             child: Row(
                                    //               children: [
                                    //                 Text(
                                    //                   textAlign: TextAlign.center,
                                    //                   r'  1500$/',
                                    //                   style: TextStyle(
                                    //                       color: Colors.white,
                                    //                       fontSize: 15,
                                    //                       fontWeight: FontWeight.bold),
                                    //                 ),
                                    //                 Text(
                                    //                   textAlign: TextAlign.center,
                                    //                   'day',
                                    //                   style: TextStyle(
                                    //                       color: Colors.white,
                                    //                       fontSize: 15,
                                    //                       fontWeight: FontWeight.bold),
                                    //                 ),
                                    //               ],
                                    //             ),
                                    //           )),
                                    //     ),
                                    //     Expanded(
                                    //          child: CircleAvatar(
                                    //               radius: 20,
                                    //               backgroundColor: Colors.black,
                                    //               backgroundImage: NetworkImage(
                                    //                   'http://cdn.carbuzz.com/logos/original/0/200/279.png')),
                                    //
                                    //       ),
                                    //
                                    //                 Expanded(
                                    //                   child: CircleAvatar(
                                    //                       radius: 20,
                                    //                       backgroundColor: Colors.black,
                                    //                       backgroundImage: NetworkImage(
                                    //                           'http://cdn.carbuzz.com/logos/original/0/200/279.png')),
                                    //
                                    //                 ),
                                    //
                                    //
                                    // ],
                                  ]),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
            // Padding(
            //   padding: const EdgeInsets.only(left: 15, top: 29),
            //   child: ListView.builder(itemBuilder: (context, index) {
            //     return Card(
            //         child: ListTile(
            //       title: Text(users[index]['title']),
            //       subtitle: Text(users[index]['subtitle']),
            //       leading: CircleAvatar(
            //           backgroundImage: AssetImage(
            //         "images/me1.jpeg",
            //       )),
            //             trailing: Row(
            //                 mainAxisSize: MainAxisSize.min,
            //                 children: [
            //                 IconButton(
            //                 onPressed: () {},
            //             icon: const Icon(Icons.favorite),
            //             color: Colors.red,
            //             highlightColor: Colors.redAccent),
            //       IconButton(
            //           onPressed: () {
            //             Navigator.of(context).push(MaterialPageRoute(
            //               builder: (context) {
            //                 return Create_Page(
            //                   callname: users[index]['title'],
            //                   phonenumber: users[index]['subtitle'],
            //                 );
            //               },
            //             )).then((value) {
            //               setState(() {
            //                 users[index] = value;
            //               });
            //             });
            //           },
            //           icon: const Icon(Icons.edit)),
            //       IconButton(
            //           onPressed: () {}, icon: const Icon(Icons.delete)),
            //     )
            //     );
            //   }),
            // )
          ],
        ));
  }
}
