import 'package:flutter/material.dart';
import 'package:meet_colgaia/widgets/chat_card_widget.dart';
import 'package:meet_colgaia/widgets/custom_universalappbar_widget.dart';

class ChatHubScreen extends StatefulWidget {
  ChatHubScreen({Key key}) : super(key: key);

  @override
  _ChatHubScreenState createState() => _ChatHubScreenState();
}

class _ChatHubScreenState extends State<ChatHubScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: UniversalAppBar(
          pageName: "Chat",
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            InkWell(
              onTap: () => Navigator.pushNamed(context, 'chat'),
              child: ChatCard(
                name: "Catarina Ferreira",
                onlineTime: "10m",
                isOnline: true,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: width * 0.04,
                right: width * 0.04,
              ),
              child: Divider(
                thickness: 1,
              ),
            ),
            ChatCard(
              name: "Ana Silva",
              onlineTime: "15m",
              isOnline: false,
            ),
          ],
        ),
      ),
    );
  }
}
