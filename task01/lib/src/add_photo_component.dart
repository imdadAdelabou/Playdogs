import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddPhotoComponent extends StatelessWidget {
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset("assets/imgs/border.svg"),
        Positioned.fill(
          top: 18.0,
          child: Column(
            children: [
              SvgPicture.asset("assets/imgs/add-a-photo.svg"),
              Text(
                "Ajouter des photos",
                style: TextStyle(
                  fontFamily: "Poppins",
                  color: Color(0xFFA490EC),
                  fontSize: 12.0,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
