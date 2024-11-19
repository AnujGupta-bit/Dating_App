import 'package:flutter/material.dart';
class lview extends StatefulWidget {


  @override
  State<lview> createState() => _lviewState();

}

class _lviewState extends State<lview> {
  final List< Map< String ,Object> > cl = [
  {
    "title" : "Menu" ,
  "color" : Colors.redAccent,
  "icon" : Icon(Icons.home),
    "Color" : (Colors.cyan),

  },
    {
      "title" : "Fifo" ,
      "color" : Colors.redAccent,
      "icon" : Icon(Icons.access_alarm),
      "Color" : (Colors.redAccent)
    },

  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      backgroundColor: Colors.pink,
    ),
      body:
    ListView.builder(itemBuilder: (context, index) {
      return ListTile(
        leading: cl[index]["icon"] as Icon,
        title: Text(cl[index]["title"] as String),
        tileColor:cl[index]["Color"] as Color  ,
      );

    }
    ,
      itemCount: cl.length,
    )
    );
  }
}
