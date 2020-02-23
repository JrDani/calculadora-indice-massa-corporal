import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class IconContent extends StatelessWidget {
  IconContent({this.iconData, this.text});
  final IconData iconData;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconData,
          size: 30.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          this.text,
          style: kTextStyle,
        )
      ],
    );
  }
}
