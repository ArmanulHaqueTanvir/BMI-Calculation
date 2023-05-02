import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ReuseableCard extends StatelessWidget {
  ReuseableCard(
      {super.key, required this.colour, this.cardChild, this.onPressed});

  final Color? colour;
  final Widget? cardChild;
  dynamic onPressed;

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour, //0xFF1D1E33
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: cardChild,
      ),
    );
  }
}
class Tanvir{}
