import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task01/Models/descriptive.dart';

class DescriptiveComponent extends StatelessWidget {
  final Descriptif descriptif;
  DescriptiveComponent({this.descriptif});

  TextStyle styleText() {
    return TextStyle(
      color: Color(0xFF454F63),
      fontFamily: "PoppinsRegular",
      fontSize: 14.0,
    );
  }

  Widget textCustom(String title, String value) {
    return Row(
      children: [
        Text(
          title + " : ",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFF454F63),
            fontSize: 14.0,
          ),
        ),
        Text(
          value,
          style: styleText(),
        ),
      ],
    );
  }

  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 178,
      decoration: BoxDecoration(
        color: Color(0xFFF9F8FD),
        borderRadius: BorderRadius.circular(13.0),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 5.0,
          left: 25.0,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    right: 8.0,
                  ),
                  child: SvgPicture.asset("assets/imgs/up.svg"),
                ),
                textCustom("Dénivelé +", descriptif.elevationGain.toString()),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    right: 8.0,
                  ),
                  child: Column(
                    children: [
                      SvgPicture.asset("assets/imgs/flecheTrace.svg"),
                      SvgPicture.asset("assets/imgs/trace.svg"),
                    ],
                  ),
                ),
                textCustom("Dénivelé -", descriptif.elevationLoss.toString()),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Image.asset("assets/imgs/Layer 2.png"),
                textCustom("Distance", descriptif.distance.toString() + " km"),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    right: 8.0,
                  ),
                  child: Container(
                    width: 17,
                    height: 17,
                    child: SvgPicture.asset(
                      "assets/imgs/horloge.svg",
                    ),
                  ),
                ),
                Text(
                  "Durée :",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF454F63),
                    fontSize: 14.0,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  textCustom(
                    "utilisateurs",
                    descriptif.duration.toString() + " min",
                  ),
                  textCustom(
                    "Estimée",
                    descriptif.durationEstimated.toString() + " min",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
