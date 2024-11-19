import 'package:flutter/material.dart';
class weather extends StatefulWidget {


  @override
  State<weather> createState() => _weatherState();
}

class _weatherState extends State<weather> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.add_home,size: 40,color: Colors.white,),
        centerTitle: true,
        title: Text("crack it",style: TextStyle(color: Colors.white,fontSize:30 ),),
        actions: [
          IconButton(onPressed: ()=>{}, icon: Icon(Icons.info),)
        ],
      ),
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.black45,
          child:  Column(


            mainAxisAlignment: MainAxisAlignment.center,

            children: [
            Container(
            height: 150,
            width: 150,
            color: Colors.red,
          ),
            Text("Moar SwaaD",style: TextStyle(
                color: Colors.redAccent,
                fontSize: 50,


            )
            ),

            Text("Dil Maange More"),
         

            ElevatedButton(onPressed: (){},

                child: Text("Click me"))



            ],
          ),
        ),

      )

    );
  }
}
