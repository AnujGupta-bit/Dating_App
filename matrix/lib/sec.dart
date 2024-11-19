import 'package:flutter/material.dart';

class abc extends StatelessWidget
{
 @override
  Widget build(BuildContext)
 {
   return Scaffold(appBar: AppBar
     (
     leading: Icon(Icons.add_home,size: 40,color: Colors.white,),
     centerTitle: true,
     title: Text("crack it",style: TextStyle(color: Colors.white,fontSize:30 ),),
   actions: [
     IconButton(onPressed: ()=>{}, icon: Icon(Icons.info),)
   ],
   backgroundColor: Colors.redAccent,),



     body: Center(child :
     Container(
       height: double.infinity,
         width: double.infinity,

         color: Colors.pink,
         alignment: Alignment.center,
         child: Image.asset("wallpaper.jpg"),

   )


   )
   );
  }
}

