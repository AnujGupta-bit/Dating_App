// import 'package:flutter/material.dart';
// class repeat extends StatefulWidget {
//   const repeat({super.key});
//
//   @override
//   State<repeat> createState() => _repeatState();
// }
//
// class _repeatState extends State<repeat> {
//   TextEditingController t1= TextEditingController();
//   TextEditingController t2 = TextEditingController();
//   int  a=0,b=0,c=0;
//   var ans ="";
//   void sum(){
//     setState(() {
//       a=int.parse(t1.text);
//       b=int.parse(t2.text);
//       c=a*b;
//       ans="answer is "+c.toString();
//
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(appBar: AppBar(
//       backgroundColor: Colors.teal,
//       foregroundColor: Colors.black,
//       centerTitle: true,
//       title: Text("calci" , style: TextStyle(fontStyle : FontStyle.italic , color: Colors.white10 ),),
//     ),
//   body: Container(
//     child: Column(
//       children: [
//
//           Padding(
//             padding: const EdgeInsets.all(18.0),
//            child: TextField(
//              controller: t1,
//              decoration: InputDecoration(
//                label: Text("enter your first value"),
//                hintText: "0",
//              ),
//            ),
//           ),
//         Padding(
//           padding: const EdgeInsets.all(18.0),
//           child: TextField(
//             controller: t2,
//             decoration: InputDecoration(
//               label: Text("enter your first value"),
//               hintText: "0",
//             ),
//           ),
//         ),
//         Center(
//           child: Row(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(18.0),
//                child: ElevatedButton(onPressed: (){
//                  sum();
//                },
//                child: Text("for sum click here"),),
//               ),
//             ],
//           ),
//         ),
//         Row(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(18.0),
//               child: ElevatedButton(onPressed: (){
//                 sum();
//               },
//                 child: Text("for sum click here"),),
//               child : T
//             ),
//           ],
//         ),
//
//       ],
//     ),
//   ),
//
//     );
//
//   }
// }
