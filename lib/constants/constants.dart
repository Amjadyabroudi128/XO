
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
const FaIcon close = FaIcon(FontAwesomeIcons.xmark, color: Colors.yellow, size: 170,);
const FaIcon circle = FaIcon(FontAwesomeIcons.o, color: Colors.yellow,size: 150, );

 // colors
Color redShade = Colors.red.shade400;
Color? myYellow = Colors.yellow[800];
// fontWeight
FontWeight boldie = FontWeight.bold;

// icons 
Icon goBack = Icon(Icons.arrow_back, color: Colors.white, size: 29,);
 // fontSize
 const double size33 = 33;
// styles
TextStyle googleStyle = GoogleFonts.aBeeZee(
  fontSize: size33,
  letterSpacing: 4,
  fontWeight: boldie,
  color: redShade,
);
TextStyle choose = GoogleFonts.bungee(
    color: myYellow,
    fontSize: 30,
    fontWeight: FontWeight.bold,
    letterSpacing: 2
);