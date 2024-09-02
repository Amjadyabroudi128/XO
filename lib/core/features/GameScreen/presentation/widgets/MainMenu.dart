import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class mainMenu extends StatelessWidget {
  const mainMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 83),
      child: TextButton(
          onPressed: (){
            Navigator.of(context).pushNamed("startingPage");
          },
          child: Text("MAIN MENU", style: GoogleFonts.archivoBlack(
              color: Colors.white,
              fontSize: 27
          ))),
    );
  }
}