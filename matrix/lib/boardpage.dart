import 'dart:ui';

import 'main.dart';
class OnBoardingModel {
  final String image ;
  final String title;
  final Color bgcolor ;
  final String counterText ;
  final double height ;
OnBoardingModel(
  {
    required this.image ,
    required this.bgcolor ,
    required this.counterText ,
    required this.title ,
    required this.height ,
}
    );
}