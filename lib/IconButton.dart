import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({
    required this.icons,
    required this.onPressed,
  });

  var onPressed;
  final IconData icons;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Icon(icons),
      elevation: 60.0,
      constraints: BoxConstraints(
        maxHeight: 55.0,
        minHeight: 55.0,
        maxWidth: 55.0,
        minWidth: 55.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
