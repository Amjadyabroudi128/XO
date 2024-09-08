
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
// icons
const FaIcon close = FaIcon(FontAwesomeIcons.xmark, color: Colors.yellow, size: 170,);
const FaIcon circle = FaIcon(FontAwesomeIcons.o, color: Colors.yellow,size: 150, );
const Icon thumbsUp = Icon(Icons.thumb_up_outlined, size: 90,);
const FaIcon frown = FaIcon(FontAwesomeIcons.faceFrownOpen,size: 90,);
 // colors
Color redShade = Colors.red.shade400;
Color? myYellow = Colors.yellow[800];
Color myWhite = Colors.white;
// fontWeight
FontWeight boldie = FontWeight.bold;
double font70 = 70;
// icons 
Icon goBack = Icon(Icons.arrow_back, color: myWhite, size: 29,);
 // fontSize
 const double size33 = 33;
// styles
TextStyle googleStyle = GoogleFonts.aBeeZee(
  fontSize: size33,
  letterSpacing: 4,
  fontWeight: boldie,
  color: redShade,
);
     TextStyle menuStyle = GoogleFonts.archivoBlack(
         color: Colors.white,
         fontSize: 27
     );

   TextStyle choose = GoogleFonts.bungee(
    color: myYellow,
    fontSize: 30,
    fontWeight: FontWeight.bold,
    letterSpacing: 2
);
 TextStyle slideText = GoogleFonts.archivoBlack(
   fontSize: 35,
   color: Colors.white,
   letterSpacing: 3,
 );
 TextStyle win =  TextStyle(color: Colors.white, fontSize: 40);
 TextStyle alertDialog = TextStyle(color: Colors.white, fontSize: 38);