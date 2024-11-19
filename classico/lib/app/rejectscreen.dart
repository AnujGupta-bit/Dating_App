import 'package:classico/app/namepageapp.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(ProfileSelectionApp());

class ProfileSelectionApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileSelectionPage(),
    );
  }
}

class ProfileSelectionPage extends StatefulWidget {
  @override
  _ProfileSelectionPageState createState() => _ProfileSelectionPageState();
}

class _ProfileSelectionPageState extends State<ProfileSelectionPage> {
  String? selectedGender;
  double age = 25;
  // late String location ;
  TextEditingController locationController = TextEditingController();
  TextEditingController bioController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  void submitProfile() {
    if (_formKey.currentState!.validate()) {
      // Submit profile data
      print("Gender: $selectedGender, Age: ${age.toInt()}, Bio: ${bioController.text}, Loc : ${locationController.text}");
      // Show confirmation dialog
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Profile Created"),
          content: Text("Your profile has been set up successfully!"),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text("OK"),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lets know About Awesome @U" , style: GoogleFonts.aclonica (textStyle: TextStyle(fontWeight: FontWeight.bold))),
        // iconTheme: I,
        backgroundColor: Colors.pinkAccent,

      ),
      body: Stack(
        children: [
          // Gradient background
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xffec008c), Color(0xfffc6767)],
                stops: [0, 1],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              )

            ),
          ),
          Center(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(16.0),
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            'Set Up Your Profile',
                           style:GoogleFonts.alfaSlabOne(textStyle: TextStyle(
                             fontSize: 24,
                             fontWeight: FontWeight.bold,
                             color: Colors.pinkAccent,
                           )),
                          ),
                        ),
                        SizedBox(height: 20),

                        // Gender Selection
                        Row(
                          children: [
                            Icon(Icons.transgender),
                            Text(
                              'Gender',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GenderSelectionButton(
                              gender: 'Male',
                              isSelected: selectedGender == 'Male',
                              onTap: () => setState(() => selectedGender = 'Male'),
                            ),
                            GenderSelectionButton(
                              gender: 'Female',
                              isSelected: selectedGender == 'Female',
                              onTap: () => setState(() => selectedGender = 'Female'),
                            ),
                            GenderSelectionButton(
                              gender: 'Other',
                              isSelected: selectedGender == 'Other',
                              onTap: () => setState(() => selectedGender = 'Other'),
                            ),
                          ],
                        ),

                        SizedBox(height: 20),

                        // Age Slider
                      Row(
                        children: [
                          Icon(Icons.integration_instructions),


                        Text(
                          'Age',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,),
                        ),
                        Slider(
                          value: age,
                          min: 18,
                          max: 60,
                          divisions: 42,
                          label: age.toInt().toString(),
                          activeColor: Colors.pinkAccent,
                          onChanged: (value) => setState(() => age = value),
                        ),
                        Center(child: Text("Age: ${age.toInt()} years")
                        ),

                        SizedBox(height: 20),
  ],
                      ),

                        SizedBox(height: 20),

                        Row(
                          children: [
                            Icon(Icons.location_city),
                            Text(
                              "Location" ,
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),

                            ),
                          ],
                        ),
                        TextFormField(
                          controller: locationController,
                          maxLength: 150,
                          maxLines: 3,
    decoration: InputDecoration(
    hintText: 'Address',
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: BorderSide(color: Colors.pinkAccent),
    ),
    ),
    validator: (value) {
    if (value == null || value.isEmpty) {
    return 'Please enter a bio';
    }
    return null;
    },
    ),
    SizedBox(height: 20),


                        // Bio Input
                        Row(
                          children: [
                            Icon(Icons.add_box_outlined),
                            Text(
                              'Bio',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        TextFormField(
                          controller: bioController,
                          maxLength: 150,
                          maxLines: 3,
                          decoration: InputDecoration(
                            hintText: 'Tell us about yourself',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(color: Colors.pinkAccent),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter a bio';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 20),

                        // Submit Button
                        Center(
                          child: ElevatedButton(
                            onPressed: submitProfile,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.pinkAccent,
                              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: TextButton(
                              onPressed: ()  {
    Navigator.push(context , MaterialPageRoute(builder: (context)=>ProfileSetupPage()));
    },
                              child: Text(
                                'Continue',
                                style:GoogleFonts.familjenGrotesk(textStyle:  TextStyle(fontSize: 18, color: Colors.black,fontWeight: FontWeight.bold),),

                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class GenderSelectionButton extends StatelessWidget {
  final String gender;
  final bool isSelected;
  final VoidCallback onTap;

  GenderSelectionButton({required this.gender, required this.isSelected, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        decoration: BoxDecoration(
          color: isSelected ? Colors.pinkAccent : Colors.grey[200],
          borderRadius: BorderRadius.circular(15),
          boxShadow: isSelected
              ? [BoxShadow(color: Colors.pinkAccent.withOpacity(0.3), blurRadius: 10)]
              : [],
        ),
        child: Text(
          gender,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black54,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
