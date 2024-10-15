import 'package:flutter/material.dart';

import '../../../../constants/constants.dart';

class PlayerOScroe extends StatelessWidget {
  const PlayerOScroe({
    super.key,
    required this.Oscore,
  });

  final int Oscore;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text("Player O"),
          SizedBox(height: 4),
          Text("Score: $Oscore", style: boldWin),
        ],
      ),
    );
  }
}
