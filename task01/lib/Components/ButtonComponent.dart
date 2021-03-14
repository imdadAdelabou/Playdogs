import 'package:flutter/material.dart';

class ButtonComponent extends StatelessWidget {
  final String content;
  final Function() action;
  ButtonComponent({@required this.content, this.action});
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 41,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(9.0),
        ),
        color: Color(0xFFA490EC),
        onPressed: action,
        child: Text(
          content,
          style: TextStyle(
            fontFamily: "Poppins",
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
