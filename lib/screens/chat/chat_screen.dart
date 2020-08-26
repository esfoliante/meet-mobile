import 'package:flutter/material.dart';
import 'package:meet_colgaia/widgets/custom_chatappbar_widget.dart';
import 'package:meet_colgaia/widgets/friend_chatbubble_widget.dart';
import 'package:meet_colgaia/widgets/user_chatbubble_widget.dart';

class ChatScreen extends StatefulWidget {
  ChatScreen({Key key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: ChatAppBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                SizedBox(
                  height: height * 0.04,
                ),
                FriendChatBubble(),
                UserChatBubble(),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10.0,
                right: 10.0,
                bottom: 10.0,
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  hintText: "Type something...",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
