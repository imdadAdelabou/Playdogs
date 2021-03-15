import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InformationSlider extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 64,
      decoration: BoxDecoration(
        color: Color(0xFFF9F8FD),
        borderRadius: BorderRadius.circular(13.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "Informations pratiques",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xFF454F63),
              fontSize: 16.0,
            ),
          ),
          IconButton(
            icon: Icon(FontAwesomeIcons.chevronDown),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
