import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DrawWidget extends StatelessWidget {
  const DrawWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlertDialog(
      icon: Center(child: FaIcon(FontAwesomeIcons.faceFrownOpen,size: 90,)),
      content: Text("It's a draw!", style: TextStyle(color: Colors.white, fontSize: 38),),
    );
  }
}
