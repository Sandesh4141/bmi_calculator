import 'package:flutter/material.dart';
import 'constants.dart';
class BottomButton extends StatelessWidget {
  final Function onTap;
  final String buttonTitle;

  BottomButton({required this.buttonTitle, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        padding: EdgeInsets.only(bottom: 10),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
