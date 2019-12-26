import 'package:flutter/material.dart';

class PointWidget extends StatelessWidget {
  final int correctCount;
  final int turn;
  final int maxRound;

  PointWidget(this.turn, this.correctCount, this.maxRound);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Turn: $turn, Points: $correctCount/$maxRound",
      style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: Color.fromARGB(255, 80, 80, 80)),
    );
  }
}
