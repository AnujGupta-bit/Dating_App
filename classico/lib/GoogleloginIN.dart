// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:classico/firstapp1 lovematch.dart';
// import 'package:path/path.dart';
//
// class LoginScreen extends StatelessWidget {
//   const LoginScreen({Key? key}) : super(key: key);
//
//   googleLogin(BuildContext context) async {
//     print("googleLogin method Called");
//
//     GoogleSignIn _googleSignIn = GoogleSignIn();
//     try {
//       var reslut = await _googleSignIn.signIn();
//       if (reslut == null) {
//         return;
//       }
//
//       final userData = await reslut.authentication;
//       final credential = GoogleAuthProvider.credential(
//           accessToken: userData.accessToken, idToken: userData.idToken);
//       var finalResult =
//       await FirebaseAuth.instance.signInWithCredential(credential);
//       print("Result $reslut");
//       print(reslut.displayName);
//       print(reslut.email);
//       print(reslut.photoUrl);
//       Navigator.push(context,MaterialPageRoute(builder: (context)=>wel(user: reslut.displayName.toString())));
//     } catch (error) {
//       print(error);
//     }
//   }
//
//   Future<void> logout() async {
//     await GoogleSignIn().disconnect();
//     FirebaseAuth.instance.signOut();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Login Screen'),
//         actions: [
//           TextButton(
//             onPressed: logout,
//             child: const Text(
//               'LogOut',
//               style: TextStyle(
//                 color: Colors.black,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           )
//         ],
//       ),
//       body: Center(
//         child: ElevatedButton(
//             child: const Text('Google Login'), onPressed: (){
//           googleLogin(context);
//         }),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInPage extends StatefulWidget {
  @override
  _GoogleSignInPageState createState() => _GoogleSignInPageState();
}

class _GoogleSignInPageState extends State<GoogleSignInPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  bool _isSigningIn = false;

  Future<void> _signInWithGoogle() async {
    setState(() {
      _isSigningIn = true;
    });

    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        setState(() {
          _isSigningIn = false;
        });
        return;
      }

      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final UserCredential userCredential = await _auth.signInWithCredential(credential);
      final User? user = userCredential.user;

      setState(() {
        _isSigningIn = false;
      });

      if (user != null) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomePage(user: user)),
        );
      }
    } catch (e) {
      setState(() {
        _isSigningIn = false;
      });
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Google Sign-In'),
      ),
      body: Center(
        child: _isSigningIn
            ? CircularProgressIndicator()
            : ElevatedButton(
          onPressed: _signInWithGoogle,
          child: Text('Sign in with Google'),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final User user;

  HomePage({required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              GoogleSignIn().signOut();
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => GoogleSignInPage()),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Text('Hello, ${user.displayName}'),
      ),
    );
  }
}
