import 'package:flutter/material.dart';
class xyz extends StatefulWidget {


  @override
  State<xyz> createState() => _xyzState();
}

class _xyzState extends State<xyz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: Container(
          color: Colors.lightGreen,
          height: double.infinity,
          width: double.infinity,
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,

                
                width: 100,
                color: Colors.green,
              ),
              Text("Dil Maange More",style: TextStyle(
                color: Colors.green,
                fontSize: 30
              ),),
              ElevatedButton(onPressed: (){}, child: Text("Click me"))


            ],
          ),
        ),
      )



    );
  }
}
