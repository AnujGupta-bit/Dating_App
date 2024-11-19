import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matrix/imgString.dart';
import 'package:matrix/textString.dart';

import 'boardpage.dart';

class OnBoardingPageWidget extends StatelessWidget{
    const OnBoardingPageWidget({
        Key? key,
        required this.model,
    }) : super(key: key);

    final OnBoardingModel model;

    @override
    Widget build(BuildContext) {
        final size = Size;
        return Container(
            // padding:  ,
            color: Colors.pinkAccent,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                    Image(
                        image: AssetImage(OnBoardImage1),
                        height:  100,
                    ),
                    Column(
                        children: [
                            Text(
                                model.title,

                            ),
                            Text(
                                OnBoardingTitle3,
                                textAlign:TextAlign.center,
                            ),
                        ],
                    ),
                    Text(
                        model.counterText,
                        // style: Theme.of(context).textTheme.headline6,
                    ),
                    const SizedBox(
                        height: 80.0,
                    )
                ],
            ),
        );
    }
}