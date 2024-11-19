//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter/material.dart';
// class order extends StatelessWidget
// {
//   @override
//   Widget build(BuildContext)
//   {
//     return Scaffold(appBar: AppBar
//       (
//       leading: Icon(Icons.fastfood_rounded , size: 40, color: Colors.indigo,),
//       centerTitle: true,
//       title: Text("Moar Foods"  , style: TextStyle(color: Colors.purpleAccent, fontStyle: FontStyle.italic, fontSize: 50,), ),
//       actions: [
//         IconButton(onPressed: ()=>{}, icon: Icon(Icons.menu),)],
//       backgroundColor: Colors.redAccent,),
//       body: Center(child: Container(
//         height: double.infinity,
//         width: double.infinity,
//         color: Colors.white,
//         child :(Text("Order ur Food Fast!!" , style: TextStyle(color: Colors.deepOrangeAccent,fontSize: 40))))),
//
//
//
//
//     );
//   }
// }
//
import 'package:flutter/material.dart';
class j extends StatefulWidget {


  @override
  State<j> createState() => _jState();
}

class _jState extends State<j> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Stack(
        children: <Widget>[
          // Stroked text as border.
          Text(
            'Moar  Foods!',
            style: TextStyle(
              fontSize: 40,
              foreground: Paint()
                ..style = PaintingStyle.stroke
                ..strokeWidth = 4
                ..color = Colors.black!,
            ),
          ),
          // Solid text as fill.
          Text(
            'Moar  Foods!',
            style: TextStyle(
              fontSize: 40,
              color: Colors.white12,
            ),
          ),
        ],
      ),
      backgroundColor: Colors.grey,

    ),
    body: Column(
      children: [
        Container(

          decoration:  BoxDecoration(
              image: DecorationImage(
                image:  AssetImage("nice.jpg"),
                fit: BoxFit.cover,
              )
          ),
            ),

    //
    //       Container(
    //
    //
    //             child: Text(" Welcome"
    //               ,style: TextStyle(
    //                   fontSize: 50 , fontWeight: FontWeight.bold , fontStyle:FontStyle.italic ,color: Colors.pinkAccent
    //               ),
    //
    //             ),
    //
    //
    //
    //
    //
    //
    // ),

]
    )
    );
  }
}











