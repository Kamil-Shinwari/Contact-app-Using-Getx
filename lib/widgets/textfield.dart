
import 'package:flutter/material.dart';
class MyTextField extends StatelessWidget {
    String label;
  TextEditingController controller;
  MyTextField({required this.controller,required this.label});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
      label: Text(label),
      border: OutlineInputBorder()),);
  }
}