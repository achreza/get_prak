import 'package:flutter/material.dart';

class Player {
  String name;
  String club;
  String age;
  String imageAsset;

  Player({
    required this.name,
    required this.club,
    required this.age,
    required this.imageAsset,
  });
}

var playerList = [
  Player(
    name: 'Marco Reus',
    club: 'Borussia Dortmund',
    age: '31',
    imageAsset: 'assets/marcoreus.jpg',
  ),
  Player(
    name: 'Robert Lewandowski',
    club: 'Bayern Munchen',
    age: '32',
    imageAsset: 'assets/lewandowski.jpg',
  ),
  Player(
    name: 'Kepa Arrizalbalaga',
    club: 'Chelsea',
    age: '27',
    imageAsset: 'assets/kepa.jpg',
  ),
  Player(
    name: 'Achmad Fahreza',
    club: 'UIN',
    age: '20',
    imageAsset: 'assets/reja.jpeg',
  ),
];
