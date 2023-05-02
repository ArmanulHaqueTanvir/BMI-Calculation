import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  ReuseableCard({required this.colour, this.cardChild, this.onPressed});

  final Color? colour;
  final Widget? cardChild;
  dynamic onPressed;

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour, //0xFF1D1E33
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
