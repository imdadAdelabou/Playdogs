import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task01/Components/circle_icone.dart';

class Options extends StatelessWidget {
  final String image;
  final double top = 208;
  Options({@required this.image});
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 239,
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 18.0,
          left: MediaQuery.of(context).size.width - 125,
          child: SvgPicture.asset("assets/imgs/promn.svg"),
        ),
        Positioned(
          top: 208,
          left: 26.0,
          child: CircleIcone(iconePath: "assets/imgs/add-a-photo.svg"),
        ),
        Positioned(
          top: top,
          left: 98.0,
          child: CircleIcone(iconePath: "assets/imgs/direction.svg"),
        ),
        Positioned(
          top: top,
          left: 170,
          child: CircleIcone(iconePath: "assets/imgs/downloadIcone.svg"),
        ),
        Positioned(
          top: top,
          left: 320,
          child: CircleIcone(
            iconePath: "assets/imgs/favoris.svg",
          ),
        ),
      ],
    );
  }
}
