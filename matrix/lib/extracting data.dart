import 'package:flutter/foundation.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:matrix/data.dart';
class parsing extends StatefulWidget {


  @override
  State<parsing> createState() => _parsingState();
}

class _parsingState extends State<parsing> {

  int select = 0 ;
  void selectchange(int v){
    setState(() {
      select = v ;
    });
  }
  void _navigatetodetails(BuildContext , Map<String, Object> item)
  {
    print(item["title"] as String);
    Navigator.push(context,
      MaterialPageRoute(builder: (context)=>
          information(item  : item)),

    );
    }
    final List<Map<String , Object>> sR = [
      {
        "title" : " Sneha",
        "color" : Colors.pink,
        "Subtitle" : "What i Do",
        "Icon" : Icon(Icons.question_answer),
        "Image" : "nice.jpg"
      },
      {
        "title" : "Anuj",
        "color" : Colors.teal,
        "Subtitle" : "What i Do",
        "Icon" : Icon(Icons.question_answer),
        "Image" : "wallpaper.jpg"
      },
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      backgroundColor: Colors.orangeAccent,
    ),
    body: ListView.builder(itemBuilder: (context , index){
      return Column(
        children: [
          ListTile(
            leading: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.3),
                image: DecorationImage(
                  image: AssetImage(sR[index]['Image'] as String),
                  fit: BoxFit.fill,
                )
              ),
            ),
          ),
          ListTile(
            leading: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.3),
                  image: DecorationImage(
                    image: AssetImage(sR[index]['Image'] as String),
                    fit: BoxFit.fill,
                  )
              ),
            ),
            trailing: sR[index]["Icon"] as Icon,
            title: Text(sR[index]["title"] as String ),
            onTap: (){
              print("first");
              print("Selected : ${sR[index]}");
              _navigatetodetails(context , sR[index]);

            },
          ),
        ],
      );

    },
      itemCount : sR.length ,
    )
    );
  }
}


