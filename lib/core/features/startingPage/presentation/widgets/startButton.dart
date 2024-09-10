import 'package:flutter/material.dart';
import 'package:tic_tac_toe/components/elevatedButton.dart';
import 'package:tic_tac_toe/constants/constants.dart';
import 'package:tic_tac_toe/core/features/chooseSidePage/chooseSide.dart';

class startButton extends StatefulWidget {
  const startButton({
    super.key,
  });

  @override
  State<startButton> createState() => _startButtonState();
}

class _startButtonState extends State<startButton> {

  @override
  Widget build(BuildContext context) {
    String start = "START";
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: startBorder
      ),
      child: kElevatedButton(
        onPressed: (){
          Navigator.of(context).pushNamed(chooseSide.id);
        },
        child: Text(start, style: googleStyle,),
      ),
    );
  }
}
