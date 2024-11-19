import 'dart:async';

import 'package:flutter/material.dart';
import 'package:matrix/animation.dart';
import 'package:matrix/cont.dart';
import 'package:matrix/sec.dart';
class nav extends StatefulWidget {


  @override

  State<nav> createState() => _navState();
}

class _navState extends State<nav> {
  @override
  void initState()
  {
    Timer(Duration(seconds: 04), ( )
    {
      Navigator.push(context, MaterialPageRoute(builder:(contex)=>abc()));
      // Navigation.push(contex, MateraialPageRoute(builder: (contex)=>signup()))
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      leading: Icon(Icons.add_home,size: 40,color: Colors.white,),
      centerTitle: true,
      title: Text("crack it",style: TextStyle(color: Colors.white,fontSize:30 ),),
      actions: [
        IconButton(onPressed: ()=>{}, icon: Icon(Icons.info),)
      ],
      backgroundColor: Colors.redAccent,
    ),);

  }
}