import 'dart:async';

import 'package:flutter/material.dart';
import 'package:matrix/cont.dart';
import 'package:matrix/practice2.dart';
class wel extends StatefulWidget {


  @override
  State<wel> createState() => _welState();
}

class _welState extends State<wel> {
  void initstate(){
    Timer(Duration(seconds : 4),()
    {
    Navigator.push(context, MaterialPageRoute(builder: (contex)=>pr2()));

  });
  }

  @override
  Widget build(BuildContext context) {
    var ui;
    return Scaffold(
      appBar: AppBar(centerTitle: true,

leading: Image.asset("nice.jpg"),
        backgroundColor: Colors.red,
      

        // title:Text("Moar Foods" , style: TextStyle(fontSize: 30 ,  ),


      ),

      body:
    //   decoration:  BoxDecoration(
    // image: DecorationImage(
    // image:  AssetImage("nice.jpg"),
    // fit: BoxFit.fill,
    // )
    // ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(

        mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Container(
                 // height: double.infinity,
                 //  width: double.infinity,
                decoration:  BoxDecoration(
                    image: DecorationImage(
                      image:  AssetImage("nice.jpg"),
                      fit: BoxFit.fill,
                    )
                ),
                  child: Text(" Welcome"
                      ,style: TextStyle(
                    fontSize: 50 , fontWeight: FontWeight.bold , fontStyle:FontStyle.italic ,color: Colors.pinkAccent
                  ),

                  ),


                ),
                 // Container(
                 //   // height: double.infinity,
                 //   // width: double.infinity,
                 //   decoration:  BoxDecoration(
                 //       image: DecorationImage(
                 //           image:  AssetImage("nice.jpg"),
                 //           fit: BoxFit.fill,
                 //       )
                 //   ),
                 // ),


                 Container(
                  child: Text("To Moar Foods <3",style: TextStyle(
                      fontSize: 50 , fontWeight: FontWeight.bold , fontStyle:FontStyle.italic ,color: Colors.pinkAccent
                  ),),
                ),


            ],

          ),
    ),



    );
  }
}
