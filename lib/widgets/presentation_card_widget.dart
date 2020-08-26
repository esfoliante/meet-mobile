import 'package:flutter/material.dart';

class PresentationCard extends StatelessWidget {
  final String title;
  final String text;
  final bool isLast;
  final Color themeColor;

  const PresentationCard({
    Key key,
    @required this.title,
    @required this.text,
    @required this.isLast,
    @required this.themeColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
      height: height,
      width: width,
      color: themeColor,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: height * 0.1,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: height * 0.1,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                "(Swipe to continue)",
                style: TextStyle(
                  fontSize: 10.0,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: height * 0.1,
            ),
            if (isLast)
              Container(
                width: width * 0.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                ),
                child: FlatButton(
                  onPressed: () => Navigator.pushNamed(context, 'home'),
                  child: Text("Let's get started"),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
