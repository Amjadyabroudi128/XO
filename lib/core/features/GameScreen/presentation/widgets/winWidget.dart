import 'package:flutter/material.dart';

class winWidget extends StatelessWidget {
  const winWidget({
    super.key,
    required this.currentPlayer,
  });

  final String currentPlayer;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      icon: Icon(Icons.thumb_up_outlined, size: 90,color: Colors.white,),
      backgroundColor: Colors.transparent,
      content: Text("Player $currentPlayer wins!", style: TextStyle(color: Colors.white, fontSize: 40),),
      actions: [
      ],
    );
  }
}
