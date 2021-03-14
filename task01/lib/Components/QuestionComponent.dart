import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task01/Components/Response.dart';

class QuestionComponent extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          5.0,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Avez-vous déja \nfait cette balade?",
            style: TextStyle(
              fontSize: 20.0,
              color: Color(0xFF454F63),
              fontFamily: "Poppins",
            ),
          ),
          Row(
            children: [
              Response(
                icon: FontAwesomeIcons.times,
                couleur: Colors.red,
              ),
              SizedBox(width: 15.0),
              Response(
                icon: FontAwesomeIcons.check,
                couleur: Colors.green,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
