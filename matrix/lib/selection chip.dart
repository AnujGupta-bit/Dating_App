import "package:flutter/material.dart";
class singleselection extends StatefulWidget {


  @override
  State<singleselection> createState() => _singleselectionState();
}

class _singleselectionState extends State<singleselection> {
  int Index =0 ;
  final List<String> option = ['option 1 ','option 2 ','option 3 ','option 4 ',];
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10.0,
      children:List<Widget>.generate(
        option.length,
          (int index)
          {
            return ChoiceChip(
              label : Text(option[index]),
              selected:  Index == index ,
              onSelected: (bool selected)
              {
                setState(() {
                  Index  = selected ? index : Index;

                });
              },
            );
          },


      ).toList(),


    );
  }
}
