import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_database/firebase_database.dart';
import 'database.dart';

class FirebaseService {
  final CollectionReference c = FirebaseFirestore.instance.collection("name");

  void saveInterests(List<Interest> interests) {
    var interest;
    for ( interest in interests) {
      c.add(
   {
     c.add(interests)
   }
  );
    }

    }

   set(Map<String, dynamic> map) {}
  }

