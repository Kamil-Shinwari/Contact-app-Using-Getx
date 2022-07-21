import 'package:flutter/material.dart';
class MyButton extends StatelessWidget {
  VoidCallback onPressed;
  Widget child;
  MyButton({required this.onPressed,required this.child});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed, child: child);
  }
}