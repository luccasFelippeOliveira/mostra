import 'package:flutter/material.dart';
import 'package:http/';

import '../components/home_page_input.dart';

class LoginPage extends StatelessWidget {

  Future<http.Response>

  Widget _buildTopImage() {
    return Container(
      color: Colors.teal,
      child: Image.asset('assets/images/background_arthena.png',
        fit: BoxFit.fill,
      ),
    );
  }


  Widget _buildArthenaText() {
    return Container(
      height: 55.0,
      child: Center(
        child: Text('arthena',
          style: TextStyle(
            fontSize: 50.0,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
        ),
      ),
    );
  }

  Widget _buildEmailInput() {
    return Container(
      height: 60.0,
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
        color: Color(0xFF9DB3D3),
        borderRadius: BorderRadius.circular(100.0)
      ),
      child: HomePageInput('e-mail'),
    );
  }

  Widget _buildPasswordInput() {
    return Container(
      height: 60.0,
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
        color: Color(0xFF9DB3D3),
        borderRadius: BorderRadius.circular(100.0)
      ),
      child: HomePageInput('senha'),
    );
  }

  Widget _buildForm2() {
    return Container(
      color: Color(0xFF5C6D81),
      child: Center(
        child: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                SizedBox(height: 25.0,),
                _buildArthenaText(),
                SizedBox(height: 25.0,),
                _buildEmailInput(),
                SizedBox(height: 25.0,),
                _buildPasswordInput()
              ],
            ),
          ],
        ),
      ),
    );
  }


  Widget _buildForm() {
    return Container(
      color: Color(0xFF5C6D81),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _buildArthenaText(),
          SizedBox(height: 25.0,),
          _buildEmailInput(),
          SizedBox(height: 25.0,),
          _buildEmailInput()
        ],
      ),
    );
  }

  Widget _buildSignInButton() {
    return Container(
      color: Color(0xFF283037),
      child: Center(
        child: FlatButton(
          onPressed: () {
            print('You pressed me!');
          },
          child: Center(
            child: Text('entrar',
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.white
              ),
            ),
          ),
        ),
      )
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
              child: _buildForm2(),
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