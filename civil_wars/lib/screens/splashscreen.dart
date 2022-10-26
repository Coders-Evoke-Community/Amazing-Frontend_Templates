// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:civil_wars/constants.dart';
import 'package:civil_wars/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class TheSplashScreen extends StatelessWidget {
  const TheSplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 6,
      navigateAfterSeconds: HomePage(),
      title: Text(
        "CIVIL WARS",
        textScaleFactor: 4.0,
        style: TextStyle(
          color: kRed,
          fontFamily: "Lilita One",
        ),
      ),
      image: Image.asset("images/final_logo.png"),
      photoSize: 200.0,
      gradientBackground: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          kRed,
          kDarkBlue,
        ],
      ),
      loaderColor: kRed,
      loadingText: Text(
        "Just a moment...",
        style: TextStyle(
          color: kRed,
          fontFamily: "Lilita One",
          fontSize: 25.0,
        ),
      ),
    );
  }
}
