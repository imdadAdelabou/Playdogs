import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  Widget build(BuildContext context) {
    return AppBar(
      //elevation: 1.0,
      backgroundColor: Colors.white,
      leading: Padding(
        padding: EdgeInsets.only(
          left: 20.0,
        ),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  right: 20.0,
                ),
                child: Icon(
                  Icons.arrow_back,
                  color: Color(0xFF454F63),
                ),
              ),
            ),
            Text(
              "|",
              style: TextStyle(
                color: Color(0xFF454F63).withOpacity(0.2),
              ),
            ),
          ],
        ),
      ),
      centerTitle: true,
      title: Padding(
        padding: EdgeInsets.only(
          top: 20.0,
        ),
        child: Column(
          children: [
            Text(
              "Chalet des enfants",
              style: TextStyle(
                color: Color(0xFF454F63),
              ),
            ),
            Text(
              "Lausanne, Suisse",
              style: TextStyle(
                fontSize: 11.0,
                fontFamily: "PoppinsItalic",
                color: Color(0xFF454F63),
              ),
            ),
          ],
        ),
      ),
      actions: [
        Image.asset(
          "assets/imgs/dotIcone.png",
          color: Color(0xFF454F63),
          scale: 1.1,
        ),
      ],
    );
  }

  Size get preferredSize => Size.fromHeight(78);
}
