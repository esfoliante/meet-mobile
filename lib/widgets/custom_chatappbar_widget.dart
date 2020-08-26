import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class ChatAppBar extends StatelessWidget {
  const ChatAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    bool isOnline = false;

    return AppBar(
      backgroundColor: Colors.white,
      title: Row(
        children: [
          SizedBox(
            width: width * 0.12,
          ),
          Text(
            "Catarina Ferreira",
            style: TextStyle(
              color: Colors.black87,
            ),
          ),
          SizedBox(
            width: width * 0.01,
          ),
          if (isOnline)
            Container(
              width: height * 0.01,
              height: height * 0.01,
              decoration: BoxDecoration(
                color: Colors.cyan,
                shape: BoxShape.circle,
              ),
            ),
        ],
      ),
      centerTitle: true,
      leading: IconButton(
        icon: Icon(
          FeatherIcons.arrowLeft,
          color: Colors.black87,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      elevation: 1,
    );
  }
}
