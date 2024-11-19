import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:matrix/aap.dart';
import 'package:matrix/drawer.dart';
import 'package:matrix/onboarding.dart';
import 'package:matrix/splash%20screen.dart';
import 'package:matrix/src/profilepage.dart';
import 'package:matrix/src/signuppage.dart';
import 'package:matrix/themedata.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:matrix/welcome%20screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options : const FirebaseOptions(
      apiKey: "AIzaSyC-nvlWfJhf4KRVWSBNf2VzDxeHnlk6la4",
      authDomain: "project1-437c7.firebaseapp.com",
      projectId: "project1-437c7",
      storageBucket: "project1-437c7.appspot.com",
      messagingSenderId: "557685643667",
      appId: "1:557685643667:web:a17d27a4eea11551d37066",
      measurementId: "G-H1RYMTY4WM"
  )
  );
  runApp(MaterialApp(
    theme: Themeedata.lightTheme,
    darkTheme : Themeedata.DarkTheme ,
    themeMode: ThemeMode.system ,
    debugShowCheckedModeBanner: false,
     home: profilescreen (),


  ));
}


class ex1 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // theme: Themeedata.lightTheme,
      // darkTheme : Themeedata.DarkTheme ,
      // themeMode: ThemeMode.system ,

      appBar: AppBar(
        title: Text("My First App"),
        backgroundColor: Colors.teal,
      ),
      body: Center(child: Text("hello world")),
    );
  }
}
