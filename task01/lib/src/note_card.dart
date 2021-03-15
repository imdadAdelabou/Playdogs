import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProgressRating extends StatelessWidget {
  final int number;
  final double width;
  ProgressRating({this.number, this.width});
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          number.toString(),
          style: TextStyle(
            fontSize: 14.0,
          ),
        ),
        SizedBox(width: 2.0),
        Image.asset(
          "assets/imgs/icons8-star-filled-48.png",
          scale: 5,
        ),
        SizedBox(width: 2.0),
        Container(
          width: width,
          height: 5.0,
          decoration: BoxDecoration(
            color: Color(0xFF454F63),
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
      ],
    );
  }
}

class RatingDiagram extends StatelessWidget {
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProgressRating(number: 5, width: 150.0),
        ProgressRating(number: 4, width: 100.0),
        ProgressRating(number: 3, width: 70.0),
        ProgressRating(number: 2, width: 40.0),
        ProgressRating(number: 1, width: 20.0),
      ],
    );
  }
}

class NoteCard extends StatelessWidget {
  final int nbRating;
  NoteCard({
    this.nbRating,
  });
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            offset: Offset(0.0, 3.0),
            blurRadius: 4.0,
            spreadRadius: -3,
          )
        ],
        borderRadius: BorderRadius.circular(
          5.0,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 25.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(
                        "3.00",
                        style: TextStyle(
                          fontSize: 40.0,
                          color: Color(0xFF454F63),
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Image.asset(
                        "assets/imgs/icons8-star-filled-48.png",
                        scale: 2,
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 28.0),
                    child: Text(
                      nbRating.toString() + " avis",
                      style: TextStyle(
                        fontFamily: "PoppinsLight",
                        color: Color(0xFF454F63),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 5.0),
              child: RatingDiagram(),
            ),
          ),
        ],
      ),
    );
  }
}
