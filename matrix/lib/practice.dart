import 'package:flutter/material.dart';
class prac extends StatefulWidget {


  @override
  State<prac> createState() => _pracState();
}

class _pracState extends State<prac> with SingleTickerProviderStateMixin{
  late AnimationController ac;
  late Animation anim;
  late Animation coloranim ;
  @override
  void init()
  {
    ac = AnimationController(vsync: this , duration: Duration(seconds: 4) );
    anim = Tween(begin: 0.0 , end:  40.0).animate(ac);
    coloranim = ColorTween(begin: Colors.cyan , end: Colors.tealAccent).animate(ac);
    ac.forward();
    ac.addListener(()
    {
      setState(() {

      });
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor:Color(0xff607d8b),
            foregroundColor: Color(0xff0b0042) ,
          title:Stack(
            children: <Widget>[
              // Stroked text as border.
              Text(
                'Moar  Foods!',
                style: TextStyle(
                  fontSize: 40,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 6
                    ..color = Colors.black45!,
                ),
              ),
              // Solid text as fill.
              Text(
                'Moar  Foods!',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white12,
                ),
              ),
            ],
          )
          // Text(" Moar Foods "),
          // backgroundColor:Color(0xff607d8b),
          // foregroundColor: Color(0xff0b0042) ,

        ),
        body: Container(
          alignment: Alignment.center,
          height: double.infinity,
          width:  double.infinity,
          decoration: BoxDecoration(
              gradient:  SweepGradient(
                colors: [Color(0xff232526), Color(0xff414345)],
                stops: [0, 1],
                center: Alignment.bottomLeft,
              )





          ),
          child: Column
            (
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child : Container(
                    height: 150,
                    width: 250,
                    decoration: BoxDecoration(
                      // ue,
                        borderRadius: BorderRadius.only(topLeft : Radius.circular(30.0), bottomRight: Radius.circular(30.0) ),
                        gradient: SweepGradient(
                          colors: [Color(0xff283048), Color(0xff859398)],
                          stops: [0, 1],
                          center: Alignment.bottomLeft,
                        )


                    ),

                    child: Center(
                      child: Text("Dil Mange More", style: TextStyle(
                        fontWeight: FontWeight.w900, fontStyle: FontStyle.italic , color:Colors.black45, fontSize: 32,

                      ),),
                    ),
                  )
              ),
            ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(child: SizedBox(height: 20,)),
              ),
              // Text("Mine"),
              LinearProgressIndicator(
                borderRadius: BorderRadius.circular(20.5),
                backgroundColor: Colors.black45,
                color: Colors.white,
                minHeight: 3.0,

              ),


            ],

          ),
        )

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
