import 'package:flutter/material.dart';
import 'dart:math';

class CardContant extends StatelessWidget {
  final IconData iconChoose;
  final String iconLabel;
  final double iconSize;
  final Color iconColor;
  final int iconRotation;

  CardContant(
      {@required this.iconChoose,
      @required this.iconLabel,
      @required this.iconSize,
      this.iconColor,
      @required this.iconRotation});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Transform.rotate(
          angle: iconRotation * pi / 180,
          child: Icon(
            iconChoose,
            size: iconSize,
            color: iconColor,
          ),
        ),
        SizedBox(height: 5.0),
        Text(
          iconLabel,
          style: TextStyle(
              color: Color(0xFFA8A8A8),
              fontWeight: FontWeight.w500,
              fontSize: 16),
        ),
      ],
    );
  }
}
