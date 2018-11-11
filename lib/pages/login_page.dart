import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget {

  Widget _buildTopImage() {
    return Container(
      color: Colors.teal,
    );
  }


  Widget _buildForm() {
    return Container(
      color: Colors.orange,
    );
  }

  Widget _buildSignInButton() {
    return Container(
      color: Colors.lightGreen,
    );
  }

  Widget build(BuildContext context) {
    // Create the Login Page.
    return new Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Column(
          children: <Widget>[
            Expanded(
              child: _buildTopImage(),
              flex: 4,
            ),
            Expanded(
              child: _buildForm(),
              flex: 4
            ),
            Expanded(
              child: _buildSignInButton(),
              flex: 1
            )
          ],
        ),
      ),
    );
  }
}