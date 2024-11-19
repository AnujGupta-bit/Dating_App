import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:path_provider/path_provider.dart';
import 'package:google_sign_in/google_sign_in.dart';
googleLogin() async {
  print("googleLogin method Called");
  GoogleSignIn _googleSignIn = GoogleSignIn();
  try {
    var reslut = await _googleSignIn.signIn();
    if (reslut == null) {
      return;
    }

    final userData = await reslut.authentication;
    final credential = GoogleAuthProvider.credential(
        accessToken: userData.accessToken, idToken: userData.idToken);
    var finalResult =
    await FirebaseAuth.instance.signInWithCredential(credential);
    print("Result $reslut");
    print(reslut.displayName);
    print(reslut.email);
    print(reslut.photoUrl);

  } catch (error) {
    print(error);
  }
}

Future<void> logout() async {
  await GoogleSignIn().disconnect();
  FirebaseAuth.instance.signOut();
}
