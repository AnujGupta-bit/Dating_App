import 'package:classico/app/Appbottombar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

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
          (context), MaterialPageRoute(builder: (context) => HomeScreen()));
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
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
//
// class oginPage extends StatefulWidget {
//
//
//   @override
//   State<oginPage> createState() => _oginPageState();
// }
//
// class _oginPageState extends State<oginPage> {
//
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   final TextEditingController _EmailController = TextEditingController();
//   final TextEditingController _PasswordController = TextEditingController();
//
//   Future<void> _Signup()async{
//     try {
//       UserCredential userCredential = await _auth.createUserWithEmailAndPassword(email: _EmailController.text, password: _PasswordController.text);
//       print('user Signed Up : ${userCredential}');
//     } catch (e){
//       print('Failed to signup : $e');
//     }
//   }
//
//   Future<void> _login(BuildContext context) async{
//     try{
//       UserCredential userCredential = await _auth.signInWithEmailAndPassword(email: _EmailController.text, password: _PasswordController.text);
//       //  Navigator.push(context , MaterialPageRoute(builder: (context)=>()));
//     }catch(e){
//       print('Faild to login : $e');
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Colors.white,
//         leading: IconButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.black,),
//         ),
//       ),
//       body: Container(
//         height: MediaQuery.of(context).size.height,
//         width: double.infinity,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: <Widget>[
//             Expanded(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: <Widget>[
//                   Column(
//                     children: <Widget>[
//                       Text("Login", style: TextStyle(
//                           fontSize: 30,
//                           fontWeight: FontWeight.bold
//                       ),),
//                       SizedBox(height: 20,),
//                       Text("Login to your account", style: TextStyle(
//                           fontSize: 20,
//                           color: Colors.grey[700]
//                       ),),
//                     ],
//                   ),
//                   Padding(
//                     padding: EdgeInsets.symmetric(horizontal: 40),
//                     child: Column(
//                       children: <Widget>[
//                         makeInput(
//                           controller:  _EmailController,
//                           label: "Email" , //obscureText: true
//                         ),
//
//                         makeInput(
//                             controller:  _PasswordController,
//                             label: "Password", obscureText: true),
//                       ],
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.symmetric(horizontal: 40),
//                     child: Container(
//                       padding: EdgeInsets.only(top: 3, left: 3),
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(50),
//                           border: Border(
//                             bottom: BorderSide(color: Colors.black),
//                             top: BorderSide(color: Colors.black),
//                             left: BorderSide(color: Colors.black),
//                             right: BorderSide(color: Colors.black),
//                           )
//                       ),
//                       child: MaterialButton(
//                         minWidth: double.infinity,
//                         height: 60,
//                         onPressed: () {
//                           _login(context);
//                         },
//                         color: Colors.pinkAccent.shade100,
//                         elevation: 0,
//                         shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(50)
//                         ),
//                         child: Text("Login", style: TextStyle(
//                             fontWeight: FontWeight.w600,
//                             fontSize: 18
//                         ),),
//                       ),
//                     ),
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: <Widget>[
//                       Text("Don't have an account?"),
//                       Text("Sign up", style: TextStyle(
//                           fontWeight: FontWeight.w600, fontSize: 18
//                       ),
//                       ),
//                     ],
//                   )
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget makeInput({label, obscureText = false, required TextEditingController controller}) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         Text(label, style: TextStyle(
//             fontSize: 15,
//             fontWeight: FontWeight.w400,
//             color: Colors.black87
//         ),),
//         SizedBox(height: 5,),
//         TextField(
//           obscureText: obscureText,
//           decoration: InputDecoration(
//             contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
//             enabledBorder: OutlineInputBorder(
//                 borderSide: BorderSide(color: Colors.grey.shade400)
//             ),
//             border: OutlineInputBorder(
//                 borderSide: BorderSide(color: Colors.grey.shade400)
//             ),
//           ),
//         ),
//         SizedBox(height: 30,),
//       ],
//     );
//   }
// }
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
//
// class ignupPage extends StatefulWidget {
//   @override
//   State<ignupPage> createState() => _ignupPageState();
// }
//
// class _ignupPageState extends State<ignupPage> {
//
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   final TextEditingController _EmailController = TextEditingController();
//   final TextEditingController _PasswordController = TextEditingController();
//   final TextEditingController _PasswordController2 = TextEditingController();
//
//   Future<void> _Signup()async{
//     try {
//       UserCredential userCredential = await _auth.createUserWithEmailAndPassword(email: _EmailController.text, password: _PasswordController.text);
//       print('user Signed Up : ${userCredential}');
//     } catch (e){
//       print('Failed to signup : $e');
//     }
//   }
//
//   Future<void> _login(BuildContext context) async{
//     try{
//       UserCredential userCredential = await _auth.signInWithEmailAndPassword(email: _EmailController.text, password: _PasswordController.text);
//       //  Navigator.push(context , MaterialPageRoute(builder: (context)=>()));
//     }catch(e){
//       print('Faild to login : $e');
//     }
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: true,
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Colors.white,
//         leading: IconButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.black,),
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Container(
//           padding: EdgeInsets.symmetric(horizontal: 40),
//           height: MediaQuery.of(context).size.height - 50,
//           width: double.infinity,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: <Widget>[
//               Column(
//                 children: <Widget>[
//                   Text("Sign up", style: TextStyle(
//                       fontSize: 30,
//                       fontWeight: FontWeight.bold
//                   ),),
//                   SizedBox(height: 20,),
//                   Text("Create an account, It's free", style: TextStyle(
//                       fontSize: 15,
//                       color: Colors.grey[700]
//                   ),),
//                 ],
//               ),
//               Column(
//                 children: <Widget>[
//                   makeInput(
//                       controller:  _EmailController,
//                       label: "Email"),
//                   makeInput(
//                       controller:  _PasswordController,
//                       label: "Password", obscureText: true),
//                   makeInput(
//                       controller:  _PasswordController2,
//                       label: "Confirm Password", obscureText: true),
//                 ],
//               ),
//               Container(
//                 padding: EdgeInsets.only(top: 3, left: 3),
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(50),
//                     border: Border(
//                       bottom: BorderSide(color: Colors.black),
//                       top: BorderSide(color: Colors.black),
//                       left: BorderSide(color: Colors.black),
//                       right: BorderSide(color: Colors.black),
//                     )
//                 ),
//                 child: MaterialButton(
//                   minWidth: double.infinity,
//                   height: 60,
//                   onPressed: () {
//                     _Signup;
//                   },
//                   color: Colors.pinkAccent.shade100,
//                   elevation: 0,
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(50)
//                   ),
//                   child: Text("Sign up", style: TextStyle(
//                       fontWeight: FontWeight.w600,
//                       fontSize: 18
//                   ),),
//                 ),
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Text("Already have an account?"),
//                   Text(" Login", style: TextStyle(
//                       fontWeight: FontWeight.w600, fontSize: 18
//                   ),),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget makeInput({label, obscureText = false, required TextEditingController controller}) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         Text(label, style: TextStyle(
//             fontSize: 15,
//             fontWeight: FontWeight.w400,
//             color: Colors.black87
//         ),),
//         SizedBox(height: 5,),
//         TextField(
//           obscureText: obscureText,
//           decoration: InputDecoration(
//             contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
//             enabledBorder: OutlineInputBorder(
//                 borderSide: BorderSide(color: Colors.grey.shade400)
//             ),
//             border: OutlineInputBorder(
//                 borderSide: BorderSide(color: Colors.grey.shade400)
//             ),
//           ),
//         ),
//         SizedBox(height: 30,),
//       ],
//     );
//   }
// }
