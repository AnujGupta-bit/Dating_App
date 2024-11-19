import 'package:flutter/material.dart';
import 'dbfile.dart';
import 'notes.dart';
// import 'package:_flutterfire_internals/src/';
// import 'plugins.flutter.io/path_provider';

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: NotesListScreen(),
//     );
//   }
// }

class NotesListScreen extends StatefulWidget {
  @override
  _NotesListScreenState createState() => _NotesListScreenState();
}

class _NotesListScreenState extends State<NotesListScreen> {
  final DBHelper dbHelper = DBHelper();
  final TextEditingController titleController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SQLite Notes'),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextField(
                  controller: titleController,
                  decoration: InputDecoration(labelText: 'Title'),
                ),
                TextField(
                  controller: ageController,
                  decoration: InputDecoration(labelText: 'Age'),
                  keyboardType: TextInputType.number,
                ),
                TextField(
                  controller: descriptionController,
                  decoration: InputDecoration(labelText: 'Description'),
                ),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(labelText: 'Email'),
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _insertNote,
                  child: Text('Insert Note'),
                ),
              ],
            ),
          ),
          Expanded(
            child: FutureBuilder<List<NotesModel>>(
              future: _getNotes(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(child: Text('Error: ${snapshot.error}'));
                } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                  return Center(child: Text('No Notes Found'));
                } else {
                  return ListView(
                    children: snapshot.data!.map((note) {
                      return ListTile(
                        title: Text(note.title),
                        subtitle: Text('Age: ${note.age}, Description: ${note.description}, Email: ${note.email}'),
                      );
                    }).toList(),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  void _insertNote() async {
    if (titleController.text.isEmpty || ageController.text.isEmpty || descriptionController.text.isEmpty || emailController.text.isEmpty) {
      return;
    }

    NotesModel newNote = NotesModel(
      title: titleController.text,
      age: int.parse(ageController.text),
      description: descriptionController.text,
      email: emailController.text,
    );

    await dbHelper.insert(newNote);
    setState(() {});

    titleController.clear();
    ageController.clear();
    descriptionController.clear();
    emailController.clear();
  }

  Future<List<NotesModel>> _getNotes() async {
    return await dbHelper.getCartListWithUserId();
  }
}
// cupertino_icons: ^1.0.6
// sqflite: any
// path_provider: any
// intl: ^0.19.0
// path: any
// cloud_firestore: ^5.1.0
// firebase_auth: ^5.1.2
// firebase_core: ^3.2.0
