import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:meet_colgaia/widgets/custom_universalappbar_widget.dart';
import 'package:meet_colgaia/widgets/setting_card_widget.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: UniversalAppBar(
          pageName: "Profile",
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: height * 0.07,
              ),
              Container(
                width: width * 0.3,
                height: width * 0.3,
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
              SizedBox(
                height: height * 0.04,
              ),
              Text(
                "Patrícia Ramos",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: width * 0.2,
                ),
                child: SettingCard(
                  icon: FeatherIcons.book,
                  setting: "Tecnologias e Sistemas de Informação",
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: width * 0.2,
                ),
                child: SettingCard(
                  icon: FeatherIcons.search,
                  setting: "Masculino",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
