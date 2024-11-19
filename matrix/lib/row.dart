// // import 'package:flutter/material.dart';
// // class rowless extends StatefulWidget {
// //
// //
// //   @override
// //   State<rowless> createState() => _rowlessState();
// // }
// //
// // class _rowlessState extends State<rowless> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title:  Text (" Row Practice"),
// //         backgroundColor: Colors.tealAccent,
// //       ),
// //       body: Container(
// //         child: Row(
// //           children: [
// //             ElevatedButton(onPressed: (){
// //
// //
// //
// //             },
// //               child : Text("click"),
// //
// //
// //             ),
// //             ElevatedButton(onPressed: (){
// //
// //
// //
// //             },
// //               child : Text("click"),
// //
// //
// //             ),
// //           ],
// //
// //         ),
// //       ),
// //     );
// //   }
// // }
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
//
// // void main() {
// //   runApp(MyApp());
// // }
//
// // class intrest extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Multiple Option Selector',
// //       theme: ThemeData(
// //         primarySwatch: Colors.blue,
// //       ),
// //       home: InterestSelectionPage(),
// //     );
// //   }
// // }
//
// class InterestSelectionPage extends StatefulWidget {
//   @override
//   _InterestSelectionPageState createState() => _InterestSelectionPageState();
// }
//
// class _InterestSelectionPageState extends State<InterestSelectionPage> {
//   // List of available interests
//   final List<String> _interests = [
//     'Sports',
//     'Music',
//     'Travel',
//     'Books',
//     'Movies',
//     'Technology',
//     'Food',
//   ];
//
//   // Track selected interests
//   Set<String> _selectedInterests = {};
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Select Your Interests'
//         "lets find ur Match "
//         ),
//         backgroundColor: Colors.pinkAccent,
//
//       ),
//       body: ListView(
//         children: _interests.map((interest) {
//           return CheckboxListTile(
//             title: Text(interest),
//             value: _selectedInterests.contains(interest),
//             onChanged: (bool? selected) {
//               setState(() {
//                 if (selected == true) {
//                   _selectedInterests.add(interest);
//                 } else {
//                   _selectedInterests.remove(interest);
//                 }
//               });
//             },
//           );
//         }).toList(),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           // Print the selected interests to the console or handle it as needed
//           print('Selected Interests: $_selectedInterests');
//           CollectionReference  c = FirebaseFirestore.instance.collection("users");
//           _selectedInterests = _selectedInterests;
//         },
//         child: Icon(Icons.check),
//       ),
//     );
//   }
// }
//
import 'package:flutter/material.dart';

import 'database.dart';
import 'database2.dart';

class MyHomePage extends StatelessWidget {
  final FirebaseService _firebaseService = FirebaseService();

  void _saveData() {
    List<Interest> interests = [
      Interest(name: 'Sports'),
      // Interest(name: 'Music'),
      // Interest(name: 'Travel'),
    ];
    _firebaseService.saveInterests(interests);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Firebase Save Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _saveData,
          child: Text('Save Interests to Firebase'),
        ),
      ),
    );
  }
}

