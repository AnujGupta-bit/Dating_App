import 'package:flutter/material.dart';
import 'package:matrix/colors.dart';
import 'package:matrix/imgString.dart';
import 'package:matrix/src/widgets/menuwidget.dart';
import 'package:matrix/src/widgets/updateprofile.dart';

class profilescreen extends StatelessWidget {
  const profilescreen({super.key});

  get Get => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.line_axis_outlined),
        ),
        title: Text(
          "Yours",
          style: TextStyle(fontSize: 25),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.line_axis_outlined))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: 120,
              height: 120,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image(
                    image: AssetImage(OnBoardImage3),
                  )),
            ),
            Positioned(
              bottom: 20,
              right: 0,
              child: Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),

                ),
                child: const Icon((Icons.edit),
                color: Colors.white,
                size : 20 ,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text("high"),
            Text("on life "),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: () => updateurprofile(),
                child: const Text(
                  " BE SOCIAL",
                  style: TextStyle(color: Colors.pink),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Divider(),
            const SizedBox(
              height: 10,
            ),
            menuwidget(
              title: "settings",
              icon: Icons.line_weight,
              OnPress: () {},
            ),
            menuwidget(title: "sorry", icon: Icons.home, OnPress: () {}),
            menuwidget(
              title: "hello",
              icon: Icons.line_weight,
              OnPress: () {},
            ),
            menuwidget(
              title: "greetings",
              icon: Icons.line_weight,
              OnPress: () {},
            ),
            menuwidget(
              title: "blood",
              icon: Icons.line_weight,
              OnPress: () {},
            ),
            const Divider(),
            menuwidget(title: "logOUt", icon: Icons.logout, OnPress: () {}),
          ],
        ),
      ),
    );
  }
}

// class menuwidget extends StatelessWidget {
//   const menuwidget({
//     Key? key ,
//     required this.title,
//     required this.icon ,
//     required this.OnPress,
//     this.endIcon = true ,
//     this.textColor ,
//     // this endIcon =   ,
//
//
//
//   }):   super(key : key);
//   final String title ;
//   final IconData icon  ;
//   final VoidCallback OnPress ;
//   final bool endIcon ;
//   final Color? textColor ;
//
//
//   @override
//   Widget build(BuildContext context) {
//
//     return ListTile(
//
//         onTap: OnPress ,
//         leading: Container(
//           width: 30 ,
//           height: 30,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(110),
//             color: Colors.yellowAccent,
//
//
//           ),
//           child:   Icon((Icons.icecream_rounded),),
//         ),
//         title: Text(title ),
//
//         trailing:  Container(
//           width: 30 ,
//           height: 30,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(100),
//             color: Colors.tealAccent ,
//           ),
//
//           child: const Icon(Icons.access_alarm),
//
//
//         )
//
//
//
//
//     );
//
//
//
//   }
// }
