import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:meet_colgaia/screens/auth/login_screen.dart';
import 'package:meet_colgaia/screens/auth/register_screen.dart';
import 'package:meet_colgaia/screens/chat/chat_hub_screen.dart';
import 'package:meet_colgaia/screens/chat/chat_screen.dart';
import 'package:meet_colgaia/screens/home_screen.dart';
import 'package:meet_colgaia/screens/presentation_screen.dart';
import 'package:meet_colgaia/screens/profile/profile_screen.dart';
import 'package:meet_colgaia/screens/splash_screen.dart';

class FluroRouter {
  static Router router = Router();

  static Handler _homeHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          HomeScreen());

  static Handler _chatHubHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          ChatHubScreen());
  static Handler _chatHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          ChatScreen());

  static Handler _profileHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          ProfileScreen());

  static Handler _splashHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          SplashScreen());

  static Handler _loginHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          LoginScreen());
  static Handler _registerHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          RegisterScreen());

  static Handler _presentationHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          PresentationScreen());

  static void setupRouter() {
    router.define(
      'home',
      handler: _homeHandler,
    );
    router.define(
      'chatHub',
      handler: _chatHubHandler,
    );
    router.define(
      'chat',
      handler: _chatHandler,
    );
    router.define(
      'profile',
      handler: _profileHandler,
    );
    router.define(
      'splash',
      handler: _splashHandler,
    );
    router.define(
      'login',
      handler: _loginHandler,
    );
    router.define(
      'register',
      handler: _registerHandler,
    );
    router.define(
      'presentation',
      handler: _presentationHandler,
    );
  }
}
