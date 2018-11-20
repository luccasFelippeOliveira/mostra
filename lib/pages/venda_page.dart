import 'package:flutter/material.dart';

import '../components/base_layout.dart';

class VendaPage extends StatelessWidget {

  Widget _buildBody() {
    return Center(
      child: Text('hello worrld')
    );
  }

  Widget _buildBottom() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _buildCloseButton(),
        _buildCameraButton(),
        _buildAddButton(),
        _buildConfirmButton()
      ],
    );
  }


  Widget _buildCloseButton() {
    return FlatButton(
      onPressed: () {
        print('Close button');
      },
      child: Icon(Icons.close,
        color: Colors.white,
        size: 48.00
      )
    );
  }

  Widget _buildCameraButton() {
    return FlatButton(
      onPressed: () {
        print('Camera button');
      },
      child: Icon(Icons.camera,
        color: Colors.white,
        size: 48.00
      )
    );
  }

  Widget _buildAddButton() {
    return FlatButton(
        onPressed: () {
          print('Add button');
        },
        child: Icon(Icons.add,
            color: Colors.white,
            size: 48.00
        )
    );
  }

  Widget _buildConfirmButton() {
    return FlatButton(
        onPressed: () {
          print('Confirm button');
        },
        child: Icon(Icons.done,
            color: Colors.white,
            size: 48.00
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return BaseLayout(
      renderTopImage: false,
      bodyChild: _buildBody(),
      bottomChild: _buildBottom(),
    );
  }
}