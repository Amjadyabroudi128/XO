import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tic_tac_toe/core/features/GameScreen/presentation/widgets/MainMenu.dart';
import 'package:tic_tac_toe/core/features/GameScreen/presentation/widgets/gameOverButton.dart';
import 'package:tic_tac_toe/core/features/GameScreen/presentation/widgets/goBack.dart';
import '../../../constants/constants.dart';
import 'presentation/widgets/currentPlayerText.dart';

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
    setState(() {
      currentPlayer = widget.selectedSide;
      gameEnd = false;
      occupied = ["", "", "", "", "", "", "", "", ""]; // 9 empty places
    });

  }

  void handleTap(int index) {
    if (!gameEnd && occupied[index] == "") {
      setState(() {
        occupied[index] = currentPlayer;
        if (checkWinner(currentPlayer)) {
          gameEnd = true;
          showDialog(
            context: context,
            builder: (_) {
              Future.delayed(const Duration(seconds: 3), () {
                Navigator.of(context).pop(true);
              });
              return AlertDialog(
              icon: Icon(Icons.thumb_up_outlined, size: 90,color: Colors.white,),
              backgroundColor: Colors.transparent,
              content: Text("Player $currentPlayer wins!", style: TextStyle(color: Colors.white, fontSize: 40),),
              actions: [
              ],
            );
              }
          );
        } else if (!occupied.contains("")) {
          gameEnd = true;
          showDialog(
            context: context,
            builder: (_) {
              Future.delayed(const Duration(seconds: 3), () {
                Navigator.of(context).pop(true);
              });
              return const AlertDialog(
                icon: Center(child: FaIcon(FontAwesomeIcons.faceFrownOpen, color: Colors.white,size: 90,)),
                content: Text("It's a draw!", style: TextStyle(color: Colors.white, fontSize: 38),),
                backgroundColor: Colors.transparent,
              );
            }
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
            padding: EdgeInsets.only(left: 10, top: 80),
            child: Row(
              children: [
                goback(),
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
                        color: myWhite,
                        width: index > 2 ? 2 : 0, // Top line for rows 2 and 3
                      ),
                      left: BorderSide(
                        color: myWhite,
                        width: index % 3 != 0 ? 2 : 0, // Left line for columns 2 and 3
                      ),
                      right: BorderSide(
                        color: myWhite,
                        width: (index + 1) % 3 != 0 ? 2 : 0, // Right line for columns 1 and 2
                      ),
                      bottom: BorderSide(
                        color: myWhite,
                        width: index < 6 ? 2 : 0, // Bottom line for rows 1 and 2
                      ),
                    ),
                    ),
                      child: Center(
                        child: Text(
                          occupied[index],
                          style: TextStyle(
                            fontSize: font70,
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
          gameEnd ? SizedBox.shrink() : currentPlayerText(currentPlayer: currentPlayer),
          gameEnd ? Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: gameOver(
              onPressed: (){
                initializeGame();
              },
            ),
          ) : SizedBox.shrink(),
         gameEnd ? mainMenu() : SizedBox.shrink()
        ],
      ),
    );
  }
}


