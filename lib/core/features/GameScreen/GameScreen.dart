import 'package:flutter/material.dart';
import 'package:tic_tac_toe/components/futureDelay.dart';
import 'package:tic_tac_toe/components/gridView.dart';
import 'package:tic_tac_toe/components/padding.dart';
import 'package:tic_tac_toe/core/features/GameScreen/presentation/widgets/DrawWidget.dart';
import 'package:tic_tac_toe/core/features/GameScreen/presentation/widgets/MainMenu.dart';
import 'package:tic_tac_toe/core/features/GameScreen/presentation/widgets/gameOverButton.dart';
import 'package:tic_tac_toe/core/features/GameScreen/presentation/widgets/textBar.dart';
import 'package:tic_tac_toe/core/features/GameScreen/presentation/widgets/winWidget.dart';
import '../../../components/boxDecoration.dart';
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
              alertTimer(context);
              return winWidget(currentPlayer: currentPlayer);
              }
          );
        } else if (!occupied.contains("")) {
          gameEnd = true;
          showDialog(
            context: context,
            builder: (_) {
              alertTimer(context);
              return DrawWidget();
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
    String ticTAc = "TIC-TAC-TOE";
    double left10 = 10;
    double top80 = 80;
    return Scaffold(
      body: Column(
        children: [
          MyPadding(
            pad: EdgeInsets.only(left: left10, top: top80),
            child: appBarText(ticTAc: ticTAc),
          ),
          Expanded(
            child: MyPadding(
              pad: const EdgeInsets.all(14.0),
              child: gameBox(
                building: (context, index) {
                  return GestureDetector(
                    onTap: () => handleTap(index),
                    child: Container(
                    decoration: buildBoxDecoration(index),
                      child: Center(
                        child: Text(
                          occupied[index],
                          style: TextStyle(
                            fontSize: font70,
                            fontWeight: boldie,
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
          gameEnd ? MyPadding(
            pad: const EdgeInsets.only(bottom: 20),
            child: endGame(),
          ) : SizedBox.shrink(),
         gameEnd ? mainMenu() : SizedBox.shrink()
        ],
      ),
    );
  }

  endGame() {
    return gameOver(
            onPressed: (){
              initializeGame();
            },
          );
  }
}



