// import 'package:flutter/material.dart';
//
// class contex extends StatefulWidget {
//
//
//   @override
//   State<contex> createState() => _contexState();
// }
//
// class _contexState extends State<contex> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.teal,
//       ),
//
//       body:Container(
//
//         height: double.infinity,
//         width: double.infinity,
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [
//               Colors.red,
//               Colors.green,
//             ],
//                 begin: Alignment.topCenter,
//               end: Alignment.bottomCenter,
//
//           )
//         ),
//         child: Row(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Container(height: 150,width: 150,color: Colors.red,),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Container(height: 150,width: 150,color: Colors.red,),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Container(height: 150,width: 150,color: Colors.red,),
//             )
//
//           ],
//         ),
//       )
//
//
//     );
//   }
// }
import 'package:flutter/material.dart';
class xxx extends StatefulWidget {


  @override
  State<xxx> createState() => _xxxState();
}

class _xxxState extends State<xxx> {
  int select = 0;
  void selectchange(int v) {
    setState(() {
      select = v;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      backgroundColor: Colors.teal,

    ),
      drawer: Drawer(
        child: ListView(
            children: [
              DrawerHeader(margin: EdgeInsets.all(0.0),

                child: Center(
                  child: Column(
                    children: [

                      Image(image: AssetImage("nice.jpg"),
                      width: 100,),
                      Text("Menu" ,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,fontStyle: FontStyle.italic),)
                    ],
                  ),
                ),


              ),
              ListTile(
                selected: select ==0,
                selectedTileColor: Colors.black,
                leading: Icon(Icons.menu),
                title : Text("Spicy"),
                trailing: Icon(Icons.info),
                onTap: (){
                  print("ij");
                  selectchange(0);
                  Divider(thickness: 20,height: 10);

                },
              ),
              ListTile(
                selected: select ==1,
                selectedTileColor: Colors.black,
                leading: Icon(Icons.menu),
                title : Text("Deserts"),
                trailing: Icon(Icons.info),
                onTap: (){
                  print("ij");
                  selectchange(0);
                },
              ) ,
              ListTile(
                selected: select ==2,
                selectedTileColor: Colors.black,
                leading: Icon(Icons.menu),
                title : Text("Italian"),
                trailing: Icon(Icons.info),
                onTap: (){
                  // Timer
                  //   (Duration(seconds: 04), ( )
                  // {
                  //   Navigator.push(context, MaterialPageRoute(builder:(contex)=>wel()));
                  //
                  // });
                  print("ij");
                  selectchange(0);
                },
              ),
              ListTile(
                selected: select ==3,
                selectedTileColor: Colors.black,
                leading: Icon(Icons.menu),
                title : Text("Spanish"),
                trailing: Icon(Icons.info),
                onTap: (){
                  print("ij");
                  selectchange(0);
                  },

              ),
              Divider(thickness: 2,height: 100,),



            ]
        ),
      ),
    body: Container(
height: double.infinity,
width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("wallpaper.jpg"),
           fit: BoxFit.cover,

        ),
      ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ElevatedButton(
              child: Text("f"),
              onPressed: (){

              },
            ),
          ],
        ),
      ),


    );
  }
}

