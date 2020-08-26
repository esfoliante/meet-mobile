import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:meet_colgaia/widgets/custom_appbar_widget.dart';
import 'package:meet_colgaia/widgets/picture_card.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: height * 0.1),
              PictureCard(
                name: "Bárbara Monteiro",
                course: "Análises Quimico Biológicas",
              ),
              SizedBox(
                height: height * 0.07,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: width * 0.25,
                  right: width * 0.25,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: width * 0.16,
                      height: height * 0.08,
                      decoration: BoxDecoration(
                        color: Colors.red[700],
                        borderRadius: BorderRadius.circular(
                          30.0,
                        ),
                      ),
                      child: IconButton(
                        icon: Icon(
                          FeatherIcons.thumbsDown,
                          color: Colors.white,
                          size: 25.0,
                        ),
                        onPressed: () => print("Rejected"),
                      ),
                    ),
                    Container(
                      width: width * 0.16,
                      height: height * 0.08,
                      decoration: BoxDecoration(
                        color: Colors.green[600],
                        borderRadius: BorderRadius.circular(
                          30.0,
                        ),
                      ),
                      child: IconButton(
                        icon: Icon(
                          FeatherIcons.thumbsUp,
                          color: Colors.white,
                          size: 25.0,
                        ),
                        onPressed: () => print("Accepted"),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
