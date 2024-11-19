import 'package:flutter/material.dart';
class stack extends StatefulWidget {


  @override
  State<stack> createState() => _stackState();

}

class _stackState extends State<stack> {
  Color cl1 = Colors.yellowAccent;
  Color cl2 = Colors.black12;
  bool st = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 400,
                width: 400,
                color: Colors.black,
              ),
              Positioned(
                left: 50,
                top: 50,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => stack()));
                  },
                  child: Container(
                    height: 300,
                    width: 300,
                    color: Colors.orange,
                  ),
                ),
              ),
              Positioned(left: 100, top: 100,
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.black,
                ),
              )
            ],

          ),

          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(

                children: [
                  Container(
                    height: 400,
                    width: 400,
                    color: Colors.black,
                  ),
                  Positioned(
                    left: 50,
                    top: 50,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => stack()));
                      },
                      child: Container(
                        height: 300,
                        width: 300,
                        color: Colors.orange,
                      ),
                    ),
                  ),
                  Positioned(left: 100, top: 100,
                    child: Container(
                      height: 200,
                      width: 200,
                      color: Colors.black,
                    ),
                  )
                ],

              ),
            ),
          ),
        ],







      ),


    );
  }
}