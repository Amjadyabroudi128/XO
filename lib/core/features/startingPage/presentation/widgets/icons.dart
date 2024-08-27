import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class myIcons extends StatelessWidget {
  const myIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        FaIcon(FontAwesomeIcons.xmark, color: Colors.yellow, size: 170,),
        Icon(FontAwesomeIcons.o, color: Colors.yellow,size: 150, )
      ],
    );
  }
}