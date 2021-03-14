import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CircleIcone extends StatelessWidget {
  final String iconePath;
  CircleIcone({@required this.iconePath});
  Widget build(BuildContext context) {
    return Container(
      width: 61,
      height: 61,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            offset: Offset(1.0, 3.0),
            blurRadius: 5.0,
            spreadRadius: -3,
          ),
        ],
      ),
      child: Center(
        child: SvgPicture.asset(
          iconePath,
        ),
      ),
    );
  }
}
