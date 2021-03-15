import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task01/walk.dart';

class CommentComponent extends StatelessWidget {
  final Comment comment;
  CommentComponent({this.comment});
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      padding: EdgeInsets.only(
        left: 10.0,
      ),
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
      child: Row(
        children: [
          Container(
            width: 85,
            height: 90.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Colors.red,
            ),
          ),
          SizedBox(width: 20.0),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  comment.user.login,
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 16,
                    color: Color(0xFF454F63),
                  ),
                ),
                SizedBox(height: 5.0),
                SvgPicture.asset("assets/imgs/etoile.svg"),
                SizedBox(height: 8.0),
                Text(
                  "<< " + comment.content + " >>",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    color: Color(0xFF454F63),
                    fontSize: 10.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
