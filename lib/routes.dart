import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart' as fluro;
import 'package:meet_colgaia/screens/auth/login_screen.dart';
import 'package:meet_colgaia/screens/auth/register_screen.dart';
import 'package:meet_colgaia/screens/chat/chat_hub_screen.dart';
import 'package:meet_colgaia/screens/chat/chat_screen.dart';
import 'package:meet_colgaia/screens/home_screen.dart';
import 'package:meet_colgaia/screens/presentation_screen.dart';
import 'package:meet_colgaia/screens/profile/profile_screen.dart';
import 'package:meet_colgaia/screens/splash_screen.dart';

class FluroRouter {
  static fluro.Router router = fluro.Router();

  static fluro.Handler _homeHandler = fluro.Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          HomeScreen());

  static fluro.Handler _chatHubHandler = fluro.Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          ChatHubScreen());
  static fluro.Handler _chatHandler = fluro.Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          ChatScreen());

  static fluro.Handler _profileHandler = fluro.Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          ProfileScreen());

  static fluro.Handler _splashHandler = fluro.Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          SplashScreen());

  static fluro.Handler _loginHandler = fluro.Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          LoginScreen());
  static fluro.Handler _registerHandler = fluro.Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          RegisterScreen());

  static fluro.Handler _presentationHandler = fluro.Handler(
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
