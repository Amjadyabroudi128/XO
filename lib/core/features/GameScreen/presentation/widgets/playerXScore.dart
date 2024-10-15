import 'package:flutter/material.dart';

import '../../../../../constants/constants.dart';

class PlayerXScore extends StatelessWidget {
  const PlayerXScore({
    super.key,
    required this.Xscore,
  });

  final int Xscore;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 2),
      child: Column(
        children: [
          Text("Player X"),
          SizedBox(height: 4),
          Text("Score: $Xscore", style: boldWin),
        ],
      ),
    );
  }
}
