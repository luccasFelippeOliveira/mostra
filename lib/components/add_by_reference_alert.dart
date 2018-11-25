import 'package:flutter/material.dart';
import '../controllers/add_by_reference_alert_controller.dart';

class AddByReferenceAlert extends StatelessWidget {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        'adicionar por ref.',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      content: TextField(
        controller: _controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'referencia do produto'
        ),
      ),
      actions: <Widget>[
        FlatButton(
          child: Text('cancela'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        FlatButton(
          child: Text('confirma'),
          onPressed: () {
            Navigator.of(context).pop(_controller.text);
          },
        )
      ],
    );
  }
}
