
 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class myButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget? icon;
  const myButton({super.key, this.onPressed, this.icon});

   @override
   Widget build(BuildContext context) {
     return IconButton(
       onPressed: onPressed,
       icon: icon ?? Icon(Icons.error),
     );
   }
 }
