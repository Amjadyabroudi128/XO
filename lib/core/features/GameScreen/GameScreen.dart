import 'package:flutter/material.dart';

import '../../../components/iconButton.dart';
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
    occupied = ["", "", "", "", "", "", "", "", ""]; // 9 empty places
  }

  void handleTap(int index) {
    if (!gameEnd && occupied[index] == "") {
      setState(() {
        occupied[index] = currentPlayer;
        if (checkWinner(currentPlayer)) {
          gameEnd = true;
          showDialog(
            context: context,
            builder: (_) => AlertDialog(
              title: Text("Game Over"),
              content: Text("Player $currentPlayer wins!"),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    initializeGame();
                  },
                  child: Text("Play Again"),
                ),
              ],
            ),
          );
        } else if (!occupied.contains("")) {
          gameEnd = true;
          showDialog(
            context: context,
            builder: (_) => AlertDialog(
              title: Text("Game Over"),
              content: Text("It's a draw!"),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    initializeGame();
                  },
                  child: Text("Play Again"),
                ),
              ],
            ),
          );
        } else {
          currentPlayer = currentPlayer == "X" ? "O" : "X";
        }
      });
    }
  }

  bool checkWinner(String player) {
    const List<List<int>> winningCombinations = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8],
      [0, 4, 8],
      [2, 4, 6],
    ];

    for (var combination in winningCombinations) {
      if (occupied[combination[0]] == player &&
          occupied[combination[1]] == player &&
          occupied[combination[2]] == player) {
        return true;
      }
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10, top: 63),
            child: Row(
              children: [
                myButton(
                  icon: goBack,
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                ),
                SizedBox(width: 20,),
                Text("TIC-TAC-TOE", style: slideText),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // 3 columns
                  mainAxisSpacing: 2.0,
                  crossAxisSpacing: 2.0,
                ),
                itemCount: 9,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => handleTap(index),
                    child: Container(
                    decoration: BoxDecoration(
                    color: redShade, // Red background color
                    border: Border(
                      top: BorderSide(
                        color: Colors.white,
                        width: index > 2 ? 2 : 0, // Top line for rows 2 and 3
                      ),
                      left: BorderSide(
                        color: Colors.white,
                        width: index % 3 != 0 ? 2 : 0, // Left line for columns 2 and 3
                      ),
                      right: BorderSide(
                        color: Colors.white,
                        width: (index + 1) % 3 != 0 ? 2 : 0, // Right line for columns 1 and 2
                      ),
                      bottom: BorderSide(
                        color: Colors.white,
                        width: index < 6 ? 2 : 0, // Bottom line for rows 1 and 2
                      ),
                    ),
                    ),
                      child: Center(
                        child: Text(
                          occupied[index],
                          style: TextStyle(
                            fontSize: 70.0,
                            fontWeight: FontWeight.bold,
                            color: occupied[index] == "X"
                                ? myYellow
                                : myYellow,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
