import 'package:flutter/material.dart';

class menuwidget extends StatelessWidget {
  const menuwidget({
    Key? key,
    required this.title,
    required this.icon,
    required this.OnPress,
    this.endIcon = true,
    this.textColor,
    // this endIcon =   ,
  }) : super(key: key);
  final String title;

  final IconData icon;

  final VoidCallback OnPress;

  final bool endIcon;

  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: OnPress,
        leading: Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(110),
            color: Colors.yellowAccent,
          ),
          child: Icon(
            (Icons.icecream_rounded),
          ),
        ),
        title: Text(title),
        trailing: Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.tealAccent,
          ),
          child: const Icon(Icons.access_alarm),
        ));
  }
}
