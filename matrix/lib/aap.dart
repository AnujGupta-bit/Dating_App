// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:matrix/cont.dart';
// import 'package:matrix/imgString.dart';
// import 'package:path/path.dart';
// class apapa extends StatefulWidget {
//
//
//   @override
//   State<apapa> createState() => _apapaState();
// }
//
// class _apapaState extends State<apapa> {
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       appBar:
//         AppBar(
//           elevation: 0,
//           centerTitle: true,
//           backgroundColor: Colors.transparent,
//           leading: Icon(
//             Icons.menu,
//             //For Dark Color
//             // color: isDark ? tWhiteColor : tDarkColor,
//           ),
//           title: Text("hii", style: Theme.of(context).textTheme.bodyMedium),
//           actions: [
//             Container(
//               margin: const EdgeInsets.only(right: 20, top: 7),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10),
//                 //For Dark Color
//                 // color: isDark ? tSecondaryColor : tCardBgColor,
//               ),
//               child: IconButton(onPressed: () {}, icon: const Image(image: AssetImage(OnBoardImage1))),
//             )
//           ],
//
//       ),
//       body:
//       Container(
//         // color: Colors.white,
//         child: SingleChildScrollView(
//
//           child: Container(
//             // color: Colors.white,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text("Java"),
//                 Text("C++"),
//                 const SizedBox(height: 10,),
//                 Container(
//                   decoration: BoxDecoration(
//                     border:  Border(left: BorderSide(width: 4))
//                   ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                        Text("Java is Best"),
//                          const Icon(Icons.mic , size: 25,)
//
//
//
//                     ],
//                   ),
//                 ),
//                  const SizedBox(height : 10),
//
//                  SizedBox(
//                    height: 45,
//                    child: ListView(
//                      shrinkWrap: true,
//                      scrollDirection: Axis.horizontal,
//                      children: [
//
//                        SizedBox(
//                         width: 170,
//                         height:  50,
//                         child: Row(
//                           children: [
//                            Container(
//                               width: 45,
//                               height: 45,
//                               decoration: BoxDecoration(
//                                 borderRadius:  BorderRadius.circular(10) , color: Colors.tealAccent
//                               ),
//                              child: Center(
//                                child:  Text(" C++ is object oriented programming "),
//                              )
//
//                             ),Flexible(child:
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               mainAxisAlignment: MainAxisAlignment.center ,
//                               children: [
//                                 Text("JavaScript ",overflow: TextOverflow.ellipsis,  ),
//                                 Text("Python ", overflow: TextOverflow.ellipsis,),
//                               ],
//                             )
//                             ),
//                           ],
//                         ),
//                                        ),
//                        SizedBox(
//                          width: 170,
//                          height:  50,
//                          child: Row(
//                            children: [
//                              Container(
//                                  width: 45,
//                                  height: 45,
//                                  decoration: BoxDecoration(
//                                      borderRadius:  BorderRadius.circular(10) , color: Colors.tealAccent
//                                  ),
//                                  child: Center(
//                                    child:  Text(" C++ is object oriented programming "),
//                                  )
//
//                              ),Flexible(child:
//                              Column(
//                                crossAxisAlignment: CrossAxisAlignment.start,
//                                mainAxisAlignment: MainAxisAlignment.center ,
//                                children: [
//                                  Text("JavaScript ",overflow: TextOverflow.ellipsis,  ),
//                                  Text("Python ", overflow: TextOverflow.ellipsis,),
//                                ],
//                              )
//                              ),
//                            ],
//                          ),
//                        ),
//                        SizedBox(
//                          width: 170,
//                          height:  50,
//                          child: Row(
//                            children: [
//                              Container(
//                                  width: 45,
//                                  height: 45,
//                                  decoration: BoxDecoration(
//                                      borderRadius:  BorderRadius.circular(10) , color: Colors.tealAccent
//                                  ),
//                                  child: Center(
//                                    child:  Text(" C++ is object oriented programming "),
//                                  )
//
//                              ),Flexible(child:
//                              Column(
//                                crossAxisAlignment: CrossAxisAlignment.start,
//                                mainAxisAlignment: MainAxisAlignment.center ,
//                                children: [
//                                  Text("JavaScript ",overflow: TextOverflow.ellipsis,  ),
//                                  Text("Python ", overflow: TextOverflow.ellipsis,),
//                                ],
//                              )
//                              ),
//                            ],
//                          ),
//                        ),
//                        SizedBox(
//                          width: 170,
//                          height:  50,
//                          child: Row(
//                            children: [
//                              Container(
//                                  width: 45,
//                                  height: 45,
//                                  decoration: BoxDecoration(
//                                      borderRadius:  BorderRadius.circular(10) , color: Colors.tealAccent
//                                  ),
//                                  child: Center(
//                                    child:  Text(" C++ is object oriented programming "),
//                                  )
//
//                              ),Flexible(child:
//                              Column(
//                                crossAxisAlignment: CrossAxisAlignment.start,
//                                mainAxisAlignment: MainAxisAlignment.center ,
//                                children: [
//                                  Text("JavaScript ",overflow: TextOverflow.ellipsis,  ),
//                                  Text("Python ", overflow: TextOverflow.ellipsis,),
//                                ],
//                              )
//                              ),
//                            ],
//                          ),
//                        ),
//                      ],
//                    ),
//                  ),
//                 SizedBox(width: 10,height: 20,),
//                 Row(
//                   children: [
//                     Expanded(child:
//                     Container(
//                       decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black ),
//                       child: Column(
//                         children: [
//                           Row(
//                             children: const [
//                               Flexible(child: Image(image: AssetImage(OnBoardImage1),height: 100,width: 100,))
//                             ]
//                           ),
//                           const SizedBox(height: 25,),
//                           Text("sassy" , overflow: TextOverflow.ellipsis,),
//                           Text("Aahahaha", overflow: TextOverflow.ellipsis ,)
//                         ],
//                       ),
//
//                     )
//                     ),
//                   ],
//                 )
//
//
//               ],
//             ),
//           ),
//         ),
//       ) ,
//
//     );
//   }
// }
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matrix/imgString.dart';
import 'package:matrix/textString.dart';
class l extends StatelessWidget {
  const l({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //1st banner
        Expanded(
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
              //For Dark Color
              // color: isDark ? tSecondaryColor : tCardBgColor,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Flexible(child: Image(image: AssetImage(OnBoardImage1))),
                    Flexible(child: Image(image: AssetImage(OnBoardImage3))),
                  ],
                ),
                const SizedBox(height: 25),
                Text(OnBoardingTitle3, maxLines: 2,
                    overflow: TextOverflow.ellipsis),
                Text(OnBoardingTitle3, maxLines: 1,
                    overflow: TextOverflow.ellipsis),
              ],
            ),
          ),
        ),
        const SizedBox(width: 50),
        //2nd Banner
        Expanded(
          child: Column(
            children: [
              //Card
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  //For Dark Color
                  // color: isDark ? tSecondaryColor : tCardBgColor,
                ),
                padding: const EdgeInsets.symmetric(
                    horizontal: 10, vertical: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Flexible(child: Icon(Icons.ice_skating)),
                          Flexible(child: Icon(Icons.icecream_rounded)),
                        ],
                      ),
                      Text(OnBoardingTitle3, overflow: TextOverflow.ellipsis),
                      Text(OnBoardingTitle3, overflow: TextOverflow.ellipsis),
                    ],
                ),
              ),
              const SizedBox(height: 5),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  // child: OutlinedButton(onPressed: () {}, 
                  child: Text("Flutter "),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}