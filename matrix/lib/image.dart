import 'package:flutter/material.dart';
class chitra extends StatefulWidget {


  @override
  State<chitra> createState() => _chitraState();
}

class _chitraState extends State<chitra> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      backgroundColor: Colors.pink,



    ),
      body:Center(
        child: Column(
          children: [
            Container(

              // height: double.infinity,
              // width: double.infinity,
              decoration: BoxDecoration(
                  gradient: SweepGradient(
                      colors: [
                        Colors.teal,
                        Colors.black45,
                      ]
                  ),
                  image: DecorationImage(
                    image:  AssetImage("nice.jpg"),
                    fit: BoxFit.fill,



                  )
              ),

            ),
            //
                     ElevatedButton(
              child: Text("f"),
              onPressed: (){

              },
            ),
          ],
        ),
      ),);
  }
}
