import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class gameOver extends StatefulWidget {
  const gameOver({super.key});

  @override
  State<gameOver> createState() => _gameOverState();
}

class _gameOverState extends State<gameOver> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(

      ),
      onPressed: (){},
      child: Text("PLAY AGAIN"),
    );
  }
}
