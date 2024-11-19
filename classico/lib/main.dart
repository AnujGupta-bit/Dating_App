import 'package:classico/app/Appbottombar.dart';
import 'package:classico/GoogleloginIN.dart';
import 'package:classico/Welcome.dart';
import 'package:classico/aaii.dart';
import 'package:classico/app.userdata.dart';
import 'package:classico/app/app.welcomepage.dart';
import 'package:classico/app/namepageapp.dart';
import 'package:classico/appintrestpage.dart';
import 'package:classico/appprofile.dart';
import 'package:classico/app/intrestpageaap.dart';
import 'package:classico/listprint.dart';
import 'package:classico/app/rejectscreen.dart';
import 'package:flutter_tags/flutter_tags.dart';
import 'package:classico/appsignin.dart';
import 'package:classico/authentication.dart';
import 'package:classico/bottom%20bar.dart';
import 'package:classico/datingapp1.dart';
import 'package:classico/datingapplogin.dart';
import 'package:classico/generative%20AI.dart';
import 'package:classico/hobbies.dart';
import 'package:classico/home.dart';
import 'package:classico/imagepicker.dart';
import 'package:classico/location.dart';
import 'package:classico/practicelogin.dart';
import 'package:classico/menu.dart';
import 'package:classico/realtimemessaging.dart';
import 'package:classico/firstapp1 lovematch.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:path_provider/path_provider.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:password_strength_checker/password_strength_checker.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:provider/provider.dart';
// import 'question_provider.dart';
// import "cont2.dart";
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:intl/intl.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options : const FirebaseOptions(
          apiKey: "AIzaSyBe36y9XbsDv6db02RnP2ktY-PPwI-2J9k",
          authDomain: "classic-fdd68.firebaseapp.com",
          projectId: "classic-fdd68",
          storageBucket: "classic-fdd68.appspot.com",
          messagingSenderId: "871663210202",
          appId: "1:871663210202:web:39954b82f41c13ed6c1fe3",
          measurementId: "G-V8Q1HZKT5F"
      )
  );
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: AnimatedLogoPage(),

    // home: ProfileSelectionPage(),


  ));
}


class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My APP"),
      ),
    );
  }
}