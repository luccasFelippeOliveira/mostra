import 'dart:convert';

import 'package:flutter/material.dart';

import '../components/home_page_input.dart';
import '../components/base_layout.dart';
import '../pages/pdv_page.dart';

class LoginPage extends StatelessWidget {
  BuildContext _context;

  void _showDialog(BuildContext context) {
    showDialog(
      context: context, 
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Alert Dialog title'),
          content: Text('Alert Dialog body'),
          actions: <Widget>[
            new FlatButton(
              child: Text('close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ]
        );
      }
    );
  }

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

  Widget _buildForm() {
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

  Widget _buildSignInButton() {
    return Container(
      color: Color(0xFF283037),
      child: Center(
        child: FlatButton(
          onPressed: () {
            print('You pressed me!');
            Navigator.of(_context).push(
              MaterialPageRoute(
                builder: (_context) => PdvPage()
              )
            );
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
    this._context = context;
    // Create the Login Page.

    return BaseLayout(
      renderTopImage: true,
      bodyChild: _buildForm(),
      bottomChild: _buildSignInButton(),
    );

  }
}