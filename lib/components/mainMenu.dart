import 'package:flutter/material.dart';

class menuButton extends StatelessWidget {
  final  VoidCallback? onPressed;
  final Widget? child;
  const menuButton({super.key, this.onPressed, this.child});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: child ?? SizedBox()
    );
  }
}
