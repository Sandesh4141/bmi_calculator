import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ReusableContainer extends StatelessWidget {
  final Color cardColor;
  final Widget cardChild;
  final Function onPress;

  ReusableContainer(
      {super.key,
      required this.cardColor,
      required this.cardChild,
      required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPress();
      },
      child: Expanded(


        child: Container(
        height: 150.0,
          child: cardChild,
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: cardColor,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
