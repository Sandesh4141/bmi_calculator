import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {
  IconContent({required this.icon, required this.iconText});

  final IconData icon; // Corrected type from FontAwesomeIcons to IconData
  final String iconText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(icon, color: Colors.white), // The icon should now work
        SizedBox(
          height: 10,
        ),
        Text(
          iconText,
          style: kLabelStyle,
        )
      ],
    );
  }
}
