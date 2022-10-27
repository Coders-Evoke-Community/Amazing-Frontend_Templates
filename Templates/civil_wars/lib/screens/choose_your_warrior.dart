// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:civil_wars/components/warrior_card.dart';
import 'package:civil_wars/constants.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'amara_info.dart';
import 'package:civil_wars/info_page_manipulation/info_content.dart';
import 'package:civil_wars/info_page_manipulation/index_file.dart';

class ChooseYourWarrior extends StatefulWidget {
  const ChooseYourWarrior({Key? key}) : super(key: key);

  @override
  State<ChooseYourWarrior> createState() => _ChooseYourWarriorState();
}

class _ChooseYourWarriorState extends State<ChooseYourWarrior> {
  // InfoContent info = InfoContent();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: kDarkBlue,
        backgroundColor: kRed,
        centerTitle: true,
        title: Text(
          "CHOOSE YOUR WARRIOR",
          style: TextStyle(
            fontFamily: "Lilita One",
            fontWeight: FontWeight.bold,
            fontSize: 22.0,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              kRed,
              kDarkBlue,
            ],
          ),
        ),
        child: ListView(
          children: <Widget>[
            WarriorCard(
              warriorName: "amara",
              onPressingSelect: () {
                chosenWarriorName = "amara";
                chosenPower = 1;
                Navigator.pushNamed(context, "/homePage");
              },
              onPressingInfo: () {
                //info.index = names.indexOf("amara");
                Navigator.pushNamed(context, "/amaraInfo");
              },
            ),
            WarriorCard(
              warriorName: "brina",
              onPressingSelect: () {
                chosenWarriorName = "brina";
                chosenPower = 2;
                Navigator.pushNamed(context, "/homePage");
              },
              onPressingInfo: () {
                //info.index = names.indexOf("brina");
                Navigator.pushNamed(context, "/brinaInfo");
              },
            ),
            WarriorCard(
              warriorName: "bulruk",
              onPressingSelect: () {
                chosenWarriorName = "bulruk";
                chosenPower = 3;
                Navigator.pushNamed(context, "/homePage");
              },
              onPressingInfo: () {
                //info.index = names.indexOf("bulruk");
                Navigator.pushNamed(context, "/bulrukInfo");
              },
            ),
            WarriorCard(
              warriorName: "galdor",
              onPressingSelect: () {
                chosenWarriorName = "galdor";
                chosenPower = 4;
                Navigator.pushNamed(context, "/homePage");
              },
              onPressingInfo: () {
                //info.index = names.indexOf("galdor");
                Navigator.pushNamed(context, "/galdorInfo");
              },
            ),
            WarriorCard(
              warriorName: "igor",
              onPressingSelect: () {
                chosenWarriorName = "igor";
                chosenPower = 5;
                Navigator.pushNamed(context, "/homePage");
              },
              onPressingInfo: () {
                //info.index = names.indexOf("igor");
                Navigator.pushNamed(context, "/igorInfo");
              },
            ),
            WarriorCard(
              warriorName: "kyla",
              onPressingSelect: () {
                chosenWarriorName = "kyla";
                chosenPower = 6;
                Navigator.pushNamed(context, "/homePage");
              },
              onPressingInfo: () {
                //info.index = names.indexOf("kyla");
                Navigator.pushNamed(context, "/kylaInfo");
              },
            ),
            WarriorCard(
              warriorName: "lago",
              onPressingSelect: () {
                chosenWarriorName = "lago";
                chosenPower = 7;
                Navigator.pushNamed(context, "/homePage");
              },
              onPressingInfo: () {
                //info.index = names.indexOf("lago");
                Navigator.pushNamed(context, "/lagoInfo");
              },
            ),
            WarriorCard(
              warriorName: "misi",
              onPressingSelect: () {
                chosenWarriorName = "misi";
                chosenPower = 8;
                Navigator.pushNamed(context, "/homePage");
              },
              onPressingInfo: () {
                //info.index = names.indexOf("misi");
                Navigator.pushNamed(context, "/misiInfo");
              },
            ),
            WarriorCard(
              warriorName: "rorik",
              onPressingSelect: () {
                chosenWarriorName = "rorik";
                chosenPower = 9;
                Navigator.pushNamed(context, "/homePage");
              },
              onPressingInfo: () {
                //info.index = names.indexOf("rorik");
                Navigator.pushNamed(context, "/rorikInfo");
              },
            ),
            WarriorCard(
              warriorName: "zaria",
              onPressingSelect: () {
                chosenWarriorName = "zaria";
                chosenPower = 10;
                Navigator.pushNamed(context, "/homePage");
              },
              onPressingInfo: () {
                //info.index = names.indexOf("zaria");
                Navigator.pushNamed(context, "/zariaInfo");
              },
            ),
          ],
        ),
      ),
    );
  }
}
