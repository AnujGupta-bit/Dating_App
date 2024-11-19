import 'dart:async';

import 'package:flutter/material.dart';
import 'package:matrix/homescreenttt.dart';
class front extends StatefulWidget {


  @override
  State<front> createState() => _frontState();
}

class _frontState extends State<front> {
  void initState()
  {
    Timer(Duration(seconds: 03), ( )
    {
      Navigator.push(context, MaterialPageRoute(builder:(contex)=>first()));
      // Navigation.push(contex, MateraialPageRoute(builder: (contex)=>signup()))
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Center(


  child: Column(
   mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
       // color: Colors.black45,
       height: 450 ,width: 300,
          decoration: BoxDecoration(
            color: Colors.black,
          image: DecorationImage(
            image: AssetImage("1584175590822.png")


          ),
        ),
      ),
Container(
  color: Colors.white,
  child: Text("Tic Tac Toe",style: TextStyle(
    fontWeight: FontWeight.w900, fontStyle: FontStyle.italic , color:Colors.black, fontSize: 40,

  ),),

),
      LinearProgressIndicator(
        borderRadius: BorderRadius.circular(20.5),
        backgroundColor: Colors.black,
        color: Colors.white,
        minHeight: 3.0,

      ),
    ],
  ),
),

    );
  }
}
