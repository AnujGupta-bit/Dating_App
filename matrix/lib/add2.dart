

import 'package:flutter/material.dart';
class mul2nums extends StatefulWidget {


  @override
  State<mul2nums> createState() => _mul2nums();
}

class _mul2nums extends State<mul2nums> {

  TextEditingController t1=TextEditingController();
  TextEditingController t2=TextEditingController();

  int  a=0,b=0,c=0;
  var ans="";
  void Multiply(){
    setState(() {
      a=int.parse(t1.text);
      b=int.parse(t2.text);
      c=a*b;
      ans="answer is "+c.toString();

    });
  }
  void division(){
    setState(() {
      a=int.parse(t1.text);
      b=int.parse(t2.text);
      c=(a~/b);
      ans="answer is "+c.toString();

    });
   }
  void Minus(){
    setState(() {
      a=int.parse(t1.text);
      b=int.parse(t2.text);
      c=a-b;
      ans="answer is "+c.toString();

    });
  }
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
        title: Text("Multiply"),
        centerTitle: true,
        backgroundColor: Colors.brown,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(onPressed: (){
                    Multiply();
                  }, child: Text("Sum")),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(onPressed: (){
                    sum();
                  }, child: Text("Multiply")),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(onPressed: (){
                    Minus();
                  }, child: Text("Minus")),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(onPressed: (){
                    division();
                  }, child: Text("Divide")),
                ),
              ],
            ),

            Text("$ans")
          ],
        ),
      ),


    );
  }
}
