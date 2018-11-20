import 'package:flutter/material.dart';

class LabelledListPanel extends StatefulWidget {
  String _labelText;

  LabelledListPanel({@required String labelText}) {
    this._labelText = labelText;
  }

  @override
  _LabelledListPanel createState() => _LabelledListPanel();
}

class _LabelledListPanel extends State<LabelledListPanel> {
  @override
  Widget build(BuildContext context) {
    return Card(
        color: Color(0xFF9DB3D3),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 10.0,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 20.0, top: 10.0),
                child: Text(widget._labelText,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    )),
              )
            ]),
            SizedBox(
              height: 10.0,
            ),
            Expanded(child: ListView())
          ],
        ));
  }
}
