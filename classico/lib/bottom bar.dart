import 'package:classico/datingapplogin.dart';
import 'package:flutter/material.dart';
class btm extends StatefulWidget {
  const btm({super.key});

  @override
  State<btm> createState() => _btmState();
}

class _btmState extends State<btm> {
  int select = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Bar " , style: TextStyle(color: Colors.white70),),
        centerTitle: true,
        backgroundColor: Colors.teal,

      ),

      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: IconButton(onPressed: (){
          // Navigator.push(context, MaterialPageRoute(builder:(contex)=>FancyFab()));

        },


          icon: Icon(Icons.home),),
            label: ""
        ),
        BottomNavigationBarItem(icon: IconButton(onPressed: (){},icon: Icon(Icons.account_circle),),
            label: ""
        ),
        BottomNavigationBarItem(icon: IconButton(onPressed: (){},icon: Icon(Icons.info_outline),),
            label: ""
        ),
      ],
        backgroundColor: Colors.teal,
        onTap: (index){
          setState(() {
            select = index;
          });
        },
        currentIndex: select,

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){

        }
      ),
    );
  }
}
