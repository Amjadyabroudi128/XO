import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tic_tac_toe/constants/constants.dart';

class chooseSide extends StatefulWidget {
  static const String id = "chooseSide";
  const chooseSide({super.key});

  @override
  State<chooseSide> createState() => _chooseSideState();
}

class _chooseSideState extends State<chooseSide> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 17, top: 68),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.white, size: 24,),
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                ),
                SizedBox(width: 5,),
                Text("Choose a Side", style: GoogleFonts.bungee(
                  color: Colors.yellow[800],
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2
                ),
                )
              ],
            ),
            GestureDetector(
              onTap: (){

              },
              child: Padding(
                padding: const EdgeInsets.only(top: 80),
                child: _buildChoiceButton(FontAwesomeIcons.xmark),
              ),
            ),
            SizedBox(height: 40),
            GestureDetector(
              onTap: () {

              },
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: _buildChoiceButton(FontAwesomeIcons.o),
              ),
            ),
          ],
        ),
      )
    );
  }
}
Widget _buildChoiceButton(IconData symbol) {
  return Container(
    width: 220,
    height: 220,
    decoration: BoxDecoration(
      color: Colors.yellow[600],
      borderRadius: BorderRadius.circular(19),
      border: const Border(
        bottom: BorderSide(
          color: Colors.black,
          width: 5.7
        ),
        top: BorderSide(
          color: Colors.black,
          width: 3
        ),
        left:  BorderSide(
            color: Colors.black,
            width: 3
        ),
        right:  BorderSide(
            color: Colors.black,
            width: 3
        ),
      )
    ),
    child: Center(
      child: FaIcon(
        symbol,
        color: Colors.red,
        size: 190,
      )
    ),
  );
}
