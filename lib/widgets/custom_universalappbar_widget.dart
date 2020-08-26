import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class UniversalAppBar extends StatelessWidget {
  final String pageName;

  const UniversalAppBar({
    Key key,
    @required this.pageName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Text(
        pageName,
        style: TextStyle(
          color: Colors.black87,
        ),
      ),
      centerTitle: true,
      leading: IconButton(
        icon: Icon(FeatherIcons.arrowLeft, color: Colors.black87),
        onPressed: () => Navigator.pushNamed(context, 'home'),
      ),
      elevation: 1,
    );
  }
}
