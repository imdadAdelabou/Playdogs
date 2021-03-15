import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NoteDifficulte extends StatelessWidget {
  final int nbRating;
  NoteDifficulte({@required this.nbRating});
  TextStyle inBold() {
    return TextStyle(
      fontWeight: FontWeight.bold,
      color: Color(0xFF454F63),
      fontSize: 14.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 70.0,
      decoration: BoxDecoration(
        color: Color(0xFFF9F8FD),
        borderRadius: BorderRadius.circular(13.0),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 30.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                Text(
                  "Difficulté : ",
                  style: inBold(),
                ),
                Text("1/5"),
              ],
            ),
            Row(
              children: [
                Text(
                  "Note moyenne :  ",
                  style: inBold(),
                ),
                SvgPicture.asset("assets/imgs/etoile.svg"),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  nbRating.toString() + " avis",
                  style: TextStyle(
                    fontSize: 12.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
