import 'package:flutter/material.dart';

class SettingCard extends StatelessWidget {
  final IconData icon;
  final String setting;

  const SettingCard({
    Key key,
    @required this.icon,
    @required this.setting,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Row(
      children: [
        Icon(
          icon,
          size: 18.0,
        ),
        SizedBox(
          width: width * 0.02,
        ),
        Text(
          setting,
          style: TextStyle(
            fontSize: 12.0,
          ),
        ),
      ],
    );
  }
}
