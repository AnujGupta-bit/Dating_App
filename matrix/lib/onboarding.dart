import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:matrix/boardpage.dart';
import 'package:matrix/colors.dart';
import 'package:matrix/imgString.dart';
import 'package:matrix/on-boarding-page-widget.dart';
import 'package:matrix/registration%20page.dart';
import 'package:matrix/textString.dart';
import 'package:path/path.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class OnBoardingScreen extends StatefulWidget {
   OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final controller = LiquidController();

  int currentPage = 0 ;

  //get pages => null;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // TextEditingController Controller =TextEditingController();

    final pages= [
   OnBoardingPageWidget(model:OnBoardingModel(
     image : OnBoardImage1 ,
     title: OnBoardingTitle1,
     counterText: OnBoardingCounter1,
     bgcolor: OnBoardingPage1Color, height :100,


   ),),
   OnBoardingPageWidget(model:OnBoardingModel(
     image : OnBoardImage1 ,
     title: OnBoardingTitle1,

     counterText: OnBoardingCounter1,
     bgcolor: OnBoardingPage1Color, height :100,


   ),),
   OnBoardingPageWidget(model:OnBoardingModel(
     image : OnBoardImage1 ,
     title: OnBoardingTitle1,
     counterText: OnBoardingCounter1,
     bgcolor: OnBoardingPage1Color, height :100,


   ),),

 ];




    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
             pages : pages,
            liquidController: controller,
            slideIconWidget: const Icon(Icons.arrow_back_ios),
            enableSideReveal: true,
            waveType: WaveType.circularReveal,
             onPageChangeCallback:  onPageChangedCallback,



          ),
          Positioned(
            bottom: 60.0,
            child: OutlinedButton(
              onPressed: () {
                int nextPage = controller.currentPage + 1;
           controller.jumpToPage(page: nextPage);
              },
              style: ElevatedButton.styleFrom(
                side: const BorderSide(color: Colors.black26),
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20),
                iconColor : Colors.white,
              ),
              child: Container(
                padding: const EdgeInsets.all(20.0),
                decoration: const BoxDecoration(
                    color: Colors.teal, shape: BoxShape.circle),
                child: const Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
          Positioned(
            top: 50,
            right: 20,
            child: TextButton(
              onPressed: (){
                controller.jumpToPage(page: 2);
              },
              child: const Text("Skip", style: TextStyle(color: Colors.grey)),
            ),
          ),

          Positioned(
              bottom: 10,

              child: AnimatedSmoothIndicator(
                count: 3,

                activeIndex: controller.currentPage,
                effect: const ExpandingDotsEffect(
                  activeDotColor: Color(0xff272727),
                ),
              ),
            ),

        ],
      ),
    );
  }

  void onPageChangedCallback(int activePageIndex) {
    setState()({
      currentPage = activePageIndex
    });
  }
}

setState() {

}



class OnBoard extends StatelessWidget {
  const OnBoard({
    super.key,
    required this.model,
  });

  final  OnBoard model ;

  @override
  Widget build(BuildContext context) {
    return Container(color: OnBoardingPage1Color,
    child:  Padding(
      padding: const EdgeInsets.all(8.0),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(image: AssetImage(OnBoardImage1), height: 20),
          Column(
            children: [
              Text(OnBoardingTitle2)

            ],
          )
        ],
      ),
    ),
    );
  }
}
