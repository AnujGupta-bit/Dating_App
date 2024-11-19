// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:animated_text_kit/animated_text_kit.dart';
//
// class WelcomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.orangeAccent,
//       body: SafeArea(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Expanded(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     'Welcome to',
//                     style: GoogleFonts.lobster(
//                       fontSize: 40,
//                       color: Colors.white,
//                     ),
//                   ),
//                   SizedBox(height: 20),
//                   Text(
//                     'Foodie App',
//                     style: GoogleFonts.lobster(
//                       fontSize: 50,
//                       color: Colors.white,
//                     ),
//                   ),
//                   SizedBox(height: 20),
//                   Container(
//                     height: 300,
//                     child: Image.asset('assets/food.png', fit: BoxFit.contain),
//                   ),
//                   SizedBox(height: 20),
//                   DefaultTextStyle(
//                     style: GoogleFonts.lobster(
//                       fontSize: 25,
//                       color: Colors.white,
//                     ),
//                     child: AnimatedTextKit(
//                       animatedTexts: [
//                         TypewriterAnimatedText('Delicious Meals'),
//                         TypewriterAnimatedText('Quick Delivery'),
//                         TypewriterAnimatedText('Great Offers'),
//                       ],
//                       repeatForever: true,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
//               child: ElevatedButton(
//                 onPressed: () {
//                   // Navigate to the next page
//                 },
//                 style: ElevatedButton.styleFrom(
//                   primary: Colors.deepOrange,
//                   padding: EdgeInsets.symmetric(vertical: 15),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                 ),
//                 child: Center(
//                   child: Text(
//                     'Get Started',
//                     style: GoogleFonts.lobster(
//                       fontSize: 25,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class AnimatedLogoPage extends StatefulWidget {
//   @override
//   _AnimatedLogoPageState createState() => _AnimatedLogoPageState();
// }
//
// class _AnimatedLogoPageState extends State<AnimatedLogoPage> with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<double> _animation;
//
//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       duration: const Duration(seconds: 3),
//       vsync: this,
//     )..repeat(reverse: true);
//
//     _animation = CurvedAnimation(
//       parent: _controller,
//       curve: Curves.easeInOut,
//     );
//   }
//
//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.pinkAccent,
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             AnimatedBuilder(
//               animation: _animation,
//               builder: (context, child) {
//                 return Transform.scale(
//                   scale: _animation.value * 1.2,
//                   child: Transform.rotate(
//                     angle: _animation.value * 2 * 3.1416,
//                     child: Opacity(
//                       opacity: _animation.value,
//                       child: child,
//                     ),
//                   ),
//                 );
//               },
//               child: Image.asset(
//                 'penguin.jpg',
//                 height: 100.0,
//                 width: 100.0,
//               ),
//             ),
//             SizedBox(height: 20),
//             Text(
//               'LoveMatch',
//               style: GoogleFonts.pacifico(
//                 textStyle: TextStyle(
//                   fontSize: 48,
//                   color: Colors.white,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//             SizedBox(height: 10),
//             Text(
//               'Find Your Perfect Match',
//               style: GoogleFonts.lato(
//                 textStyle: TextStyle(
//                   fontSize: 18,
//                   color: Colors.white70,
//                 ),
//               ),
//             ),
//             SizedBox(height: 50),
//             CircularProgressIndicator(
//               valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }



