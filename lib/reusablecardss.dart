
import 'package:flutter/cupertino.dart';

class ReusableCardss extends StatelessWidget {
  const ReusableCardss({
    Key? key,required this.colour,required this.cardChild
  }) : super(key: key);
  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: colour,
      ),
      child: Center(child: cardChild),
    );
  }
}




