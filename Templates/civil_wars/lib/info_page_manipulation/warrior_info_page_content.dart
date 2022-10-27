import 'package:flutter/material.dart';

class Info {
  late String description;
  late int power;
  late String warriorName;
  late int coinsForUpgrade;
  late int attack;
  late int defence;
  late int health;

  Info({
    required this.description,
    required this.power,
    required this.warriorName,
    required this.coinsForUpgrade,
    required this.attack,
    required this.defence,
    required this.health,
  });
}
