import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

@override
Widget build(BuildContext context) {
  return Scaffold(
    body: Stack(
      children: [
        const Positioned(
          top: 0,
          left: 0,
          child: Image(image: AssetImage("1584175590822.png")),
        ),
        Positioned(
          top: 80,
          left: 0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Roar",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
              "Race",
                style: Theme.of(context).textTheme.bodyMedium,
              )
            ],
          ),
        ),
        const Positioned(
          bottom: 100,
          child: Image(image: AssetImage("1584175590822.png")),
        ),
        Positioned(
          bottom: 60,
          right: 0,
          child: Container(
            width: 50,
            height: 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color:Colors.red,
            ),
          ),
        ),
      ],
    ),
  );
}