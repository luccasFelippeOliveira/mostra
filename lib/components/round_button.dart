import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {

  VoidCallback _callback;
  String _text;


  RoundButton({@required VoidCallback callback, @required String text}) {
    this._callback = callback;
    this._text = text;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60.0,
        margin: EdgeInsets.symmetric(horizontal: 10.0),
        decoration: BoxDecoration(
            color: Color(0xFF9DB3D3),
            borderRadius: BorderRadius.circular(100.0)
        ),
        child: FlatButton(
            onPressed: _callback,
            child: Text(_text,
              style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white
              ),
            )
        )
    );
  }
}