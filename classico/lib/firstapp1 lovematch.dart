import 'dart:async';

import 'package:classico/app/app.welcomepage.dart';
import 'package:classico/datingapp1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnimatedLogoPage extends StatefulWidget {
  @override
  _AnimatedLogoPageState createState() => _AnimatedLogoPageState();
}

class _AnimatedLogoPageState extends State<AnimatedLogoPage> with SingleTickerProviderStateMixin {
  // void initState()
  // {
  //   Timer(Duration(seconds: 02), ( )
  //   {
  //     Navigator.push(context, MaterialPageRoute(builder:(contex)=>imga()));
  //
  //   });
  // }
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    Timer(Duration(seconds: 03), ( )
    {
      Navigator.push(context, MaterialPageRoute(builder:(contex)=>Home()));

    });
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..repeat(reverse: true);

    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedBuilder(
              animation: _animation,
              builder: (context, child) {
                return Transform.scale(
                  scale: _animation.value * 1.2,
                  child: Transform.rotate(
                    angle: _animation.value * 2 * 3.1416,
                    child: Opacity(
                      opacity: _animation.value,
                      child: child,
                    ),
                  ),
                );
              },
              child: Image.asset(
                'assets/heartimageremovebgpreview.png',
                height: 200.0,
                width: 200.0,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'LoveMatch',
              style: GoogleFonts.pacifico(
                textStyle: TextStyle(
                  fontSize: 48,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Find Your Perfect Match',
              style: GoogleFonts.lato(
                textStyle: TextStyle(
                  fontSize: 18,
                  color: Colors.white70,
                ),
              ),
            ),
            SizedBox(height: 50),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
