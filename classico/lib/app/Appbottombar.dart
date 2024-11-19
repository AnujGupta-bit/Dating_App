import 'package:classico/app/profile%20view%20of%20others.dart';
import 'package:classico/appprofile.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:google_fonts/google_fonts.dart';



class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  final List<Widget> _pages = [
    Center(child: Text('Home')),
    Center(child: Text('Search')),
    Center(child: Text('Matches')),
    Center(child: Text('Messages')),
    Center(child: Text('Profile'),


    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(
          'Vibing <3',
          style: GoogleFonts.pacifico(
            textStyle: TextStyle(
                fontSize: 30 , fontWeight: FontWeight.w100 , color: Colors.pink.shade300
            ),
          ),
        ),
        backgroundColor: Colors.pink,
      ),
      body: _pages[_page],
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 60.0,

    //     bottomNavigationBar: BottomNavigationBar(items: [
    //     BottomNavigationBarItem(icon: IconButton(onPressed: (){
    //     // Navigator.push(context, MaterialPageRoute(builder:(contex)=>FancyFab()));
    //       BottomNavigationBarItem(icon: IconButton(onPressed: (){},icon: Icon(Icons.account_circle),),
    // label: "",


        items: <Widget>[

         Icon(Icons.home, size: 30,),
          Icon(Icons.search, size: 30),

          InkWell

            (onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreena()));

          }
              // Navigator.push(context, MaterialPageRoute(builder: (context)=> ProfilePage()));
              // Navigator.push(context, MaterialPageRoute(builder:(contex)=>ProfilePage()));
              ,
              child: Icon(Icons.favorite, size: 30,)),

          Icon(Icons.message, size: 30),
          InkWell

          (onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> ProfilePage()));

          }
               // Navigator.push(context, MaterialPageRoute(builder: (context)=> ProfilePage()));
               // Navigator.push(context, MaterialPageRoute(builder:(contex)=>ProfilePage()));
        ,
              child: Icon(Icons.person, size: 30,)),

        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.pinkAccent,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _page = index;
          });

        },
        letIndexChange: (index) => true,
      ),
    );
  }
}
