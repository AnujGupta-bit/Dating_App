import 'package:classico/app/Appbottombar.dart';
import 'package:classico/location.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ProfileSetupPage extends StatefulWidget {
   @override
  _ProfileSetupPageState createState() => _ProfileSetupPageState();
}

class _ProfileSetupPageState extends State<ProfileSetupPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();

  File? _profileImage;
  String? _selectedBitmoji;

  final List<String> _bitmojis = [
    "😊",
    "😎",
    "😍",
    "🤓",
    "🥰",
    "😇",
    "😈",
    "🤠",
    "🎉",
    "🌟"
  ];

  // Image picker
  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      setState(() {
        _profileImage = File(image.path);
      });
    }
  }

  void _submitProfile() {
    if (_formKey.currentState!.validate() && _profileImage != null && _selectedBitmoji != null) {
      // Perform actions like sending data to backend
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Profile setup complete! 🎉")),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Please complete all fields!")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("What's in a Name!!" , style:  GoogleFonts.paprika(textStyle: TextStyle(
          fontSize: 24 , fontWeight: FontWeight.bold
        )),),
        centerTitle: true,
        backgroundColor: Color(0xffec008c),
      ),
      body:


      SingleChildScrollView(



        padding: const EdgeInsets.all(50.0),

        child:

        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(

              child: Form(

                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Name Input
                    TextFormField(
                      controller: _nameController,
                      decoration: InputDecoration(
                        labelText: "BoLLy Name",
                        labelStyle: TextStyle(fontSize: 18, color: Colors.pinkAccent),
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.pinkAccent, width: 2),
                        ),
                        prefixIcon: Icon(Icons.person, color: Colors.pinkAccent),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter your name";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20),

                    // Upload Image
                    Center(
                      child: GestureDetector(
                        onTap: _pickImage,
                        child: CircleAvatar(
                          radius: 60,
                          backgroundColor: Colors.grey[200],
                          backgroundImage:
                          _profileImage != null ? FileImage(_profileImage!) : null,
                          child: _profileImage == null
                              ? Icon(Icons.camera_alt, color: Colors.grey[700], size: 40)
                              : null,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),

                    // Choose Bitmoji
                    Text(
                      "Choose a Bitmoji:",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 5,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                      ),
                      itemCount: _bitmojis.length,
                      itemBuilder: (context, index) {
                        final emoji = _bitmojis[index];
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedBitmoji = emoji;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _selectedBitmoji == emoji
                                  ? Colors.pinkAccent
                                  : Colors.grey[200],
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              emoji,
                              style: TextStyle(
                                fontSize: 30,
                                color: _selectedBitmoji == emoji
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 20),

                    // Submit Button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: _submitProfile,
                        style: ElevatedButton.styleFrom(
                         backgroundColor: Colors.pinkAccent,
                          padding: EdgeInsets.symmetric(vertical: 15),
                        ),
                        child: TextButton(
                          onPressed: ()
                          {
                            Navigator.push(context , MaterialPageRoute(builder: (context)=> HomeScreen()));
                          },
                          child: Text(
                            "Finish Setup",
                            style:GoogleFonts.familjenGrotesk(textStyle:  TextStyle(fontSize: 18, color: Colors.black,fontWeight: FontWeight.bold),),

                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ProfileSetupPage(),
  ));
}
// LinearGradient(
// colors: [Color(0xffec008c), Color(0xfffc6767)],
// stops: [0, 1],
// begin: Alignment.topLeft,
// end: Alignment.bottomRight,
// )
//