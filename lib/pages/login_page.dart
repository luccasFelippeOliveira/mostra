import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget {

  Widget _buildTopImage() {
    return Container(
      color: Colors.teal,
      child: Image.asset('assets/images/background_arthena.png',
      fit: BoxFit.fitHeight,
      ),
    );
  }


  Widget _buildForm() {
    return Container(
      color: Color(0xFF5C6D81),
    );
  }

  Widget _buildSignInButton() {
    return Container(
      color: Color(0xFF283037),
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