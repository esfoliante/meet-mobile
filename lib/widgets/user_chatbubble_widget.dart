import 'package:flutter/material.dart';

class UserChatBubble extends StatelessWidget {
  const UserChatBubble({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: Alignment.topRight,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 5.0,
            left: 15.0,
            bottom: 5.0,
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.cyan[600],
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
                bottomLeft: Radius.circular(20.0),
              ),
            ),
            constraints: BoxConstraints(
              minHeight: height * 0.04,
              minWidth: width * 0.25,
              maxWidth: width * 0.43,
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Hello world",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
