import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(240, 68),
        elevation: 8,
        backgroundColor: Colors.yellow,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15) // Make the corners square
        ),
        side: BorderSide(color: Colors.black, width: 3,),
      ),
      onPressed: (){
        Navigator.of(context).pushNamed(chooseSide.id);
      },
      child: Text("START", style: googleStyle
      ),
    );
  }
}
