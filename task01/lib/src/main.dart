import 'package:flutter/material.dart';
import 'package:task01/src/ScreenDetail.dart';
import 'package:task01/walk.dart';

void main() {
  runApp(MyApp());
}

Walk walk = Walk(
  defaultImage: "assets/imgs/tadeusz-lakota-dtxT-nFdPTc-unsplash.png",
  elevationGain: 131,
  elevationLoss: 121,
  distance: 1.85,
  duration: 43,
  durationEstimated: 23,
  nbRating: 15,
  nbPictures: 15,
  user: User(login: "Isabelle82"),
);

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: ScreenDetail(
        walk: walk,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
