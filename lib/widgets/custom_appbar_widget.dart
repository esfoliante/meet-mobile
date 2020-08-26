import 'package:flutter/material.dart';
import "package:flutter_feather_icons/flutter_feather_icons.dart";

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return AppBar(
      backgroundColor: Colors.white,
      title: Image.asset(
        'assets/images/logo.png',
        width: width * 0.4,
      ),
      centerTitle: true,
      leading: IconButton(
        icon: Icon(FeatherIcons.user, color: Colors.black87),
        onPressed: () => Navigator.pushNamed(context, 'profile'),
      ),
      actions: [
        IconButton(
          icon: Icon(FeatherIcons.messageSquare, color: Colors.black87),
          onPressed: () => Navigator.pushNamed(context, 'chatHub'),
        ),
      ],
      elevation: 1,
    );
  }
}
