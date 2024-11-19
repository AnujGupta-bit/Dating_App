import 'package:flutter/material.dart';

void main() {
  runApp(DatingApp());
}

class DatingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreena(),
    );
  }
}

class HomeScreena extends StatefulWidget {
  @override
  _HomeScreenaState createState() => _HomeScreenaState();
}

class _HomeScreenaState extends State<HomeScreena> {
  // Mock list of contenders
  final List<Map<String, String>> contenders = [
    {
      "name": "BHuMI",
      "age": "24",
      "image": "https://via.placeholder.com/300/FF5733/FFFFFF?text=Bhumi",
    },
    {
      "name": "Bhumi",
      "age": "26",
      "image": "https://via.placeholder.com/300/33FF57/FFFFFF?text=Bhumi",
    },
    {
      "name": "Bhumi",
      "age": "23",
      "image": "https://via.placeholder.com/300/5733FF/FFFFFF?text=Bhumi",
    },
    {
      "name": "BHumi",
      "age": "27",
      "image": "https://via.placeholder.com/300/FFD700/FFFFFF?text=Bhumi",
    },
  ];

  int currentIndex = 0;

  // Move to next contender
  void nextContender() {
    setState(() {
      currentIndex = (currentIndex + 1) % contenders.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentContender = contenders[currentIndex];

    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text("Dating Apps", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Contender Card
            Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
                image: DecorationImage(
                  image: NetworkImage(currentContender['image']!),
                  fit: BoxFit.cover,
                ),
              ),
              width: double.infinity,
              height: 500,
            ),

            // Name and Info
            Positioned(
              bottom: 80,
              left: 30,
              child: Text(
                "${currentContender['name']}, ${currentContender['age']}",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                      blurRadius: 4.0,
                      color: Colors.black,
                      offset: Offset(1.0, 1.0),
                    ),
                  ],
                ),
              ),
            ),

            // Like and Dislike Buttons
            Positioned(
              bottom: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.close, color: Colors.red, size: 40),
                    onPressed: nextContender,
                  ),
                  SizedBox(width: 50),
                  IconButton(
                    icon: Icon(Icons.favorite, color: Colors.green, size: 40),
                    onPressed: nextContender,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
