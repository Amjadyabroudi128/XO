import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tic_tac_toe/core/features/startingPage/presentation/widgets/icons.dart';

class startingPage extends StatefulWidget {
  const startingPage({super.key});

  @override
  State<startingPage> createState() => _startingPageState();
}

class _startingPageState extends State<startingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[400],
      body:  SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 120, left: 70),
              child: myIcons(),
            ),
            SizedBox(height: 460,),
            startButton()
          ],
        ),
      )
    );
  }
}

class startButton extends StatelessWidget {
  const startButton({
    super.key,
  });

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

      },
      child: Text("START", style: TextStyle(color: Colors.red[400], fontSize: 33, letterSpacing: 2.0),),
    );
  }
}

