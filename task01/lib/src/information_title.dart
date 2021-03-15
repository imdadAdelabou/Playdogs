import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InformationTitle extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Color(0xFFF9F8FD),
        borderRadius: BorderRadius.circular(13.0),
      ),
      child: ExpansionTile(
        title: Text(
          "Informations pratiques",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFF454F63),
            fontSize: 16.0,
          ),
        ),
        children: [
          Text("Data"),
        ],
        trailing: IconButton(
          icon: Icon(FontAwesomeIcons.chevronDown),
          onPressed: () {},
        ),
      ),
    );
  }
}

class InformationPanel extends StatefulWidget {
  @override
  _InformationPanelState createState() => _InformationPanelState();
}

class _InformationPanelState extends State<InformationPanel> {
  bool isExpand = false;

  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: ExpansionPanelList(
          elevation: 0,
          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              isExpand = !isExpanded;
            });
          },
          children: [
            ExpansionPanel(
              canTapOnHeader: true,
              backgroundColor: Color(0xFFF9F8FD),
              headerBuilder: (context, isExpanded) {
                return ListTile(
                  title: Text(
                    "Informations pratiques",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF454F63),
                      fontSize: 16.0,
                    ),
                  ),
                );
              },
              isExpanded: isExpand,
              body: Content(),
            ),
          ]),
    );
  }
}

class CustomText extends StatelessWidget {
  final String title;
  CustomText({@required this.title});
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 14.0,
          fontFamily: "Poppins",
          color: Color(0xFF454F63),
        ),
      ),
    );
  }
}

class Content extends StatelessWidget {
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(title: "Laisse :"),
        ContentComponent(content: "Partiellement attaché"),
        SizedBox(height: 9.0),
        CustomText(title: "Fréquentation :"),
        ContentComponent(content: "Moyen"),
        SizedBox(height: 9.0),
        CustomText(title: "Accessiblité :"),
        Row(children: [
          ContentComponent(content: "Une poussette"),
          ContentComponent(content: "Des enfants"),
        ]),
        SizedBox(height: 9.0),
        CustomText(title: "Point d'eau"),
        ContentComponent(content: "Route"),
        SizedBox(height: 9.0),
        CustomText(title: "Typologie"),
        ContentComponent(content: "Route"),
        SizedBox(height: 9.0),
        CustomText(title: "Type de circuit"),
        ContentComponent(content: "Circulaire"),
        SizedBox(height: 9.0),
        CustomText(title: "Paysage"),
        ContentComponent(content: "Forét"),
        SizedBox(height: 9.0),
        CustomText(title: "Infos utiles"),
        ContentComponent(content: "Parking"),
        SizedBox(height: 9.0),
        CustomText(title: "Dangers"),
        Padding(
          padding: const EdgeInsets.only(left: 16.0, bottom: 23.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Chenilles",
                style: TextStyle(
                  fontSize: 14.0,
                  color: Color(0xFF454F63),
                  fontFamily: "PoppinsRegular",
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 21.0),
                child: Text(
                  "Déclarer un danger",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    color: Color(0xFFA490EC),
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ContentComponent extends StatelessWidget {
  final String pathIcone;
  final String content;
  ContentComponent({this.pathIcone, this.content});
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16.0,
      ),
      child: Row(
        children: [
          Icon(Icons.add),
          Text(
            content,
            style: TextStyle(
              fontSize: 14.0,
              color: Color(0xFF454F63),
              fontFamily: "PoppinsRegular",
            ),
          ),
        ],
      ),
    );
  }
}
