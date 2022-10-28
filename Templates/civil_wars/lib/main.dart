// ignore_for_file: prefer_const_constructors

import 'package:civil_wars/info_page_manipulation/info_content.dart';
import 'package:civil_wars/screens/choose_your_warrior.dart';
import 'package:civil_wars/screens/home.dart';
import 'package:civil_wars/screens/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:civil_wars/info_page_manipulation/index_file.dart';
import 'package:civil_wars/components/warrior_card.dart';
import 'package:civil_wars/screens/amara_info.dart';
import 'package:civil_wars/screens/brina_info.dart';
import 'package:civil_wars/screens/bulruk_info.dart';
import 'package:civil_wars/screens/galdor_info.dart';
import 'package:civil_wars/screens/igor_info.dart';
import 'package:civil_wars/screens/kyla_info.dart';
import 'package:civil_wars/screens/lago_info.dart';
import 'package:civil_wars/screens/misi_info.dart';
import 'package:civil_wars/screens/rorik_info.dart';
import 'package:civil_wars/screens/zaria_info.dart';

void main() {
  runApp(CivilWars());
}

class CivilWars extends StatelessWidget {
  // InfoContent info = InfoContent();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Civil Wars",
      initialRoute: "/theSplashScreen",
      routes: {
        "/theSplashScreen": (context) => TheSplashScreen(),
        "/homePage": (context) => HomePage(),
        "/chooseYourWarrior": (context) => ChooseYourWarrior(),
        "/amaraInfo": (context) => AmaraInfo(),
        "/brinaInfo": (context) => BrinaInfo(),
        "/bulrukInfo": (context) => BulrukInfo(),
        "/galdorInfo": (context) => GaldorInfo(),
        "/igorInfo": (context) => IgorInfo(),
        "/kylaInfo": (context) => KylaInfo(),
        "/lagoInfo": (context) => LagoInfo(),
        "/misiInfo": (context) => MisiInfo(),
        "/rorikInfo": (context) => RorikInfo(),
        "/zariaInfo": (context) => ZariaInfo(),
      },
    );
  }
}
