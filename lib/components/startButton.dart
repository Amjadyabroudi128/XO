import 'package:flutter/material.dart';

class startButton extends StatelessWidget {
  final  VoidCallback? onPressed;
  final Widget? child;
  const startButton({super.key, this.onPressed, required this.child});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: child ?? SizedBox()
    );
  }
}
