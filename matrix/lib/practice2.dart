import 'dart:async';

import 'package:flutter/material.dart';
import 'package:matrix/welcome.dart';
class pr2 extends StatefulWidget {


  @override
  State<pr2> createState() => _pr2State();
}

class _pr2State extends State<pr2> {
  int select = 0;
  void selectchange(int v){
    setState(() {
      select = v ;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(

      backgroundColor: Colors.pink,
      title: Text(" Order with Special Coupon"),

    ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(margin: EdgeInsets.all(0.0),

                    child: Center(
                      child: Column(
                        children: [
                          Text("Menu" ,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,fontStyle: FontStyle.italic),)
                        ],
                      ),
                    ),


            ),
          ListTile(
            selected: select ==0,
            selectedTileColor: Colors.black,
            leading: Icon(Icons.menu),
              title : Text("Spicy"),
            trailing: Icon(Icons.info),
            onTap: (){
              print("ij");
              selectchange(0);
            },
          ),
            ListTile(
              selected: select ==1,
              selectedTileColor: Colors.black,
              leading: Icon(Icons.menu),
              title : Text("Deserts"),
              trailing: Icon(Icons.info),
              onTap: (){
                print("ij");
                selectchange(0);
              },
            ) ,
            ListTile(
              selected: select ==2,
              selectedTileColor: Colors.black,
              leading: Icon(Icons.menu),
              title : Text("Italian"),
              trailing: Icon(Icons.info),
              onTap: (){
                Timer
                (Duration(seconds: 04), ( )
                {
                  Navigator.push(context, MaterialPageRoute(builder:(contex)=>wel()));

                });
                print("ij");
                selectchange(0);
              },
            ),
            ListTile(
              selected: select ==3,
              selectedTileColor: Colors.black,
              leading: Icon(Icons.menu),
              title : Text("Spanish"),
              trailing: Icon(Icons.info),
              onTap: (){
                print("ij");
                selectchange(0);
              },
            )



          ]
        ),
      ),
body:
// Column(
//   children: [
    Container(
      // height: double.infinity,
      // width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("nice.jpg"),
          fit: BoxFit.cover

        )
      ),


//       // child: ElevatedButton(onPressed: (){},child: Text("click me ")
//       // ),
//     ),
//     // Container(
//     //   // height: double.infinity,
//     //   // width: double.infinity,
//     //   child: ElevatedButton(onPressed: (){},child: Text("click me ")
//     //   ),
//     //
//     // )
//   ],
 ),
    );
  }
}
