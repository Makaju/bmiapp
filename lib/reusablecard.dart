import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

typedef GenderSelect =  void Function();


class ReusableCard extends StatelessWidget {
  const ReusableCard({Key? key, required this.colour, required this.cardChild, required this.genderSelect})
      : super(key: key);

  // ignore: empty_constructor_bodies
  final Color colour;
  final Widget cardChild;
  final GenderSelect genderSelect;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:
        genderSelect,

      child: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colour,
        ),
        child: cardChild,
      ),
    );
  }
}


