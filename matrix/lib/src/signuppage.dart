import 'package:flutter/material.dart';
import 'package:matrix/imgString.dart';
import 'package:matrix/src/loginwidgets.dart';
import 'package:matrix/textString.dart';
class karoyrr extends StatelessWidget {
  const karoyrr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              lwidget(title: OnBoardingTitle2, image: OnBoardImage1, subtitle: OnBoardingTitle3
              ),
              Container(
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          label : Text(" common lete do it "),
                          prefixIcon: Icon(Icons.person_2_outlined) ,
                          border: OutlineInputBorder(),


                        ),
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        decoration: InputDecoration(
                          label : Text(" naame"),
                          prefixIcon: Icon(Icons.person_2_outlined) ,
                          border: OutlineInputBorder(),


                        ),
                      ),  const SizedBox(height: 10),
                      TextFormField(
                        decoration: InputDecoration(
                          label : Text(" password"),
                          prefixIcon: Icon(Icons.person_2_outlined) ,
                          border: OutlineInputBorder(),


                        ),

                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        decoration: InputDecoration(
                          label : Text(" email "),
                          prefixIcon: Icon(Icons.person_2_outlined) ,
                          border: OutlineInputBorder(),


                        ),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
