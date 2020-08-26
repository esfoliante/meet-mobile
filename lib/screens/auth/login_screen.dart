import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset(
                'assets/images/logo.png',
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(),
                    prefixIcon: Icon(FeatherIcons.mail),
                    hintText: "E-mail...",
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                ),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(),
                    prefixIcon: Icon(FeatherIcons.lock),
                    hintText: "Password...",
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.1,
              ),
              Container(
                height: height * 0.08,
                width: width * 0.5,
                decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                ),
                child: FlatButton(
                  onPressed: () => Navigator.pushNamed(context, 'home'),
                  child: Text(
                    "LOGIN",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 19.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              FlatButton(
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                child: Text(
                  "Don't have an account? Tap here!",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Colors.black87,
                  ),
                ),
                onPressed: () => Navigator.pushNamed(context, 'register'),
              ),
              SizedBox(
                height: height * 0.12,
              ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: 20.0,
                ),
                child: Text(
                  "Made with ❤️ by Miguel Ferreira",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
