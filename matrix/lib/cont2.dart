import 'package:flutter/material.dart';
class con10 extends StatefulWidget {


  @override
  State<con10> createState() => _con10State();
}

class _con10State extends State<con10> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(
      backgroundColor: Colors.black,
    ),
  body: Container(
     // color:Colors.redAccent,
    height: double.infinity,
    width: double.infinity,
    decoration: BoxDecoration(
      gradient:  LinearGradient(
        colors: [
          Colors.redAccent,
          Colors.black,
        ],
        begin: Alignment.topCenter,
       // end: Alignment.bottomCenter,

      )
    ),
    child: Row(
    children : [
      Padding( padding: const EdgeInsets.all(8.0),
    child: Container(height: 150,width: 150,color: Colors.red,),
  ),
    ]

  )
  )

    );
  }
}
