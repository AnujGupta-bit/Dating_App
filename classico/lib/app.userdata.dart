import 'package:classico/datingapplogin.dart';
import 'package:classico/hobbies.dart';
import 'package:classico/hobbies0.dart';
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
  TextEditingController a3 =TextEditingController();
  TextEditingController a4 =TextEditingController();
  TextEditingController a5 =TextEditingController();

  String s="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       //  leading: Icon(Icons.a
       //  ),
       //
       // BoxDecoration(
       //        gradient:  LinearGradient(
       //          colors: [
       //            Colors.redAccent,
       //            Colors.black,
       //          ],
       //          begin: Alignment.topCenter,
       //         // end: Alignment.bottomCenter,
       //
       //        )
       //      ),
        backgroundColor: Colors.pinkAccent,
        title: Text(" Create a Dating Profile  "),
centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
           image: AssetImage("heartimage.png"),
            fit: BoxFit.fill,
          )
        ),
        // color: Colors.white,
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,

            children: [
              SizedBox(height: 55,),
              Padding(
                padding: const EdgeInsets.only(left: 10,right:20),
                child: TextField(

                  controller: a1,
                  decoration: InputDecoration(
                    label: Text(" Enter your Name"),enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.pinkAccent)
                  ),
                    // hintText: AutofillHints.name,
                  ),
                ),
              ),

    Container(
      child:Row(
        children: [
      SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.only(left: 0,right: 0),
                child: TextField(

                  controller: a2,
                  decoration: InputDecoration(
                  //   focusedBorder: OutlineInputBorder(
                  //       borderSide: BorderSide(color: Colors.white),),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.pinkAccent)
                    ),
                    label: Text(" Enter your Age"),
                    // hintText: AutofillHints.name,

                  ),
                ),
              ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.only(left: 0,right: 0),
                child: TextField(

                  controller: a3,
                  decoration: InputDecoration(
                    label: Text(" Enter your Residence"),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.pinkAccent)
                  )
                    // hintText: AutofillHints.name,
                  ),
                ),
              ),
      ],
      ),
    ),
              SizedBox(height: 25,),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(

                  controller: a4,
                  decoration: InputDecoration(
                    label: Text(" Enter your Age"),enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.pinkAccent)
                  ),
                    // hintText: AutofillHints.name,
                  ),
                ),
              ),
              SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 20),
                child: TextField(

                  controller: a5,
                  decoration: InputDecoration(
                    label: Text(" Enter your Interest"),enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.pinkAccent)
                  ),
                    // hintText: AutofillHints.name,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(18.0),
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder:(contex)=>QuestionPage()));
                  CollectionReference c = FirebaseFirestore.instance.collection("userdata");
                  c.add(
                      {
                        "Name":a1.text,
                        "Age":a2.text,
                        "Gender":a3.text,
                        "Last Name":a4.text,
                        "Residence":a5.text,

                      }
                  ).then((onValue)=>{
                    setState(() {
                      a1.text="";
                      a2.text="";
                      a3.text="";
                      a4.text="";
                      a5.text="";
                      s="data saved";
                    })




                  });
                }, child: Text('Next',style: TextStyle(fontFamily: AutofillHints.impp, fontStyle: FontStyle.italic, color: Colors.pink),)),
              ),
              Text("$s")

            ],
          ),
        ),
      ),
    );
  }
}

