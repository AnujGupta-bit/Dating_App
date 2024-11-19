
import 'package:flutter/material.dart';
class splash extends StatefulWidget {

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  int select = 0;
  void selectchange(int v){
    setState(() {
      select = v ;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor:  Colors.pinkAccent,


      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              margin: EdgeInsets.all(0.0),

            child : Center(
              child : Column(
                mainAxisAlignment : MainAxisAlignment.center,
                children : [
                  // Image(image: AssetImage("wallpaper.jpg")),
                  Text("main menu "),

                ]
              )
            )
            ),

            ListTile(
              selected:  select ==0 ,
              selectedTileColor:Colors.red,
              leading: Icon(Icons.home),
              title: Text(" home"),
              trailing: Icon(Icons.info),
              onTap: (){
                print("first");
                selectchange(0);
              },
            ),
            ListTile(
              selected:  select ==3 ,
              selectedTileColor:Colors.red,
              leading: Icon(Icons.home),
              title: Text(" home"),
              trailing: Icon(Icons.info),
              onTap: (){
                print("first");
                selectchange(3);
              },
            ),
            ListTile(
              selected:  select ==2,
              selectedTileColor:Colors.red,
              leading: Icon(Icons.home),
              title: Text(" home"),
              trailing: Icon(Icons.info),
              onTap: (){
                print("first");
                selectchange(2);
              },
            ),
            ListTile(
              selected:  select ==1 ,
              selectedTileColor:Colors.red,
              leading: Icon(Icons.home),
              title: Text(" home"),
              trailing: Icon(Icons.info),
              onTap: (){
                print("first");
                selectchange(1);
              },
            ),
          ],
        ),
      ),
    );
  }
}

