import 'package:flutter/material.dart';

class HomePageInput extends StatelessWidget {
  final String label;

  HomePageInput(this.label);

  @override
  Widget build(BuildContext context) {
    return TextField(
      enabled: true,
      cursorColor: Colors.white,
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 30.0, color: Colors.white),
      decoration: InputDecoration(
          hintText: label,
          hintStyle: TextStyle(
            fontSize: 30.0,
            color: Colors.white,
          ),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(style: BorderStyle.none)),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(style: BorderStyle.none))),
    );
  }
}
