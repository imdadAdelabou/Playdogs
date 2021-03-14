import 'package:flutter/material.dart';

class UserComponent extends StatelessWidget {
  final String pathImage;
  final String username;
  UserComponent({
    @required this.pathImage,
    @required this.username,
  });
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(
            right: 5.0,
          ),
          child: CircleAvatar(
            radius: 12.0,
            backgroundImage: AssetImage(pathImage),
          ),
        ),
        Text(
          username,
          style: TextStyle(
            fontSize: 11.0,
            fontFamily: "assets/fonts/Poppins-Light.ttf",
            color: Color(0xFF454F63),
          ),
        ),
      ],
    );
  }
}
