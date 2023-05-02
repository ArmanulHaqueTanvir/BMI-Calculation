import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  var onTap;
  final String text;

  BottomButton({required this.onTap, required this.text});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 15.0),
          child: Center(
            child: Text(
              text,
              style: middleNumTextStyle,
            ),
          ),
        ),
        color: bottomContainerColour,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: bottomContainerHeight,
      ),
    );
  }
}
