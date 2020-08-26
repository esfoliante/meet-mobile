import 'package:flutter/material.dart';

class ChatCard extends StatelessWidget {
  final String name;
  final bool isOnline;
  final String onlineTime;

  const ChatCard({
    Key key,
    @required this.name,
    @required this.isOnline,
    @required this.onlineTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
      width: width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  width: width * 0.15,
                  height: width * 0.15,
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
              ),
              Text(
                name,
                style: TextStyle(
                  fontSize: 17.0,
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
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Text(
              onlineTime,
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
