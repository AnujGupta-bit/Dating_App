// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:matcher/matcher.dart';
// class pp extends StatefulWidget {
//
//
//   @override
//   State<pp> createState() => _ppState();
// }
//
// class _ppState extends State<pp> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(appBar: AppBar(
//
//     ),
//       body: StreamBuilder(
//         stream: FirebaseFirestore.instance.collection("users").snapshots(),
//         builder: (BuildContext context , AsyncSnapshot< QuerySnapshot>snapshot)
//     {
//
//     if(snapshot.hasError)
//     {
//     return Center(
//     child: Text(" Error : ${snapshot.error}"),
//
//     );
//     }
//     if(snapshot.connectionState== ConnectionState.waiting)
//     {
//     return Center(
//     child: CircularProgressIndicator(),
//     );
//     }
//     return ListView.builder(
//     itemCount: snapshot.data!.docs.length,
//     itemBuilder: (BuildContext context , int index){
//     DocumentSnapshot doc = snapshot.data!.docs[index];
//     return ListTile(
//     title: Text(doc ["name"]),
//
//     );
//     },
//     );
//     }
//
//
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
class pp extends StatefulWidget {


  @override
  State<pp> createState() => _ppState();
}

class _ppState extends State<pp> {
  Color cl1 = Colors.yellowAccent;
  Color cl2 = Colors.black12;
  bool st = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(

    ),
      body:  Column(
    children: [
      Stack(
        children: [
          Container(
            height: 500,
            width: 200,
            color: Colors.redAccent,

          ),
          Positioned(
            left: 1000,
            right: 400,
            child: Container(
              height: 600
              ,
              width: 10,
              color: Colors.yellowAccent,

            ),
          )
        ],
      )
    ],
    )
    );
  }
}

