// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// // import 'package:matrix/registration%20page.dart';
// class auth extends StatefulWidget {
//
//
//   @override
//   State<auth> createState() => _authState();
// }
//
// class _authState extends State<auth> {
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//
//   final TextEditingController t1 = TextEditingController();
//   final TextEditingController t2 = TextEditingController();
//
//   Future<void> _Signup() async {
//     try {
//       UserCredential userCredential = await _auth
//           .createUserWithEmailAndPassword(email: t1.text, password: t2.text);
//       print(" user Signed up: ${userCredential}");
//     }
//     catch (e) {
//       print("failed : $e");
//     }
//   }
//   Future<void> _login(BuildContext context) async {
//     try {
//       UserCredential userCredential = await _auth.signInWithEmailAndPassword(
//           email: t1.text, password: t2.text);
//       Navigator.push(
//           (context), MaterialPageRoute(builder: (context) => page()));
//       print(" user Signed up: ${userCredential}");
//     }
//     catch (e) {
//       print("failed : $e");
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(appBar: AppBar(
//       backgroundColor: Colors.orangeAccent,
//       title: Text(" Authentication "),
//
//     ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             TextField(
//               controller: t1,
//               decoration: InputDecoration(
//                 labelText: "Email",
//               ),
//             ),
//             SizedBox(height: 10),
//             TextField(
//               controller: t2,
//               obscureText: true,
//               decoration: InputDecoration(
//                 labelText: " Password",
//               ),
//             ),
//             SizedBox(height: 20,),
//             ElevatedButton(onPressed: _Signup, child: Text("Signup"),
//             ),
//             SizedBox(height: 20,),
//             ElevatedButton(onPressed: () {
//               _login(context);
//             }, child: Text("login"),
//             ),
//
//           ],
//         ),
//       ),
//     );
//
//   }
// }
//
//
//
//
//
//
//
//
//
//
// import 'package:flutter/material.dart';
//
// class LoginPage extends StatefulWidget {
//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }
//
// class _LoginPageState extends State<LoginPage> {
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//
//   final TextEditingController t1 = TextEditingController();
//   final TextEditingController t2 = TextEditingController();
//   Future<void> _Signup() async {
//     try {
//       UserCredential userCredential = await _auth
//           .createUserWithEmailAndPassword(email: t1.text, password: t2.text);
//       print(" user Signed up: ${userCredential}");
//     }
//     catch (e) {
//       print("failed : $e");
//     }
//   }
//   Future<void> _login(BuildContext context) async {
//     try {
//       UserCredential userCredential = await _auth.signInWithEmailAndPassword(
//           email: t1.text, password: t2.text);
//       Navigator.push(
//           (context), MaterialPageRoute(builder: (context) => page()));
//       print(" user Signed up: ${userCredential}");
//     }
//     catch (e) {
//       print("failed : $e");
//     }
//   }
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
//                       TextField(
//                         controller: t1,
//                         decoration: InputDecoration(
//                           // labelText: "Email",
//                         ),
//                       ),
//                       Text("Login", style: TextStyle(
//                           fontSize: 30,
//                           fontWeight: FontWeight.bold
//                       ),),
//
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
//                         makeInput(label: "Email"),
//                         makeInput(label: "Password", obscureText: true),
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
//                         onPressed: () {},
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
//                       ),),
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
//   Widget makeInput({label, obscureText = false}) {
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
//
//
// // import 'package:cloud_firestore/cloud_firestore.dart';
// // import 'package:flutter/material.dart';
// // // import 'package:cloud_firestore/cloud_firestore.dart';
// // class page extends StatefulWidget {
// //
// //
// //   @override
// //   State<page> createState() => _pageState();
// // }
// //
// // class _pageState extends State<page> {
// //   TextEditingController a1 =TextEditingController();
// //   TextEditingController a2 =TextEditingController();
// //   String s="";
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         leading: Icon(Icons.app_registration
// //         ),
// //         backgroundColor: Colors.teal,
// //         title: Text(" Registration Page "),
// //
// //       ),
// //       body: Container(
// //         color: Colors.white,
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.start,
// //
// //           children: [
// //             SizedBox(height: 55,),
// //             Padding(
// //               padding: const EdgeInsets.only(left: 30,right: 40),
// //               child: TextField(
// //
// //                 controller: a1,
// //                 decoration: InputDecoration(
// //                   label: Text(" Enter your Email"),
// //                   hintText: AutofillHints.email,
// //                 ),
// //               ),
// //             ),
// //             Padding(
// //               padding: const EdgeInsets.all(8.0),
// //               child: TextField(
// //                 controller: a2,
// //                 decoration: InputDecoration(
// //                   label: Text(" Enter your Password"),
// //                   hintText: "intrest",
// //                 ),
// //               ),
// //             ),
// //             SizedBox(height: 30,),
// //
// //             ElevatedButton(onPressed: (){
// //               CollectionReference c = FirebaseFirestore.instance.collection("signin");
// //               c.add(
// //                   {
// //                     "Email":a1.text,
// //                     "Password":a2.text,
// //
// //                   }
// //               ).then((onValue)=>{
// //                 setState(() {
// //                   a1.text="";
// //                   a2.text="";
// //                   s="Signed IN";
// //                 })
// //
// //
// //
// //
// //               });
// //             }, child: Text('Sign In')),
// //             Text("$s")
// //
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
// //
// // // import 'package:flutter/material.dart';
// // //
// // // class LoginPage extends StatelessWidget {
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       resizeToAvoidBottomInset: false,
// // //       backgroundColor: Colors.white,
// // //       appBar: AppBar(
// // //         elevation: 0,
// // //         backgroundColor: Colors.white,
// // //         leading: IconButton(
// // //           onPressed: () {
// // //             Navigator.pop(context);
// // //           },
// // //           icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.black,),
// // //         ),
// // //       ),
// // //       body: Container(
// // //         height: MediaQuery.of(context).size.height,
// // //         width: double.infinity,
// // //         child: Column(
// // //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // //           children: <Widget>[
// // //             Expanded(
// // //               child: Column(
// // //                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// // //                 children: <Widget>[
// // //                   Column(
// // //                     children: <Widget>[
// // //                       Text("Login", style: TextStyle(
// // //                           fontSize: 30,
// // //                           fontWeight: FontWeight.bold
// // //                       ),),
// // //                       SizedBox(height: 20,),
// // //                       Text("Login to your account", style: TextStyle(
// // //                           fontSize: 20,
// // //                           color: Colors.grey[700]
// // //                       ),),
// // //                     ],
// // //                   ),
// // //                   Padding(
// // //                     padding: EdgeInsets.symmetric(horizontal: 40),
// // //                     child: Column(
// // //                       children: <Widget>[
// // //                         makeInput(label: "Email"),
// // //                         makeInput(label: "Password", obscureText: true),
// // //                       ],
// // //                     ),
// // //                   ),
// // //                   Padding(
// // //                     padding: EdgeInsets.symmetric(horizontal: 40),
// // //                     child: Container(
// // //                       padding: EdgeInsets.only(top: 3, left: 3),
// // //                       decoration: BoxDecoration(
// // //                           borderRadius: BorderRadius.circular(50),
// // //                           border: Border(
// // //                             bottom: BorderSide(color: Colors.black),
// // //                             top: BorderSide(color: Colors.black),
// // //                             left: BorderSide(color: Colors.black),
// // //                             right: BorderSide(color: Colors.black),
// // //                           )
// // //                       ),
// // //                       child: MaterialButton(
// // //                         minWidth: double.infinity,
// // //                         height: 60,
// // //                         onPressed: () {},
// // //                         color: Colors.pinkAccent.shade100,
// // //                         elevation: 0,
// // //                         shape: RoundedRectangleBorder(
// // //                             borderRadius: BorderRadius.circular(50)
// // //                         ),
// // //                         child: Text("Login", style: TextStyle(
// // //                             fontWeight: FontWeight.w600,
// // //                             fontSize: 18
// // //                         ),),
// // //                       ),
// // //                     ),
// // //                   ),
// // //                   Row(
// // //                     mainAxisAlignment: MainAxisAlignment.center,
// // //                     children: <Widget>[
// // //                       Text("Don't have an account?"),
// // //                       Text("Sign up", style: TextStyle(
// // //                           fontWeight: FontWeight.w600, fontSize: 18
// // //                       ),),
// // //                     ],
// // //                   )
// // //                 ],
// // //               ),
// // //             ),
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }
// // //
// // //   Widget makeInput({label, obscureText = false}) {
// // //     return Column(
// // //       crossAxisAlignment: CrossAxisAlignment.start,
// // //       children: <Widget>[
// // //         Text(label, style: TextStyle(
// // //             fontSize: 15,
// // //             fontWeight: FontWeight.w400,
// // //             color: Colors.black87
// // //         ),),
// // //         SizedBox(height: 5,),
// // //         TextField(
// // //           obscureText: obscureText,
// // //           decoration: InputDecoration(
// // //             contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
// // //             enabledBorder: OutlineInputBorder(
// // //                 borderSide: BorderSide(color: Colors.grey.shade400)
// // //             ),
// // //             border: OutlineInputBorder(
// // //                 borderSide: BorderSide(color: Colors.grey.shade400)
// // //             ),
// // //           ),
// // //         ),
// // //         SizedBox(height: 30,),
// // //       ],
// // //     );
// // //   }
// // // }
//
