import 'package:flutter/material.dart';

class Widget1 extends StatefulWidget {
  const Widget1({Key? key}) : super(key: key);

  @override
  State<Widget1> createState() => _Widget1State();
}

class _Widget1State extends State<Widget1> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CreteCards( 'Audi Rs7', 'London', '6.5', '3444'),
          CreteCards( 'Audi ', 'London',  '6.5', '3444'),
        ],
      ),

    );
  }
  Widget CreteCards(name,location,rating,price){
    return Row(
      children: [
        // Container(
        //   child: Image.asset(image1,
        //   width: 20,
        //     height: 10,
        //   ),
        // ),
        Container(
           child: Column(
             children: [
               Container(
                 child: Text(name,
                 style: TextStyle(
                   fontWeight: FontWeight.bold
                 ),
                 ),
               ),
               Container(
                 child: Row(
                   children: [
                     Icon(Icons.location_on_sharp),
                     Text(location)
                   ],
                 ),
               ),
               Container(
                 child: Row(
                   children: [
                     Icon(Icons.star),
                     Text(rating)
                   ],
                 ),
               ),
               Container(
                 child: Row(
                   children: [
                     Container(
                       child: Text(price,
                         style: TextStyle(
                             fontWeight: FontWeight.bold
                         ),
                       ),
                     ),
                     // Container(
                     //   child: CircleAvatar(
                     //     backgroundImage: image2,
                     //   radius: 20,
                     //   ),
                     // ),
                     Container(
                       child: Icon(Icons.favorite),
                     ),
                   ],
                 ),
               ),
             ],
           ),
        )
      ],
    );
  }
}
