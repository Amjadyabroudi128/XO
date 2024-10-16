
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
// icons
const FaIcon close = FaIcon(FontAwesomeIcons.xmark, color: Colors.yellow, size: 170,);
const FaIcon circle = FaIcon(FontAwesomeIcons.o, color: Colors.yellow,size: 150, );
const Icon thumbsUp = Icon(Icons.thumb_up_alt_outlined, size: 130,color: Colors.yellow,);
const FaIcon frown = FaIcon(FontAwesomeIcons.faceFrownOpen,size: 90,);
String pickaSide = "choose a side";
// Paddings
double rowSpace = 5;
double boxHeight = 40;
double cWidth = 220;
double cHeight = 220;
// Size
Size buttonSize = Size(240, 68);
 // colors
Color choiceClr = Colors.red;
Color redShade = Colors.red.shade400;
Color? myYellow = Colors.yellow[800];
Color myWhite = Colors.white;
Color iconYellow = Colors.yellow;
Color darkBorders = Colors.black;
Color? yellow600 = Colors.yellow[600];
// fontWeight
FontWeight boldie = FontWeight.bold;
double font70 = 70;

// icons 
Icon goBack = Icon(Icons.arrow_back, color: myWhite, size: 29,);

 // fontSize
 const double size33 = 33;
 const size300 = SizedBox(height: 300,);
 const double icon190 = 190;

// styles
TextStyle googleStyle = GoogleFonts.aBeeZee(
  fontSize: size33,
  letterSpacing: 4,
  fontWeight: boldie,
  color: redShade,
);
     TextStyle menuStyle = GoogleFonts.archivoBlack(
         color: myWhite,
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
   color: myWhite,
   letterSpacing: 3,
 );
 TextStyle win =  TextStyle(color: myWhite, fontSize: 40);
 TextStyle alertDialog = TextStyle(color: myWhite, fontSize: 38);
 TextStyle playAgain = GoogleFonts.anton(letterSpacing: 3, color: myWhite, fontSize: 30);
 TextStyle player = TextStyle(fontSize: 35, color: myWhite);
 TextStyle boldWin = TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
 // Borders
 Border startBorder =  Border(
   bottom: BorderSide(
       color: darkBorders,
       width: 5.7
   ),
   top: BorderSide(
       color: darkBorders,
       width: 2
   ),
   left:  BorderSide(
       color: darkBorders,
       width: 2
   ),
   right:  BorderSide(
       color: darkBorders,
       width: 2
   ),
 );
 Border endBorder =  Border(
   bottom: BorderSide(
       color: myWhite,
       width: 6.8
   ),
   top: BorderSide(
       color: myWhite,
       width: 2
   ),
   left:  BorderSide(
       color: myWhite,
       width: 2
   ),
   right:  BorderSide(
       color: myWhite,
       width: 2
   ),
 );
 Border side =  Border(
   bottom: BorderSide(
       color: darkBorders,
       width: 5.7
   ),
   top: BorderSide(
       color: darkBorders,
       width: 3
   ),
   left:  BorderSide(
       color:darkBorders,
       width: 3
   ),
   right:  BorderSide(
       color: darkBorders,
       width: 3
   ),
 );
 // decoration
 Decoration box = BoxDecoration(
     borderRadius: BorderRadius.circular(15),
     border: startBorder
 );
Decoration endBox = BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    border: endBorder
);
 Decoration choices = BoxDecoration(
     color: yellow600,
     borderRadius: BorderRadius.circular(19),
     border:  side
 );