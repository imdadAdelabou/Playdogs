import 'package:flutter/material.dart';

class AboutUser extends StatelessWidget {
  final String pathImage;
  final String username;
  final DateTime created;
  AboutUser(
      {@required this.pathImage,
      @required this.username,
      @required this.created});
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 9.0),
          child: CircleAvatar(
            radius: 40.0,
            backgroundColor: Color(0xFFA490EC),
            child: CircleAvatar(
              radius: 38.0,
              backgroundImage: AssetImage(pathImage),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              username,
              style: TextStyle(
                color: Color(0xFFA490EC),
                fontFamily: "Poppins",
                fontSize: 15.0,
              ),
            ),
            Text(
              "Le " +
                  created.day.toString() +
                  "." +
                  created.month.toString() +
                  "." +
                  created.year.toString(),
              style: TextStyle(
                fontFamily: "PoppinsLight",
                color: Color(0xFF454F63),
              ),
            )
          ],
        ),
      ],
    );
  }
}
