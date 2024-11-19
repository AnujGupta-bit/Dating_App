import 'package:classico/app/app.welcomepage.dart';
import 'package:classico/datingapplogin.dart';
import 'package:classico/app/intrestpageaap.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

// import 'package:flutter/material.dart';

class ignupPage extends StatefulWidget {
  @override
  State<ignupPage> createState() => _ignupPageState();
}

class _ignupPageState extends State<ignupPage> {

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _EmailController = TextEditingController();
  final TextEditingController _PasswordController = TextEditingController();
  // final TextEditingController _PasswordController2 = TextEditingController();

  Future<void> ignupPage(BuildContext context) async {
    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(
          email: _EmailController.text, password: _PasswordController.text);
      Navigator.push(context, MaterialPageRoute(builder: (context) =>InterestPage()));
    } catch (e) {
      print('Failed to signup : $e');
    }
  }

  // Future<void> login(BuildContext context) async {
  //   try {
  //     UserCredential userCredential = await _auth.signInWithEmailAndPassword(
  //         email: _EmailController.text, password: _PasswordController.text);
  //     Navigator.push(context, MaterialPageRoute(builder: (context) =>Home()));
  //     print(" user Signup : ${userCredential}");
  //   } catch (e) {
  //     print('Faild to login : $e');
  //   }
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.black,),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          height: MediaQuery
              .of(context)
              .size
              .height - 50,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text("Sign up", style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                  ),),
                  SizedBox(height: 20,),
                  Text("Create an account, It's free", style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey[700]
                  ),),
                ],
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextField(
                    controller: _EmailController,
                    decoration: InputDecoration(
                      labelText: "Email",
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    controller: _PasswordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: " Password",
                    ),
                  ),
                  // SizedBox(height: 10),
                  // TextField(
                  //   // controller: _PasswordController,
                  //   obscureText: true,
                  //   decoration: InputDecoration(
                  //     labelText: " Password",
                  //   ),
                  // ),


                ],
              ),
              Container(
                padding: EdgeInsets.only(top: 3, left: 3),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border(
                      bottom: BorderSide(color: Colors.black),
                      top: BorderSide(color: Colors.black),
                      left: BorderSide(color: Colors.black),
                      right: BorderSide(color: Colors.black),

                    )
                ),
                child: MaterialButton(
                  minWidth: double.infinity,
                  height: 60,
                  onPressed:()=> {
                    ignupPage(context)
                  },

                  color: Colors.pinkAccent.shade100,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)
                  ),

                  child: Text("Sign Up",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18
                  ),),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder:(contex)=>LoginPage()));
                        },
                        child: Text('Already have an account? Log In'),)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// import 'package:classico/datingapplogin.dart';
// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
//  import 'package:password_strength_checker/password_strength_checker.dart';
// // import 'package:password_strength/password_strength.dart';
//
// class SignUpPage extends StatefulWidget {
//   @override
//   _SignUpPageState createState() => _SignUpPageState();
// }
//
// class _SignUpPageState extends State<SignUpPage> {
//   final _formKey = GlobalKey<FormState>();
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();
//   final TextEditingController _confirmPasswordController = TextEditingController();
//
//   bool _isLoading = false;
//   String _passwordStrength = '';
//
//   void _signUp() async {
//     if (_formKey.currentState!.validate()) {
//       setState(() {
//         _isLoading = true;
//       });
//
//       try {
//         UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
//           email: _emailController.text,
//           password: _passwordController.text,
//         );
//
//         ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Sign up successful')));
//         // Navigate to another page if needed
//       } on FirebaseAuthException catch (e) {
//         String message;
//         if (e.code == 'weak-password') {
//           message = 'The password provided is too weak.';
//         } else if (e.code == 'email-already-in-use') {
//           message = 'The account already exists for that email.';
//         } else {
//           message = e.message!;
//         }
//         ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
//       } finally {
//         setState(() {
//           _isLoading = false;
//         });
//       }
//     }
//   }
//
//   // void _checkPasswordStrength(String password) {
//   //  //  double strength = estimatePasswordStrength(password);
//   //
//   //   if (strength < 0.3) {
//   //     _passwordStrength = 'Weak';
//   //   } else if (strength < 0.7) {
//   //     _passwordStrength = 'Medium';
//   //   } else {
//   //     _passwordStrength = 'Strong';
//   //   }
//   //   setState(() {});
//   // }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Sign Up'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: _isLoading
//             ? Center(child: CircularProgressIndicator())
//             : Form(
//           key: _formKey,
//           child: ListView(
//             children: <Widget>[
//               TextFormField(
//                 controller: _emailController,
//                 decoration: InputDecoration(labelText: 'Email'),
//                 keyboardType: TextInputType.emailAddress,
//                 validator: (value) {
//                   if (value!.isEmpty) {
//                     return 'Please enter your email';
//                   }
//                   if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
//                     return 'Please enter a valid email address';
//                   }
//                   return null;
//                 },
//               ),
//               TextFormField(
//                 controller: _passwordController,
//                 decoration: InputDecoration(
//                   labelText: 'Password',
//                   suffixIcon: IconButton(
//                     icon: Icon(Icons.info_outline),
//                     onPressed: () {
//                       ScaffoldMessenger.of(context).showSnackBar(
//                         SnackBar(
//                           content: Text('Password should be at least 6 characters long.'),
//                           duration: Duration(seconds: 2),
//                         ),
//                       );
//                     },
//                   ),
//                 ),
//                 obscureText: true,
//                 onChanged: (value) {
//                   // _checkPasswordStrength(value);
//                 },
//                 validator: (value) {
//                   if (value!.isEmpty) {
//                     return 'Please enter your password';
//                   }
//                   if (value.length < 6) {
//                     return 'Password must be at least 6 characters long';
//                   }
//                   return null;
//                 },
//               ),
//               // Text(
//               //   'Password Strength: $_passwordStrength',
//               //   style: TextStyle(color: _passwordStrength == 'Weak' ? Colors.red : _passwordStrength == 'Medium' ? Colors.orange : Colors.green),
//               // ),
//               TextFormField(
//                 controller: _confirmPasswordController,
//                 decoration: InputDecoration(labelText: 'Confirm Password'),
//                 obscureText: true,
//                 validator: (value) {
//                   if (value!.isEmpty) {
//                     return 'Please confirm your password';
//                   }
//                   if (value != _passwordController.text) {
//                     return 'Passwords do not match';
//                   }
//                   return null;
//                 },
//               ),
//               SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: _signUp,
//                 child: Text('Sign Up'),
//               ),
//               TextButton(
//                 onPressed: () {
//                   Navigator.push(context, MaterialPageRoute(builder:(contex)=>LoginPage()));
//                 },
//                 child: Text('Already have an account? Sign In'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
