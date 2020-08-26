import 'package:flutter/material.dart';
import 'package:meet_colgaia/widgets/presentation_card_widget.dart';

class PresentationScreen extends StatefulWidget {
  PresentationScreen({Key key}) : super(key: key);

  @override
  _PresentationScreenState createState() => _PresentationScreenState();
}

class _PresentationScreenState extends State<PresentationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          PresentationCard(
            title: "Welcome",
            text:
                "With this app you have the chance to meet new people from your school",
            isLast: false,
            themeColor: Colors.green,
          ),
          PresentationCard(
            title: "It's  simple to use!",
            text:
                "You just gotta like people if you like them and dislike them if you don't\nIf the person you liked also liked you, a chat will start",
            isLast: false,
            themeColor: Colors.yellow[800],
          ),
          PresentationCard(
            title: "Have respect!",
            text:
                "Even though the app was made so you can have freedom, you gotta respect others, and they will respect you",
            isLast: false,
            themeColor: Colors.grey,
          ),
          PresentationCard(
            title: "Have fun!",
            text: "Get ready to be popular and have loads of friends!",
            isLast: true,
            themeColor: Colors.lightBlue,
          ),
        ],
      ),
    );
  }
}
