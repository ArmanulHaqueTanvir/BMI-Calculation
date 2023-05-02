import 'package:flutter/material.dart';
import 'constants.dart';

class iconContent extends StatelessWidget {
  final String iconText;
  final IconData iconImage;

  iconContent({required this.iconImage, required this.iconText});
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconImage,
          size: 60.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          iconText,
          style: labelTextStyle,
        )
      ],
    );
  }
}
