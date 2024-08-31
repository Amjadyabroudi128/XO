import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

class GameScreen extends StatefulWidget {
  final String selectedSide;

  const GameScreen({super.key, required this.selectedSide});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  late bool gameEnd;
  late List<String> occupied;
  late String currentPlayer;

  @override
  void initState() {
    initializeGame();
    super.initState();
  }

  void initializeGame() {
    currentPlayer = widget.selectedSide;
    gameEnd = false;
    occupied = ["", "", "", "", "", "", "", "", ""]; //9 empty places
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 73, top: 63),
            child: Text("TIC-TAC-TOE", style: slideText),
          )
        ],
      ),
      // body: Center(
      //   child: Text(
      //     'Player ${widget.selectedSide}\'s Turn',
      //     style: TextStyle(fontSize: 30),
      //   ),
      // ),
    );
  }
}
