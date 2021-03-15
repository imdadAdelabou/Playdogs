import 'package:flutter/material.dart';
import 'package:sliding_card/sliding_card.dart';
import 'package:task01/src/AddPhotoComponent.dart';
import 'package:task01/src/CommentRating.dart';
import 'package:task01/Components/AboutUser.dart';
import 'package:task01/Components/ButtonComponent.dart';
import 'package:task01/Components/CommentComponent.dart';
import 'package:task01/Components/MyAppBar.dart';
import 'package:task01/Components/QuestionComponent.dart';
import 'package:task01/src/DescriptifComponent.dart';
import 'package:task01/src/InformationTitle.dart';
import 'package:task01/Models/Descriptif.dart';
import 'package:task01/src/NoteCard.dart';
import 'package:task01/src/NoteDifficulte.dart';
import 'package:task01/src/Options.dart';
import 'package:task01/src/UserComponent.dart';
import 'package:task01/walk.dart';

class ScreenDetail extends StatefulWidget {
  final Walk walk;
  ScreenDetail({@required this.walk});
  @override
  _ScreenDetailState createState() => _ScreenDetailState();
}

class _ScreenDetailState extends State<ScreenDetail> {
  SlidingCardController controllerCard;
  double size = 5;
  bool active = false;
  double paddingRight = 30;
  double paddingLeft = 30;

  void initState() {
    super.initState();
    active = false;
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        appBar: MyAppBar(),
        body: NotificationListener<ScrollNotification>(
          onNotification: (scrollNotification) {
            setState(() {
              if (scrollNotification.metrics.pixels > 800) {
                active = true;
              } else {
                active = false;
              }
            });
            return true;
          },
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    bottom: 50.0,
                  ),
                  child: Options(
                    image: widget.walk.defaultImage,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: paddingLeft,
                    bottom: 11.0,
                  ),
                  child: Text(
                    "Descriptif",
                    style: TextStyle(
                      color: Color(0xFF454F63),
                      fontSize: 16.0,
                      fontFamily: "Poppins",
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: paddingLeft,
                    right: paddingRight,
                    bottom: 14.0,
                  ),
                  child: DescriptifComponent(
                    descriptif: Descriptif(
                      elevationGain: 131,
                      elevationLoss: 121,
                      distance: 1.85,
                      duration: 43,
                      durationEstimated: 23,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    right: paddingRight,
                    left: paddingLeft,
                    bottom: 20.0,
                  ),
                  child: NoteDifficulte(nbRating: widget.walk.nbRating),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 42.0,
                    right: paddingRight,
                    bottom: 5.0,
                  ),
                  child: Text(
                    "Petite Balade sympa avec de quoi tremper les pattes. Il y a aussi de l’espace pour faire courir \nvotre Toutou :)",
                    style: TextStyle(
                      fontFamily: "PoppinsItalic",
                      fontSize: 12.0,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    right: paddingRight,
                    left: 47.0,
                    bottom: 26.0,
                  ),
                  child: UserComponent(
                    pathImage:
                        "assets/imgs/anna-dudkova-kibVQq5HMKA-unsplash.png",
                    username: "Isabelle82",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 26.0,
                    bottom: 8.0,
                  ),
                  child: Text(
                    "Carte",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      color: Color(0xFF454F63),
                      fontSize: 16.0,
                    ),
                  ),
                ),
                //Carte Image
                Padding(
                  padding: EdgeInsets.only(
                    left: 26.0,
                    bottom: 13.0,
                  ),
                  child: Text(
                    "Photos (${widget.walk.nbPictures})",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      color: Color(0xFF454F63),
                      fontSize: 16,
                    ),
                  ),
                ),
                //Swiper Image
                SizedBox(
                  height: 13.0,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 26.0,
                    right: 26.0,
                    bottom: 31.0,
                  ),
                  child: AddPhotoComponent(),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 26.0,
                    right: 26.0,
                    bottom: 21.0,
                  ),
                  child: InformationPanel(),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: paddingLeft,
                    bottom: 8.0,
                  ),
                  child: Text(
                    "Envoyé par",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 16.0,
                      color: Color(0xFF454F63),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: paddingLeft,
                    bottom: 26.0,
                  ),
                  child: AboutUser(
                    pathImage:
                        "assets/imgs/anna-dudkova-kibVQq5HMKA-unsplash.png",
                    username: widget.walk.user.login,
                    created: DateTime.now(),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: paddingLeft,
                    bottom: 11.0,
                  ),
                  child: Text(
                    "Note",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: paddingLeft,
                    right: paddingRight,
                    bottom: 17.0,
                  ),
                  child: NoteCard(
                    nbRating: widget.walk.nbRating,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: paddingLeft,
                    right: paddingRight,
                    bottom: 26.0,
                  ),
                  child: CommentRating(
                    rating: Rating(
                      created: DateTime.now(),
                      user: User(
                        id: 1,
                        login: "Charles",
                      ),
                      content:
                          "Super endroit, balade très agréable je recommande !",
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: paddingLeft, right: paddingRight, bottom: 33.0),
                  child: ButtonComponent(
                    content: "Notez la balade",
                    action: () {},
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: paddingLeft,
                    bottom: 15.0,
                  ),
                  child: Text(
                    "Commentaires (${1})",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 16,
                      color: Color(0xFF454F63),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: paddingLeft,
                    right: paddingRight,
                    bottom: 17.0,
                  ),
                  child: CommentComponent(
                      comment: Comment(
                    content:
                        "Super endroit, balade très \nagréable je recommande !",
                    user: User(
                      login: "Marlouu87",
                    ),
                  )),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: paddingLeft, right: paddingRight, bottom: 33.0),
                  child: ButtonComponent(
                    content: "Ajouter un commentaire",
                    action: () {},
                  ),
                ),
                SizedBox(height: 20.0),
              ],
            ),
          ),
        ),
        bottomNavigationBar: active ? QuestionComponent() : null,
      ),
    );
  }
}
