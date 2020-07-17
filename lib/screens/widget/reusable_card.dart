import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget cardChild;
  final Function onPress;
  ReusableCard({@required this.colour, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        transform: Matrix4.translationValues(0, -41, 0),
        height: 130,
        child: cardChild,
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: colour,
          boxShadow: [
            BoxShadow(color: Colors.grey, blurRadius: 7.0),
          ],
        ),
      ),
    );
  }
}
