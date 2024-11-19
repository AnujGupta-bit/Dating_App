import 'package:flutter/material.dart';
class add2nums extends StatefulWidget {


  @override
  State<add2nums> createState() => _add2numsState();
}

class _add2numsState extends State<add2nums> {

  TextEditingController t1=TextEditingController();
  TextEditingController t2=TextEditingController();

  int a=0,b=0,c=0;
  String ans="";
  void sum(){
    setState(() {
      a=int.parse(t1.text);
      b=int.parse(t2.text);
      c=a+b;
      ans="answer is "+c.toString();

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add"),
        centerTitle: true,
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),

      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextField(
                controller: t1,
                decoration: InputDecoration(
                  label: Text("Enter First value"),
                  hintText: "0"
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextField(
                controller: t2,
                decoration: InputDecoration(
                    label: Text("Enter Second value"),
                    hintText: "0"
                ),
              ),
            ),
            ElevatedButton(onPressed: (){
              sum();
            }, child: Text("Sum")),
            Text("$ans")
          ],
        ),
      ),


    );
  }
}
