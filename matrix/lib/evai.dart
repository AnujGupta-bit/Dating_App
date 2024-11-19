// // import 'package:flutter/material.dart';
// //
// //
// //
// // class HobbiesSelectionApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Hobbies Selection',
// //       theme: ThemeData(
// //         primarySwatch: Colors.blue,
// //       ),
// //       home: HobbiesSelectionScreen(),
// //     );
// //   }
// // }
// //
// // class HobbiesSelectionScreen extends StatefulWidget {
// //   @override
// //   _HobbiesSelectionScreenState createState() => _HobbiesSelectionScreenState();
// // }
// //
// // class _HobbiesSelectionScreenState extends State<HobbiesSelectionScreen> {
// //   final List<String> hobbies = [
// //     'Reading',
// //     'Traveling',
// //     'Cooking',
// //     'Sports',
// //     'Music',
// //     'Movies',
// //     'Gaming',
// //     'Photography',
// //     'Art',
// //     'Dancing',
// //   ];
// //
// //   final Map<String, bool> selectedHobbies = {};
// //
// //   @override
// //   void initState() {
// //     super.initState();
// //     for (var hobby in hobbies) {
// //       selectedHobbies[hobby] = false;
// //     }
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Select Your Hobbies & Interests'),
// //       ),
// //       body: ListView(
// //         children: hobbies.map((hobby) {
// //           return CheckboxListTile(
// //             title: Text(hobby),
// //             value: selectedHobbies[hobby],
// //             onChanged: (bool? value) {
// //               setState(() {
// //                 selectedHobbies[hobby] = value!;
// //               });
// //             },
// //           );
// //         }).toList(),
// //       ),
// //       floatingActionButton: FloatingActionButton(
// //         onPressed: _showSelectedHobbies,
// //         child: Icon(Icons.check),
// //       ),
// //     );
// //   }
// //
// //   void _showSelectedHobbies() {
// //     final selected = selectedHobbies.entries
// //         .where((entry) => entry.value)
// //         .map((entry) => entry.key)
// //         .toList();
// //     showDialog(
// //       context: context,
// //       builder: (BuildContext context) {
// //         return AlertDialog(
// //           title: Text('Selected Hobbies & Interests'),
// //           content: Text(selected.isNotEmpty
// //               ? selected.join(', ')
// //               : 'No hobbies selected.'),
// //           actions: <Widget>[
// //             TextButton(
// //               child: Text('OK'),
// //               onPressed: () {
// //                 Navigator.of(context).pop();
// //               },
// //             ),
// //           ],
// //         );
// //       },
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
//
// class HobbiesSelectionApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (_) => HobbiesSelectionModel(),
//       child: MaterialApp(
//         title: 'Hobbies Selection',
//         theme: ThemeData(
//           primarySwatch: Colors.pink,
//           visualDensity: VisualDensity.adaptivePlatformDensity,
//         ),
//         home: HobbiesSelectionScreen(),
//       ),
//     );
//   }
// }
//
// class HobbiesSelectionModel extends ChangeNotifier {
//   final List<Hobby> hobbies = [
//     Hobby(name: 'Reading', image: 'assets/reading.png'),
//     Hobby(name: 'Traveling', image: 'assets/traveling.png'),
//     Hobby(name: 'Cooking', image: 'assets/cooking.png'),
//     Hobby(name: 'Sports', image: 'assets/sports.png'),
//     Hobby(name: 'Music', image: 'assets/music.png'),
//     Hobby(name: 'Movies', image: 'assets/movies.png'),
//     Hobby(name: 'Gaming', image: 'assets/gaming.png'),
//     Hobby(name: 'Photography', image: 'assets/photography.png'),
//     Hobby(name: 'Art', image: 'assets/art.png'),
//     Hobby(name: 'Dancing', image: 'assets/dancing.png'),
//   ];
//
//   void toggleHobbySelection(Hobby hobby) {
//     hobby.isSelected = !hobby.isSelected;
//     notifyListeners();
//   }
//
//   List<Hobby> get selectedHobbies =>
//       hobbies.where((hobby) => hobby.isSelected).toList();
// }
//
// class Hobby {
//   final String name;
//   final String image;
//   bool isSelected;
//
//   Hobby({
//     required this.name,
//     required this.image,
//     this.isSelected = false,
//   });
// }
//
// class HobbiesSelectionScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final hobbiesSelectionModel = Provider.of<HobbiesSelectionModel>(context);
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Select Your Hobbies & Interests'),
//       ),
//       body: GridView.builder(
//         padding: const EdgeInsets.all(10.0),
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//           childAspectRatio: 3 / 2,
//           crossAxisSpacing: 10,
//           mainAxisSpacing: 10,
//         ),
//         itemCount: hobbiesSelectionModel.hobbies.length,
//         itemBuilder: (ctx, i) => HobbyItem(hobbiesSelectionModel.hobbies[i]),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () => _showSelectedHobbies(context, hobbiesSelectionModel),
//         child: Icon(Icons.check),
//       ),
//     );
//   }
//
//   void _showSelectedHobbies(
//       BuildContext context, HobbiesSelectionModel model) {
//     final selected = model.selectedHobbies.map((hobby) => hobby.name).toList();
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: Text('Selected Hobbies & Interests'),
//           content: Text(selected.isNotEmpty
//               ? selected.join(', ')
//               : 'No hobbies selected.'),
//           actions: <Widget>[
//             TextButton(
//               child: Text('OK'),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
//
// class HobbyItem extends StatelessWidget {
//   final Hobby hobby;
//
//   HobbyItem(this.hobby);
//
//   @override
//   Widget build(BuildContext context) {
//     final model = Provider.of<HobbiesSelectionModel>(context, listen: false);
//
//     return GestureDetector(
//       onTap: () => model.toggleHobbySelection(hobby),
//       child: GridTile(
//         child: Image.asset(
//           hobby.image,
//           fit: BoxFit.cover,
//         ),
//         footer: GridTileBar(
//           backgroundColor: Colors.black87,
//           title: Text(
//             hobby.name,
//             textAlign: TextAlign.center,
//           ),
//           leading: Icon(
//             hobby.isSelected ? Icons.check_box : Icons.check_box_outline_blank,
//             color:
//             Colors.teal,
//             // color: Theme.of(context).accentColor,
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage('assets/profile.jpg'),
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
