import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../components/home_page_input.dart';

class LoginPage extends StatelessWidget {


  BuildContext _context;

  Future<String> loginAction() async {
    final response = await http.get('https://jsonplaceholder.typicode.com/posts/1');

    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception('Failed to login');
    }
  }


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
            _showDialog(_context);
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