import 'package:classico/app/Appbottombar.dart';
import 'package:classico/appsignin.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {


  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _EmailController = TextEditingController();
  final TextEditingController _PasswordController = TextEditingController();

  Future<void> _Signup()async{
    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(email: _EmailController.text, password: _PasswordController.text);
      print('user Signed Up : ${userCredential}');
    } catch (e){
      print('Failed to signup : $e');
    }
  }

  Future<void> _login(BuildContext context) async{
    try{
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(email: _EmailController.text, password: _PasswordController.text);
      Navigator.push(context , MaterialPageRoute(builder: (context)=>HomeScreen()));
    }catch(e){
      print('Faild to login : $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text("Login", style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                      ),),
                      SizedBox(height: 20,),
                      Text("Login to your account", style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey[700]
                      ),),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child:
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
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Container(
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
                        onPressed: () {
                          _login(context);
                        },
                        color: Colors.pinkAccent.shade100,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)
                        ),
                        child: Text("Login", style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18
                        ),),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
              // ElevatedButton(
              //   onPressed: LoginPage(),
              //   child: Text('Sign Up'),
              // ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder:(contex)=>ignupPage()));
                        },
                        child: Text('Does not have an account? Sign In'),)
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



//
// import 'package:classico/menu.dart';
// import 'package:flutter/material.dart';
//
// class LoginPage extends StatelessWidget {
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
//         decoration: BoxDecoration(
//           image: DecorationImage(
//               image: AssetImage("signin3.jpeg"),
//               fit: BoxFit.fill
//           ),
//         ),
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
//                         color: Color(0xff0072ff),
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
//
//                       TextButton(
//                         onPressed: () {
//                           Navigator.push(context, MaterialPageRoute(builder:(contex)=>SignupPage()));
//                         },
//                         child: Text('Does not have an account? Sign In'),
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
