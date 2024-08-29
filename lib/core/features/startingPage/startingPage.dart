import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tic_tac_toe/core/features/startingPage/presentation/widgets/icons.dart';
import 'package:tic_tac_toe/core/features/startingPage/presentation/widgets/slidingIcons.dart';
import 'package:tic_tac_toe/core/features/startingPage/presentation/widgets/slidingText.dart';
import 'package:tic_tac_toe/core/features/startingPage/presentation/widgets/startButton.dart';

class startingPage extends StatefulWidget {  // Renamed to StartingPage
  const startingPage({super.key});

  @override
  State<startingPage> createState() => _StartingPageState();
}

class _StartingPageState extends State<startingPage> with TickerProviderStateMixin {
  late AnimationController controller;
  late AnimationController iconsController;
  late AnimationController textController;
  late Animation<double> animation;
  late Animation<double> iconsAnimation;
  late Animation<double> textAnimation;
  late Animation<Offset> slideAnimation;
  late Animation<Offset> iconsSlideAnimation;
  late Animation<Offset> textSlideAnimation;

  @override
  void initState() {
     final duration = AnimationController(
       duration: const Duration(milliseconds: 600),
       vsync: this,
     );
     final myController = Tween<double>(begin: 0.0, end: 1.0);
    super.initState();
    controller = duration;
    animation = myController.animate(controller);
    slideAnimation = Tween<Offset>(
      begin: Offset(0.0, 1.0), // Start from below the screen (bottom)
      end: Offset(0.0, 0.0),   // End at the original position
    ).animate(controller);
    controller.forward();

    iconsController = duration;
    iconsAnimation = myController.animate(iconsController);
    iconsSlideAnimation = Tween<Offset>(
      begin: Offset(0.0, -1.0),
      end: Offset(0.0, 0.0),
    ).animate(iconsController);
    iconsController.forward();

    textController = duration;
    textAnimation = myController.animate(textController);
     textSlideAnimation = Tween<Offset>(begin: Offset(-1.0, 0.0),
       end: Offset(0.0, 0.0),
     ).animate(textController);
     textController.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    iconsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            slidingIcons(iconsSlideAnimation: iconsSlideAnimation, iconsAnimation: iconsAnimation),
            tic_tac_toe(textSlideAnimation: textSlideAnimation, textAnimation: textAnimation),
            const SizedBox(height: 380),
            SlideTransition(
              position: slideAnimation,
              child: FadeTransition(
                opacity: animation,
                child: startButton(),  // Ensure this widget is correctly defined
              ),
            ),
          ],
        ),
      ),
    );
  }
}
