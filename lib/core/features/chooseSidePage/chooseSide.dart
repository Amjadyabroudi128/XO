import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tic_tac_toe/components/iconButton.dart';
import 'package:tic_tac_toe/components/sizedBox.dart';
import 'package:tic_tac_toe/constants/constants.dart';
import 'package:tic_tac_toe/core/features/chooseSidePage/tapO.dart';
import 'package:tic_tac_toe/core/features/chooseSidePage/tapX.dart';
import '../../../components/padding.dart';

class chooseSide extends StatefulWidget {
  static const String id = "chooseSide";
  const chooseSide({super.key});

  @override
  State<chooseSide> createState() => _chooseSideState();
}

class _chooseSideState extends State<chooseSide> {
  @override
  Widget build(BuildContext context) {
    String pickaSide = "choose a side";
    return  Scaffold(
      body: MyPadding(
        pad: const EdgeInsets.only(left: 17, top: 68),
        child: Column(
          children: [
            Row(
              children: [
                myButton(
                  icon: goBack,
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                ),
                mySpace(width: 5,),
                Text( pickaSide, style: choose)
              ],
            ),
            tapX(context),
            mySpace(height: 40),
            tapO(context),
          ],
        ),
      )
    );
  }



}
