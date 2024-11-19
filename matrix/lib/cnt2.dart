import 'package:flutter/material.dart';

class rc extends StatefulWidget {
  const rc({super.key});

  @override
  State<rc> createState() => _rcState();
}

class _rcState extends State<rc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.blueGrey,
        child:Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(height: 150,width: 150,color: Colors.red,),
                ),
                Padding(
                     padding: const EdgeInsets.all(8.0),
                  child: Container(height: 150,width: 150,color: Colors.teal,),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(height: 150,width: 150,color: Colors.pinkAccent,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(height: 150,width: 150,color: Colors.black45,),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(height: 150,width: 150,color: Colors.amber,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(height: 150,width: 150,color: Colors.black45,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(height: 150,width: 150,color: Colors.teal,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(height: 150,width: 150,color: Colors.yellow,),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(height: 150,width: 150,color: Colors.red,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(height: 150,width: 150,color: Colors.yellow,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(height: 150,width: 150,color: Colors.pinkAccent,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(height: 150,width: 150,color: Colors.cyan,),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
