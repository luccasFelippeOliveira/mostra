import 'package:flutter/material.dart';

class ArthenaText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.0,
      child: Center(
        child: Text(
          'arthena',
          style: TextStyle(
            fontSize: 50.0,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
        )
      ),
    );
  }
}