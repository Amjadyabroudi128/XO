import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tic_tac_toe/core/features/startingPage/presentation/widgets/icons.dart';
import 'package:tic_tac_toe/core/features/startingPage/presentation/widgets/startButton.dart';
import 'package:google_fonts/google_fonts.dart';
class startingPage extends StatefulWidget {
  const startingPage({super.key});

  @override
  State<startingPage> createState() => _startingPageState();
}
class _startingPageState extends State<startingPage> with SingleTickerProviderStateMixin{
  late AnimationController controller;
  late Animation<double> animation;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
    animation = Tween<double>(begin: 0.0, end: 1.0).animate(controller);

    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[400],
      body:  FadeTransition(
        opacity: animation,
        child:  SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 120, left: 70),
                child: myIcons(),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: Text("TIC-TAC-TOE", style: GoogleFonts.rubikMonoOne(
                  color: Colors.white,
                  fontSize: 32
                )),
              ),
              SizedBox(height: 350,),
              startButton()
            ],
          ),
        ),
      )
    );
  }
}

