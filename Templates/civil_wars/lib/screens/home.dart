// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:civil_wars/constants.dart';
import 'package:flutter/material.dart';
import 'choose_your_warrior.dart';
import 'amara_info.dart';
import 'choose_your_warrior.dart';
import 'package:civil_wars/info_page_manipulation/info_content.dart';
import 'package:civil_wars/info_page_manipulation/warrior_info_page_content.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

String chosenWarriorName = "amara";
int chosenPower = 1;

class _HomePageState extends State<HomePage> {
  // InfoContent info = InfoContent();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: kDarkBlue,
        backgroundColor: kRed,
        centerTitle: true,
        title: Text(
          "CIVIL WARS",
          style: TextStyle(
            fontFamily: "Lilita One",
            fontWeight: FontWeight.bold,
            fontSize: 40.0,
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 150.0,
                  width: 150.0,
                  child: Image(
                    image: AssetImage("images/final_profile.png"),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Team Debuggers",
                      style: TextStyle(
                        fontFamily: "Lilita One",
                        fontSize: 25.0,
                        color: kDarkBlue,
                      ),
                    ),
                    // SizedBox(
                    //   height: 10.0,
                    // ),
                    Text(
                      "Level : 100",
                      style: TextStyle(
                        fontFamily: "Lilita One",
                        fontSize: 15.0,
                        color: kDarkBlue,
                      ),
                    ),
                    // SizedBox(
                    //   height: 10.0,
                    // ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(kBorderRadius),
                            color: kDarkBlue,
                          ),
                          height: 35.0,
                          width: 75.0,
                          child: Center(
                            child: Text(
                              "10000", // ▶ (arrow)
                              style: TextStyle(
                                color: kRed,
                                fontFamily: "Lilita One",
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: kCoinHeightWidth,
                          width: kCoinHeightWidth,
                          child: Image(
                            image: AssetImage("images/final_coin.png"),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(kBorderRadius),
                    color: kDarkBlue,
                  ),
                  height: 40.0,
                  width: 120.0,
                  child: Center(
                    child: Text(
                      "POWER", // ▶ (arrow)
                      style: TextStyle(
                        color: kRed,
                        fontFamily: "Lilita One",
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 100.0,
                  width: 100.0,
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: Image(
                          image: AssetImage("images/power.png"),
                        ),
                      ),
                      Center(
                        child: Text(
                          "$chosenPower",
                          style: TextStyle(
                              fontFamily: "Lilita One",
                              fontSize: 35.0,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(kBorderRadius),
                    color: kDarkBlue,
                  ),
                  height: 40.0,
                  width: 120.0,
                  child: Center(
                    child: Text(
                      chosenWarriorName.toUpperCase(),
                      style: TextStyle(
                        color: kRed,
                        fontFamily: "Lilita One",
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 300.0,
              width: 300.0,
              child: Image.asset(
                "images/$chosenWarriorName.png",
                fit: BoxFit.contain,
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: kRed,
              ),
              onPressed: () {
                Navigator.pushNamed(context, "/chooseYourWarrior");
              },
              child: Text(
                "Change Warrior",
                style: TextStyle(
                  fontFamily: "Lilita One",
                  fontSize: 30.0,
                  color: kDarkBlue,
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(kBorderRadius),
                    color: kRed,
                  ),
                  margin: EdgeInsets.all(10.0),
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      "PLAY",
                      style: TextStyle(
                        fontFamily: "Lilita One",
                        fontSize: 30.0,
                        color: kDarkBlue,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
