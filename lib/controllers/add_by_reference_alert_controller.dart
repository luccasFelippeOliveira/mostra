import 'package:flutter/material.dart';

class AddByReferenceAlertController extends StatefulWidget {
  @override
  _AddByReferenceAlertController createState() =>
      _AddByReferenceAlertController();
}

class _AddByReferenceAlertController
    extends State<AddByReferenceAlertController> {
  final controller = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }
}
