import 'package:flutter/material.dart';
import 'package:matrix/gamescreenttt.dart';
import 'package:matrix/tic%20tac%20toe.dart';
class first extends StatefulWidget {


  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  // final Globa
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  final TextEditingController t1 = TextEditingController();
  final TextEditingController t2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF323D58),
      body:
      Form(
        key: _formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(" Enter players Name ", style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),),
            SizedBox(height:  30,),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextFormField(
                controller: t1,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red)
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color:  Colors.red),
                  ),
                  hintText: "Enter Player 1 name ",
                  hintStyle: TextStyle(color: Colors.white)
                ),
                validator: (value){
                  if (value== null || value.isEmpty)
                    {
                      return " please enter valid name";
                    }
                  else{
                    return null ;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextFormField(
                controller: t2,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color:  Colors.red),
                    ),
                    hintText: "Enter Player 2 name ",
                    hintStyle: TextStyle(color: Colors.white)
                ),
                validator: (value){
                  if (value== null || value.isEmpty)
                  {
                    return " please enter valid name";
                  }
                  else{
                    return null ;
                  }
                },
              ),
            ),
    SizedBox(height:  100,),
    InkWell(
    onTap: (){
      if (_formkey.currentState!.validate())
        {
          Navigator.push(context, MaterialPageRoute(builder: (context)=> TicTacToeApp()
          //   (player1: t1.text,
          //     player2: t2.text,
          //
          // ),
          ));
        }
    },
    child:  Container(
    decoration: BoxDecoration(
    color: Colors.green,
    borderRadius: BorderRadius.circular(2),
    ),
    child: Text(
    "START",
    style: TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.bold,
    color: Colors.white70,
    ),
    ),
    ),
    )
          ],
        ),
      )
    );
  }
}
