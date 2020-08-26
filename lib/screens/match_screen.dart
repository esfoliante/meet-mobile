import 'package:flutter/material.dart';

class MatchScreen extends StatefulWidget {
  MatchScreen({Key key}) : super(key: key);

  @override
  _MatchScreenState createState() => _MatchScreenState();
}

class _MatchScreenState extends State<MatchScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: width,
          height: height,
          color: Color(0xff000000).withOpacity(0.8),
          child: Column(
            children: [
              SizedBox(
                height: height * 0.15,
              ),
              Container(
                width: width * 0.6,
                height: width * 0.6,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/images/girl.jpg',
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.07,
              ),
              Text(
                'Catarina Monteiro liked you!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Text(
                "Why don't you say hi?!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 19.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(
                height: height * 0.15,
              ),
              Container(
                height: height * 0.08,
                width: width * 0.5,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                ),
                child: FlatButton(
                  onPressed: () => Navigator.pushNamed(context, 'chat'),
                  child: Text(
                    "SEND MESSAGE",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 19.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
