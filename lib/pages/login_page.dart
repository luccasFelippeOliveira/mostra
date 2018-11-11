import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget {

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
      child: TextField(
        enabled: true,
        cursorColor: Colors.white,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 30.0,
          color: Colors.white
        ),
        decoration: InputDecoration(
          hintText: 'e-mail',
          hintStyle: TextStyle(
            fontSize: 30.0,
            color: Colors.white,
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              style: BorderStyle.none
            )
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              style: BorderStyle.none
            )
          )
        ),
      ),
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
                _buildEmailInput()
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