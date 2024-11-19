import 'package:flutter/material.dart';
class gridview extends StatefulWidget {

  @override
  State<gridview> createState() => _gridviewState();
}

class _gridviewState extends State<gridview> {
  List<Color> col = [ Colors.white10, Colors.black45,Colors.pinkAccent,Colors.redAccent,Colors.tealAccent,Colors.redAccent,Colors.redAccent,Colors.redAccent];
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      backgroundColor: Colors.black45,


    ),

     body: GridView.builder(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 200),
         itemBuilder: (context, index)
    {
      return Container(color: col[index],margin: EdgeInsets.all(20.0),);
    },
    itemCount: col.length,

     )
    //   child: Padding(
    //     padding: const EdgeInsets.all(8.0),
    //     child: GridView.extent(maxCrossAxisExtent: 500,//isme grid count bhi de sakte hai
    //       crossAxisSpacing: 10,
    //       mainAxisSpacing: 20,
    //       children: [
    //         Container(color:col[0]),
    //         Container(color:col[1]),
    //         Container(color:col[2]),
    //         Container(color:col[3]),
    //         Container(color:col[4]),
    //         Container(color:col[5]),
    //         Container(color:col[6]),
    //         Container(color:col[7]),
    //
    //       ],
    //     ),
    //   )
    // )
    //   ,

    );
  }
}
