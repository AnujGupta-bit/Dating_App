import 'package:flutter/material.dart';
class listv extends StatefulWidget {

  @override
  State<listv> createState() => _listvState();
}

class _listvState extends State<listv> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
      ),
      body: ListView(
        reverse: true,
        children: [
          ListTile(
            leading: IconButton(
              onPressed: (){},
              icon: Icon( Icons.abc_outlined),
            ),
            title: Text(" Home"),
            trailing: IconButton(
              onPressed: (){},
              icon:  Icon(Icons.info),
            ),
          ),
          ListTile(

            leading: Icon(Icons.add),
            title: Text(" First"),
            trailing: IconButton(
              onPressed: (){},
              icon:  Icon(Icons.accessibility_new_sharp),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text(" First"),
            trailing: IconButton(
              onPressed: (){},
              icon:  Icon(Icons.info),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text(" First"),
            trailing: IconButton(
              onPressed: (){},
              icon:  Icon(Icons.info),
            ),
          ),
Divider(thickness: 2,height: 100,),
ListTile(
  leading: Icon(Icons.account_balance),
  title: Text(" first"),

),


        ],
      ),
    );
  }
}
