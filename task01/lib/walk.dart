import 'package:flutter/widgets.dart';

class Walk {
  double lat;
  double longitude;
  int id;

  String name;
  final int duration;
  final int durationEstimated;

  int difficulty;
  final double distance;
  String region;
  String country;
  double averageRating; // note moyenne
  final int nbRating;

  int nbViews;
  int nbBookmarked;
  bool isBookmark = false;
  List<String> keywords = List<
      String>(); //Informations pratiques. Tu peux en faire que 1 (Laisse : Partiellement attaché", et les Dangers, c'est suffisant).
  DateTime dateIn;

  String description;
  List<String> keyword = List<String>(); //Used for
  final User user; // User that created the walk

  final int elevationGain; //denivele +
  final int elevationLoss;

  final String defaultImage; // Used for top picture

  List<Comment> comments = List(); //List of comments
  List<Rating> ratings = List(); // List of ratings
  final int nbPictures;

  List<WalkImage> images = List<WalkImage>();
  // List of pictures (needed only for the swipe)
  Walk({
    this.defaultImage,
    this.elevationGain,
    this.elevationLoss,
    this.duration,
    this.durationEstimated,
    this.distance,
    this.nbRating,
    this.nbPictures,
    this.user,
    this.comments,
  });
}

class User {
  final int id;
  final String login;
  User({this.id, @required this.login});
}

class WalkImage {
  int id;
  String path;
  WalkImage({this.id, this.path});
}

class Comment {
  //WalkPosition walk;
  final int id;
  final String content;
  final User user;
  final DateTime created;
  Comment({
    this.id,
    this.content,
    this.user,
    this.created,
  });
}

class Rating {
  int id;
  final String content;
  final User user;
  int rating;
  final DateTime created;
  String type;
  int ratingVisitors;
  int ratingDifficulty;
  int ratingWeather;
  String activity;
  int duration;

  Rating({
    this.user,
    this.created,
    this.content,
  });
}
