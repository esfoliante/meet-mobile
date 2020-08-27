import 'package:flutter/material.dart';
import 'package:meet_colgaia/widgets/chatbubble_widget.dart';
import 'package:meet_colgaia/widgets/custom_chatappbar_widget.dart';
import 'dart:math';

// Generates a random string for test purposes
String generateRandomString(int len) {
  var r = Random();
  return String.fromCharCodes(
      List.generate(len, (index) => r.nextInt(33) + 89));
}

bool randIsUser() {
  var r = Random();
  return r.nextBool();
}

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
      resizeToAvoidBottomInset: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: ChatAppBar(),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: ListView(
                reverse: true,
                children: [
                  ChatBubble(
                    alignment: Alignment.topRight,
                    message: "Mensagem final",
                    color: Colors.cyan[600],
                  ),
                  for (int i = 0; i < 100; i++) ...[
                    ChatBubble(
                      alignment: Alignment.topRight,
                      message: "Hey",
                      color: Colors.cyan[600],
                    ),
                    ChatBubble(
                      alignment: Alignment.topLeft,
                      message: "Hey",
                      color: Colors.grey[500],
                    )
                  ],
                ],
              ),
            ),
            SizedBox(
              height: height * 0.04,
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
