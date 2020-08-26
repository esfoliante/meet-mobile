import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meet_colgaia/routes.dart';
import 'package:meet_colgaia/theme.dart';

void main() {
  FluroRouter.setupRouter();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeLight(),
      // ! YO, you will only change the code here okay?!
      initialRoute: 'login',
      onGenerateRoute: FluroRouter.router.generator,
    );
  }
}
