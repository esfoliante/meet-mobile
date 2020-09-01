import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class PictureCard extends StatelessWidget {
  final String name;
  final String course;
  final String school;

  const PictureCard({
    Key key,
    @required this.name,
    @required this.course,
    @required this.school,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
      height: height * 0.54,
      width: width * 0.7,
      decoration: BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
            child: Image(
              height: height * 0.39,
              width: width,
              fit: BoxFit.fitWidth,
              image: AssetImage(
                'assets/images/girl.jpg',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 20.0,
              left: 15.0,
            ),
            child: Text(
              name,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10.0,
              left: 15.0,
            ),
            child: Row(
              children: [
                Icon(
                  FeatherIcons.book,
                  color: Colors.white,
                  size: 15.0,
                ),
                SizedBox(
                  width: width * 0.01,
                ),
                Text(
                  course,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 5.0,
              left: 15.0,
            ),
            child: Row(
              children: [
                Icon(
                  FeatherIcons.home,
                  color: Colors.white,
                  size: 15.0,
                ),
                SizedBox(
                  width: width * 0.01,
                ),
                Text(
                  school,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
