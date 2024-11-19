import 'package:classico/app/app.welcomepage.dart';
import 'package:classico/app/rejectscreen.dart';
import 'package:classico/appprofile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(InterestPageApp());

class InterestPageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InterestPage(),
    );
  }
}

class InterestPage extends StatefulWidget {
  @override
  _InterestPageState createState() => _InterestPageState();
}

class _InterestPageState extends State<InterestPage> with SingleTickerProviderStateMixin {
  final List<Map<String, dynamic>> interests = [
    {'name': 'Music', 'icon': Icons.music_note},
    {'name': 'Travel', 'icon': Icons.airplanemode_active},
    {'name': 'Sports', 'icon': Icons.sports_basketball},
    {'name': 'Movies', 'icon': Icons.movie},
    {'name': 'Gaming', 'icon': Icons.videogame_asset},
    {'name': 'Reading', 'icon': Icons.menu_book},
    {'name': 'Cooking', 'icon': Icons.restaurant_menu},
    {'name': 'Dancing', 'icon': Icons.dangerous},
    {'name': 'Fitness', 'icon': Icons.fitness_center},
    {'name': 'Photography', 'icon': Icons.camera_alt},
    {'name': 'Fashion', 'icon': Icons.style},
    {'name': 'Technology', 'icon': Icons.computer},
  ];

  final Set<String> selectedInterests = {};

  AnimationController? _controller;
  Animation<double>? _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,

      duration: Duration(milliseconds: 200),
    );
    _animation = Tween<double>(begin: 1.0, end: 1.1).animate(CurvedAnimation(
      parent: _controller!,
      curve: Curves.easeInOut,
    ));
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  void toggleSelection(String interest) {
    setState(() {
      if (selectedInterests.contains(interest)) {
        selectedInterests.remove(interest);
        _controller?.reverse();
      } else {
        selectedInterests.add(interest);
        _controller?.forward();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('What u Likes Matters ', style: GoogleFonts.alatsi(),),
        backgroundColor: Colors.pinkAccent,
                elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'What are you interested in?',
              style:GoogleFonts.pacifico(textStyle:  TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),),
            ),
            SizedBox(height: 16),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: interests.length,
                itemBuilder: (context, index) {
                  final interest = interests[index]['name'];
                  final icon = interests[index]['icon'] as IconData;
                  final isSelected = selectedInterests.contains(interest);

                  return ScaleTransition(
                    scale: _animation!,
                    child: GestureDetector(
                      onTap: () => toggleSelection(interest),
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        decoration: BoxDecoration(
                          color: isSelected ? Colors.purple : Colors.grey[200],
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5,
                              spreadRadius: 2,
                              offset: Offset(2, 2),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              icon,
                              color: isSelected ? Colors.white : Colors.black54,
                              size: 30,
                            ),
                            SizedBox(height: 8),
                            Text(
                              interest,
                              style: TextStyle(
                                fontSize: 16,
                                color: isSelected ? Colors.white : Colors.black87,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(

                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>Home()));

                  // Show loading indicator during data processing
                  showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (context) => Center(
                      child: CircularProgressIndicator(color: Colors.pinkAccent),
                    ),
                  );

                  // Simulate saving data and navigating to next page
                  Future.delayed(Duration(seconds: 2), () {
                    Navigator.pop(context); // Close the loading indicator
                    print("Selected interests: ${selectedInterests.toList()}");
                  });
                },
                style: ElevatedButton.styleFrom(

                  backgroundColor: Colors.pinkAccent,
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child:

                    // Border.fromBorderSide(10),
                TextButton(
                  onPressed: () {
                    Navigator.push(context , MaterialPageRoute(builder: (context)=> ProfileSelectionApp()));
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
    );
  }
}



