import 'dart:async';

import 'package:classico/menu.dart';
import 'package:flutter/material.dart';
class imga extends StatefulWidget {
  const imga({super.key});

  @override
  State<imga> createState() => _imgaState();
}

class _imgaState extends State<imga> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation1;
  late Animation<Offset> _animation2;

  @override
  void initState() {
    super.initState();
  Timer(Duration(seconds: 4), ( )
    {
      Navigator.push(context, MaterialPageRoute(builder:(contex)=>SignupPage()));

    });
    _controller = AnimationController(
      duration: const Duration(seconds: 4),
      vsync: this,
    );

    _animation1 = Tween<Offset>(
      begin: Offset(-1.0, 0.0), // Start from the left
      end: Offset(-.49, 0.0),    // Move to the center
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    _animation2 = Tween<Offset>(
      begin: Offset(2,0.0),  // Start from the right
      end: Offset(.49, 0.0),    // Move to the center
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    _controller.forward();
  }




  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(

      body:
      Column(

        // mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              alignment: Alignment.center,
              height: 150,
              width: 200,
              decoration: BoxDecoration(

                image: DecorationImage(
                    image: AssetImage("asset/logo1.jpeg"),
                    fit: BoxFit.fill


                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(180),
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Stack(


                children: [
                  SlideTransition(
                    position: _animation1,
                    child: Container(
                      width: 200,
                      height: 250,
                      child: Image.asset('two-happy-penguin-couple-vector.jpg'),
                    ),
                  ),
                  SlideTransition(
                    position: _animation2,
                    child: Container(
                      width: 200,
                      height: 242,
                      child: Image.asset('two-happy-penguin-couple-vector-1.jpg'),
                    ),
                  ),

                  //   Text("Welcome To My App" ,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 45),)
                ],
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,

    );
  }
}
