import 'package:flutter/material.dart';
class movement extends StatefulWidget {


  @override
  State<movement> createState() => _movementState();
}

class _movementState extends State<movement> with SingleTickerProviderStateMixin{
  late AnimationController ac ;
  late Animation anim ;
  late Animation coloranim ;
  @override
  void initState()
  {
    ac = AnimationController(vsync:this , duration: Duration(seconds: 4));
    anim = Tween(begin: 0.0 , end : 40.0).animate(ac);
    coloranim = ColorTween(begin:Colors.black45 , end : Colors.blueGrey).animate(ac);
  ac.forward();
    ac.addListener((){
      setState((){

      });

    });
  }
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(

    ),
      body: Container(
          alignment: Alignment.center,
          height: double.infinity,
          width: double.infinity,
          decoration:  BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Colors.black45,
                    Colors.tealAccent,
                  ]
              )
          ),

          child:Column

            (
            mainAxisAlignment: MainAxisAlignment.center,


              children: [

                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(

                        alignment: Alignment.center,

                        width: 200,
                        height: 200,
                        child:Text(" Mine"),
                        decoration: BoxDecoration (

                            color:  coloranim.value,
                            borderRadius: BorderRadius.only(topLeft : Radius.circular(anim.value), bottomRight: Radius.circular(anim.value) )
                        )
                      //SizedBox(height: 20,)

                    ),
                  ),
                ),
                Container(child: SizedBox(height: 20,)),
               // Text("Mine"),
                LinearProgressIndicator(
                  borderRadius: BorderRadius.circular(20.5),
                  backgroundColor: Colors.white10,
                  minHeight: 3.0,

                ),

                //Center(child: Text(" MiNiB", style: TextStyle(fontSize: 40, fontStyle: FontStyle.italic , color: Colors.blue),)),
              ]
          )
      ),

    );
  }
}





//
// RichText(
// text: TextSpan(
// style: DefaultTextStyle.of(context).style,
// children: <TextSpan>[
// TextSpan(
// text: "You don't have the votes.\n",
// style: TextStyle(color: Colors.black.withOpacity(0.6)),
// ),
// TextSpan(
// text: "You don't have the votes!\n",
// style: TextStyle(color: Colors.black.withOpacity(0.8)),
// ),
// TextSpan(
// text: "You're gonna need congressional approval and you don't have the votes!\n",
// style: TextStyle(color: Colors.black.withOpacity(1.0)),
// ),
// ],
// ),
// )



// import 'package:flutter/material.dart';
// class prac extends StatefulWidget {
//
//
//   @override
//   State<prac> createState() => _pracState();
// }
//
// class _pracState extends State<prac> with SingleTickerProviderStateMixin{
//   // late AnimationController ac;
//   // late Animation anim;
//   // late Animation coloranim ;
//   @override
//   // void init()
//   // {
//   //   ac = AnimationController(vsync: this , duration: Duration(seconds: 4) );
//   //   anim = Tween(begin: 0.0 , end:  40.0).animate(ac);
//   //   coloranim = ColorTween(begin: Colors.cyan , end: Colors.tealAccent).animate(ac);
//   //   ac.forward();
//   //   ac.addListener(()
//   //   {
//   //     setState(() {
//   //
//   //     });
//   //   });
//   // }
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text(" Simple Animation "),
//           backgroundColor:Color(0xff607d8b),
//           foregroundColor: Color(0xff0b0042) ,
//
//         ),
//         body: Container(
//           alignment: Alignment.center,
//           height: double.infinity,
//           width:  double.infinity,
//           decoration: BoxDecoration(
//               gradient:  SweepGradient(
//                 colors: [Color(0xff232526), Color(0xff414345)],
//                 stops: [0, 1],
//                 center: Alignment.bottomLeft,
//               )
//
//
//           ),
//           child: Column
//             (
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [ Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Center(
//                   child : Container(
//                     height: 200,
//                     width: 300,
//                     decoration: BoxDecoration(
//                       // ue,
//                       // borderRadius: BorderRadius.only( topLeft: anim.value , bottomRight: anim.value),
//                         gradient: SweepGradient(
//                           colors: [Color(0xff283048), Color(0xff859398)],
//                           stops: [0, 1],
//                           center: Alignment.bottomLeft,
//                         )
//
//
//                     ),
//
//                     child: Center(
//                       child: Text("Dil Mange More", style: TextStyle(
//                         fontWeight: FontWeight.w900, fontStyle: FontStyle.italic , color:Colors.black45, fontSize: 32,
//
//                       ),),
//                     ),
//                   )
//               ),
//             ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Container(child: SizedBox(height: 20,)),
//               ),
//               // Text("Mine"),
//               LinearProgressIndicator(
//                 borderRadius: BorderRadius.circular(20.5),
//                 backgroundColor: Colors.white10,
//                 minHeight: 3.0,
//
//               ),
//
//
//             ],
//
//           ),
//         )
//
//     );
//   }
// }
//
//
//
//
//
//
//
//





