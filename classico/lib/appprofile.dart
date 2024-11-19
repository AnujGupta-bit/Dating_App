import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: GoogleFonts.pacifico(
            textStyle: TextStyle(
                fontSize: 30 , fontWeight: FontWeight.w100 , color: Colors.pink.shade300
            ),
          ),
        ),
        leading: Icon(Icons.home , color: Colors.pink,),
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Profile Header
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 200,
                  color: Colors.pinkAccent,
                ),
                SvgPicture.asset(
                  'assets/fm.svg',
                  // semanticsLabel: 'My SVG Image',
                  height: 100,
                  width: 70,
                ),

                Positioned(
                  bottom: 20,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Edit Profile'),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            // User Info
            Text(
              'Anuj, 19',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text('Location: Gwalior, MP'),
            SizedBox(height: 20),
            // About Section
            Container(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About Me',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'I am a software developer who loves to travel and explore new cultures. Passionate about technology and innovation.',
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            // Interactive Elements
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(5, (index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      // child: Image.asset('wallpaper.jpg', width: 100, fit: BoxFit.cover),
                    ),
                  );
                }),
              ),
            ),
            SizedBox(height: 20),
            // Interaction Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Message'
                    ,
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.pink),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Super Like',style: TextStyle(fontWeight: FontWeight.bold, color: Colors.pink)),
                ),
              ],
            ),
            SizedBox(height: 20),
            // Match Statistics
            Container(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Match Stats',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text('Compatibility Score: 85%'),
                  Text('Recent Matches: 5'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// import 'dart:io';

//
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:google_fonts/google_fonts.dart';
//
//
// class ProfilePage extends StatefulWidget {
//   @override
//   _ProfilePageState createState() => _ProfilePageState();
// }
//
// class _ProfilePageState extends State<ProfilePage> {
//   int select = 0;
//   void selectchange(int v){
//     setState(() {
//       select = v ;
//     });
//   }
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;
//   final FirebaseStorage _storage = FirebaseStorage.instance;
//   final ImagePicker _picker = ImagePicker();
//
//   String? _imageUrl;
//
//   Future<void> _pickImage() async {
//     final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
//     if (pickedFile != null) {
//       final ref = _storage.ref().child('profile_pics').child('${_auth.currentUser!.uid}.jpg');
//       await ref.putFile(File(pickedFile.path));
//       final url = await ref.getDownloadURL();
//       setState(() {
//         _imageUrl = url;
//       });
//       await _firestore.collection('users').doc(_auth.currentUser!.uid).update({
//         'profilePicture': _imageUrl,
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Profile',
//           style: GoogleFonts.pacifico(
//             textStyle: TextStyle(
//                 fontSize: 30 , fontWeight: FontWeight.w100 , color: Colors.pink.shade300
//             ),
//           ),
//         ),
//        // leading: Icon(Icons.home),
//       ),
//       drawer: Drawer(
//         child: ListView(
//           children: [
//             DrawerHeader(
//                 margin: EdgeInsets.all(0.0),
//
//                 child : Center(
//                     child : Column(
//                         mainAxisAlignment : MainAxisAlignment.center,
//                         children : [
//                           // Image(image: AssetImage("wallpaper.jpg")),
//                           Text("main menu "),
//
//                         ]
//                     )
//                 )
//             ),
//
//             ListTile(
//               selected:  select ==0 ,
//               selectedTileColor:Colors.red,
//               leading: Icon(Icons.home),
//               title: Text(" home"),
//               trailing: Icon(Icons.info),
//               onTap: (){
//                 print("first");
//                 selectchange(0);
//               },
//             ),
//             ListTile(
//               selected:  select ==3 ,
//               selectedTileColor:Colors.red,
//               leading: Icon(Icons.home),
//               title: Text(" home"),
//               trailing: Icon(Icons.info),
//               onTap: (){
//                 print("first");
//                 selectchange(3);
//               },
//             ),
//             ListTile(
//               selected:  select ==2,
//               selectedTileColor:Colors.red,
//               leading: Icon(Icons.home),
//               title: Text(" home"),
//               trailing: Icon(Icons.info),
//               onTap: (){
//                 print("first");
//                 selectchange(2);
//               },
//             ),
//             ListTile(
//               selected:  select ==1 ,
//               selectedTileColor:Colors.red,
//               leading: Icon(Icons.home),
//               title: Text(" home"),
//               trailing: Icon(Icons.info),
//               onTap: (){
//                 print("first");
//                 selectchange(1);
//               },
//             ),
//           ],
//         ),
//       ),
//       body: Column(
//         children: [
//           SizedBox(height: 20),
//           _imageUrl ==   ImageSource('assets//heartimageremovebgpreview.png')
//               ? CircleAvatar(radius: 50, child: Icon(Icons.person, size: 50))
//               : CircleAvatar(radius: 50, backgroundImage:AssetImage("assets//heartimageremovebgpreview.png")),
//           SizedBox(height: 20),
//           ElevatedButton(
//             onPressed: _pickImage,
//             child: Text(
//               'Come on Let the World See YOU',
//               style: GoogleFonts.arvo(
//                 textStyle: TextStyle(
//                     fontSize: 22 , fontWeight: FontWeight.w100 , color: Colors.pink.shade300
//                 ),
//               ),
//             ),
//           ),
//           // Additional profile fields and update logic here
//         ],
//       ),
//     );
//   }
// }
// // Come on Let the World See YOU



