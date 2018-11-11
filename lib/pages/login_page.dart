import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget {

  Widget _buildTopImage(double height) {
    return Container(
      color: Colors.teal,
      height: height,
    );
  }


  Widget _buildForm(double height) {
    return Container(
      color: Colors.orange,
      height: height,
    );
  }

  Widget _buildSignInButton(double height) {
    return Container(
      color: Colors.lightGreen,
      height: height,
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
              child: _buildPage(context),
            ),
          ],
        ),
      ),
    );
  }
}