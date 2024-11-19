import 'dart:async';

import 'package:classico/Welcome.dart';
import 'package:classico/datingapp1.dart';
import 'package:flutter/material.dart';

class front extends StatefulWidget {

  @override
  State<front> createState() => _frontState();
}

class _frontState extends State<front> {
  void initState()
  {
    Timer(Duration(seconds: 02), ( )
    {
      Navigator.push(context, MaterialPageRoute(builder:(contex)=>imga()));

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

                image: DecorationImage(
                    image: AssetImage("asset/logo1.jpeg"),
                  fit: BoxFit.fill


                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  color: Colors.white,
                  child: Text("DateIt",style: TextStyle(
                    fontWeight: FontWeight.w900, fontStyle: FontStyle.italic , color:Colors.black12, fontSize: 50,
                      fontFamily: 'RobotoMono'

                  ),),

                ),
              ),
            ),
            // LinearProgressIndicator(
            //   borderRadius: BorderRadius.circular(20.5),
            //   backgroundColor: Colors.pinkAccent,
            //   color: Colors.orangeAccent,
            //   minHeight: 3.0,
            //
            // ),
          ],
        ),
      ),

    );
  }
}

