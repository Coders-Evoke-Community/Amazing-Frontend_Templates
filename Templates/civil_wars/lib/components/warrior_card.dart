// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, non_constant_identifier_names, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:civil_wars/constants.dart';
import 'package:flutter/material.dart';

class WarriorCard extends StatelessWidget {
  String warriorName;
  Function onPressingSelect;
  Function onPressingInfo;

  WarriorCard(
      {required this.warriorName,
      required this.onPressingSelect,
      required this.onPressingInfo});

  String getWarriorName() {
    return warriorName;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Container(
        height: 150.0,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Image(
              image: AssetImage("images/$warriorName icon.png"),
            ),
            Padding(
              padding: EdgeInsets.only(right: 15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    warriorName.toUpperCase(),
                    style: TextStyle(
                      fontFamily: "Lilita One",
                      fontSize: 30.0,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      onPressingSelect();
                    },
                    style: ElevatedButton.styleFrom(
                      primary: kDarkBlue,
                    ),
                    child: Text(
                      "Select",
                      style: TextStyle(
                        fontFamily: "Lilita One",
                        fontSize: 20.0,
                        color: kRed,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      onPressingInfo();
                    },
                    style: ElevatedButton.styleFrom(
                      primary: kDarkBlue,
                    ),
                    child: Text(
                      "Info",
                      style: TextStyle(
                        fontFamily: "Lilita One",
                        fontSize: 20.0,
                        color: kRed,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
