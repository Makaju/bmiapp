
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundActionButton extends StatefulWidget {
  final int number;
  RoundActionButton({Key? key,required this.actionIcon,required  this.number,required this.onTap}) : super(key: key);
  late IconData actionIcon;
  final Function onTap;

  @override
  State<RoundActionButton> createState() => _RoundActionButtonState();
}

class _RoundActionButtonState extends State<RoundActionButton> {

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: BoxConstraints.tightFor(
        height: 56,
        width: 56,
      ),
      shape: CircleBorder(),
      fillColor:Color(0xFF4C4F5E),
      elevation: 6.0,
      child: Icon(widget.actionIcon, color: Colors.white,),
      onPressed: (){
        setState(() {
          widget.onTap();
          //print('--');
        });

      },
    );
  }
}
