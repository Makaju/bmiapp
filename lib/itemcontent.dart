import 'package:flutter/cupertino.dart';

import 'constants.dart';



class IconContent extends StatelessWidget {
  const IconContent({required this.subTitle, required this.imageIcon});

  final String subTitle;
  final IconData imageIcon;

  @override
  Widget build(BuildContext context) {
    return Column(

      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          imageIcon,
          size: 100.0,
          color: Color(0xFF8D8E98),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          subTitle,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
