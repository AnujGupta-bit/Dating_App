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
    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    );

    _animation1 = Tween<Offset>(
      begin: Offset(-1.0, 0.0), // Start from the left
      end: Offset(0.0, 0.0),    // Move to the center
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    _animation2 = Tween<Offset>(
      begin: Offset(1.0, 0.0),  // Start from the right
      end: Offset(0.0, 0.0),    // Move to the center
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
      appBar: AppBar(
        title: Text(" Animation"),
      ),
      body: Center(
        child: Stack(
          
          children: [
            SlideTransition(
              position: _animation1,
              child: Container(
                width: 100,
                height: 100,
                child: Image.asset('assets/image1.png'),
              ),
            ),
            SlideTransition(
              position: _animation2,
              child: Container(
                width: 100,
                height: 100,
                child: Image.asset('assets/image2.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
