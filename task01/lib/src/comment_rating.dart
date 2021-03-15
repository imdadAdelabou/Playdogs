import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task01/walk.dart';

class RatingElement extends StatelessWidget {
  final String element;
  RatingElement({this.element});
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          element,
          style: TextStyle(
            fontFamily: "Poppins",
            color: Color(0xFF454F63),
          ),
        ),
        SvgPicture.asset("assets/imgs/etoile.svg"),
      ],
    );
  }
}

class CommentRating extends StatelessWidget {
  final Rating rating;
  CommentRating({this.rating});
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 195,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            offset: Offset(0.0, 3.0),
            blurRadius: 5.0,
            spreadRadius: -3,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 15.0,
          left: 20.0,
          right: 20.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  rating.user.login,
                  style: TextStyle(
                    color: Color(0xFF454F63),
                    fontFamily: "Poppins",
                    fontSize: 18.0,
                  ),
                ),
                Text(
                  "Le " +
                      rating.created.day.toString() +
                      " /" +
                      rating.created.month.toString() +
                      " / " +
                      rating.created.year.toString(),
                  style: TextStyle(
                    fontFamily: "Poppins",
                    color: Color(0xFF454F63),
                    fontSize: 11.0,
                  ),
                ),
              ],
            ),
            Text(
              "<< " + rating.content + " >>",
              style: TextStyle(
                fontFamily: "PoppinsItalic",
                color: Color(0xFF454F63),
                fontSize: 11.0,
              ),
            ),
            RatingElement(element: "Nombre de visiteurs"),
            SizedBox(height: 5.0),
            RatingElement(element: "Difficulté"),
            SizedBox(height: 5.0),
            RatingElement(element: "Météo"),
            SizedBox(height: 5.0),
            RatingElement(element: "Note Globale"),
          ],
        ),
      ),
    );
  }
}
