import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
class page extends StatefulWidget {


  @override
  State<page> createState() => _pageState();
}

class _pageState extends State<page> {
  TextEditingController a1 =TextEditingController();
  TextEditingController a2 =TextEditingController();
  String s="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.app_registration
        ),
        backgroundColor: Colors.teal,
        title: Text(" Registration Page "),

      ),
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,

          children: [
            SizedBox(height: 55,),
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 40),
              child: TextField(

                controller: a1,
                decoration: InputDecoration(
                  label: Text(" Enter your Name"),
                  hintText: AutofillHints.name,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: a2,
                decoration: InputDecoration(
                  label: Text(" Enter your Address"),
                  hintText: AutofillHints.addressCity,
                ),
              ),
            ),
            SizedBox(height: 30,),

           ElevatedButton(onPressed: (){
             CollectionReference c = FirebaseFirestore.instance.collection("users");
             c.add(
               {
                 "name":a1.text,
                 "Address":a2.text,

               }
             ).then((onValue)=>{
               setState(() {
             a1.text="";
             a2.text="";
             s="data saved";
               })




             });
           }, child: Text('Submit')),
            Text("$s")

          ],
        ),
      ),
    );
  }
}

