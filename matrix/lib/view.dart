import 'dart:js_interop_unsafe';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
class view extends StatefulWidget {


  @override
  State<view> createState() => _viewState();
}

class _viewState extends State<view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text(" Database Viewer"),
      backgroundColor: Colors.orangeAccent,
    ),
    body: StreamBuilder(
      stream: FirebaseFirestore.instance.collection("users").snapshots(),
      builder: ( BuildContext context , AsyncSnapshot<QuerySnapshot>snapshot){
        if(snapshot.hasError)
        {
          return Center(
            child:  Text(" Error: ${snapshot.error}"),
          );
        }
        if(snapshot.connectionState == ConnectionState.waiting)
          {
            return Center(
              child:  CircularProgressIndicator(),
            );
          }
        return ListView.builder(
          itemCount:  snapshot.data!.docs.length,
          itemBuilder: (BuildContext context, int index){
            DocumentSnapshot doc = snapshot.data!.docs[index];
            return ListTile(
              title: Text(doc['name']),
              subtitle:  Text(doc['Address']),
            );
          },
        );
      },
    ),
    );
  }
}