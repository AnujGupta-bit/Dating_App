import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:matrix/registration%20page.dart';
class auth extends StatefulWidget {


  @override
  State<auth> createState() => _authState();
}

class _authState extends State<auth> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  final TextEditingController t1 = TextEditingController();
  final TextEditingController t2 = TextEditingController();

  Future<void> _Signup() async {
    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: t1.text, password: t2.text);
      print(" user Signed up: ${userCredential}");
    }
    catch (e) {
      print("failed : $e");
    }
  }
    Future<void> _login(BuildContext context) async {
      try {
        UserCredential userCredential = await _auth.signInWithEmailAndPassword(
            email: t1.text, password: t2.text);
        Navigator.push(
            (context), MaterialPageRoute(builder: (context) => page()));
        print(" user Signed up: ${userCredential}");
      }
      catch (e) {
        print("failed : $e");
      }
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text(" Authentication "),

      ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextField(
                  controller: t1,
                  decoration: InputDecoration(
                    labelText: "Email",
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: t2,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: " Password",
                  ),
                ),
                SizedBox(height: 20,),
                ElevatedButton(onPressed: _Signup, child: Text("Signup"),
                ),
                SizedBox(height: 20,),
                ElevatedButton(onPressed: () {
                  _login(context);
                }, child: Text("login"),
                ),

              ],
            ),
          ),
      );

    }
  }
