import 'package:flutter/material.dart';
class lisview extends StatefulWidget {


  @override
  State<lisview> createState() => _lisviewState();
}

class _lisviewState extends State<lisview> {
  List<String> l = [" not urs"," dakshyy" , " hardyy"];
 List<IconData> ic = [Icons.abc_outlined , Icons.access_alarms_sharp ,Icons.access_alarms_sharp ];
  List<Color> cl= [ Colors.black , Colors.black, Colors.black];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent,
        foregroundColor: Colors.yellowAccent,
      ),
      body:  ListView.builder(itemBuilder: (context , index){
        return ListTile(
         leading: Icon(ic[index]),
          title: Text(l[index],style: TextStyle(color: Colors.white10,fontWeight: FontWeight.bold),),
         tileColor: cl[index],
        );

      },
      itemCount: l.length,),
    );
  }
}

