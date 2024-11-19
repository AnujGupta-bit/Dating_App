import 'package:flutter/material.dart';
import 'package:matrix/imgString.dart';
import 'package:matrix/textString.dart';
class lwidget extends StatelessWidget {
  const lwidget({
    Key? key ,
     required this.title ,
     required this.image ,
    required this.subtitle ,
}) : super(key: key);

final String image , title  , subtitle ;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(image: const AssetImage(OnBoardImage1),
        height: size.height*0.2,

        ),
        Text(OnBoardingTitle3),
        Text(OnBoardingTitle2),
      ],
    );

  }
}
