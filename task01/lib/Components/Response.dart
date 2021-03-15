import 'package:flutter/material.dart';

class Response extends StatelessWidget {
  final IconData icon;
  final Color couleur;
  final Function() action;
  Response({this.icon, this.couleur, this.action});
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: couleur.withOpacity(0.2),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: IconButton(
        onPressed: action,
        icon: Icon(
          icon,
          color: couleur,
        ),
      ),
    );
  }
}
