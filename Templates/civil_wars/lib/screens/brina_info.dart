// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:civil_wars/info_page_manipulation/info_content.dart';
import 'package:flutter/material.dart';
import 'package:civil_wars/constants.dart';
import 'choose_your_warrior.dart';
import 'home.dart';
import 'package:civil_wars/info_page_manipulation/warrior_info_page_content.dart';

class BrinaInfo extends StatelessWidget {
  //InfoContent info = InfoContent();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: kDarkBlue,
        backgroundColor: kRed,
        centerTitle: true,
        title: Text(
          "BRINA",
          style: TextStyle(
            fontFamily: "Lilita One",
            fontWeight: FontWeight.bold,
            fontSize: 25.0,
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 16.0),
              child: SizedBox(
                height: 200.0,
                width: double.infinity,
                child: Image.asset(
                  "images/brina.png",
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(kBorderRadius),
                  color: Colors.white,
                ),
                margin: EdgeInsets.all(16.0),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Batter up! Brina's got a sweet swing that can knock back enemies when her Home Run bar is charged. She swings her baseball bat. When she has three swings at the ready, her Home Run bar will charge. Once fully charged, her next swing will knock back enemies!",
                        style: TextStyle(
                          fontFamily: "Lilita One",
                          color: kDarkBlue,
                          fontSize: kInfoPageFontSize,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                "Power : ",
                                style: TextStyle(
                                  fontFamily: "Lilita One",
                                  fontSize: kInfoPageFontSize,
                                  color: kDarkBlue,
                                ),
                              ),
                              Text(
                                "2",
                                style: TextStyle(
                                  fontFamily: "Lilita One",
                                  fontSize: kInfoPageFontSize,
                                  color: kRed,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Attack :",
                                style: TextStyle(
                                  fontFamily: "Lilita One",
                                  fontSize: kInfoPageFontSize,
                                  color: kDarkBlue,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(kPaddingOfProgressBar),
                                child: SizedBox(
                                  height: kProgressBarHeight,
                                  width: kProgressBarWidth,
                                  child: LinearProgressIndicator(
                                    value: 75.toDouble() / kMaxAttack,
                                    color: kRed,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Defence :",
                                style: TextStyle(
                                  fontFamily: "Lilita One",
                                  fontSize: kInfoPageFontSize,
                                  color: kDarkBlue,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(kPaddingOfProgressBar),
                                child: SizedBox(
                                  height: kProgressBarHeight,
                                  width: kProgressBarWidth,
                                  child: LinearProgressIndicator(
                                    value: 75.toDouble() / kMaxDefence,
                                    color: kRed,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Health :",
                                style: TextStyle(
                                  fontFamily: "Lilita One",
                                  fontSize: kInfoPageFontSize,
                                  color: kDarkBlue,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(kPaddingOfProgressBar),
                                child: SizedBox(
                                  height: kProgressBarHeight,
                                  width: kProgressBarWidth,
                                  child: LinearProgressIndicator(
                                    value: 1200.toDouble() / kMaxHealth,
                                    color: kRed,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: kDarkBlue,
                            ),
                            onPressed: () {},
                            child: Text(
                              "Upgrade",
                              style: TextStyle(
                                fontFamily: "Lilita One",
                                fontSize: 20.0,
                                color: kRed,
                              ),
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                "40",
                                style: TextStyle(
                                  fontFamily: "Lilita One",
                                  fontSize: 20.0,
                                  color: kRed,
                                ),
                              ),
                              SizedBox(
                                height: kCoinHeightWidth,
                                width: kCoinHeightWidth,
                                child: Image.asset("images/final_coin.png"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
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
