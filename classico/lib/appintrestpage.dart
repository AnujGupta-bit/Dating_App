import 'package:flutter/material.dart';
import 'package:flutter_tags/flutter_tags.dart';

// void main() {
//   runApp(DatingApp());
// }

// class DatingApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Dating App',
//       theme: ThemeData(
//         primarySwatch: Colors.pink,
//       ),
//       home: UserInterestsPage(),
//     );
//   }
// }

class UserInterestsPage extends StatefulWidget {

  @override
  _UserInterestsPageState createState() => _UserInterestsPageState();
}

class _UserInterestsPageState extends State<UserInterestsPage> {
  final _formKey = GlobalKey<FormState>();
  final List<String> _selectedInterests = [];
  final TextEditingController _hobbiesController = TextEditingController();

  final List<String> _availableInterests = [
    "Music",
    "Movies",
    "Sports",
    "Travel",
    "Reading",
    "Cooking",
    "Gaming",
    "Fitness",
    "Art",
    "Photography",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tell us about your interests"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              Text(
                "Select Your Interests",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Tags(
                itemCount: _availableInterests.length,
                itemBuilder: (int index) {
                  final interest = _availableInterests[index];
                  return ItemTags(
                    index: index,
                    title: interest,
                    active: _selectedInterests.contains(interest),
                    onPressed: (item) {
                      setState(() {
                        if (_selectedInterests.contains(interest)) {
                          _selectedInterests.remove(interest);
                        } else {
                          _selectedInterests.add(interest);
                        }
                      });
                    },
                  );
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _hobbiesController,
                decoration: InputDecoration(
                  labelText: "Other Hobbies",
                  hintText: "Enter your hobbies here",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your hobbies';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _showSummary();
                  }
                },
                child: Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showSummary() {
    final interests = _selectedInterests.join(", ");
    final hobbies = _hobbiesController.text;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Your Interests and Hobbies"),
          content: Text("Interests: $interests\nHobbies: $hobbies"),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Close"),
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    _hobbiesController.dispose();
    super.dispose();
  }
}
