import 'package:flutter/material.dart';
class information extends StatelessWidget {
 final Map<String , Object> item  ;
 const information({Key? key , required this.item}) : super( key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text(" Information"),
      backgroundColor: Colors.pink,
      foregroundColor: Colors.teal,

    ),
    body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.white,
            Colors.black,

          ]
        )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            item["Image"] as String,
            width: 25,
            height: 25,
          ),
          Text(
            item[ "title"] as String,


          ),

          Text( item["Subtitle"] as String ,)
        ],
      ),
    ),);
  }
}



