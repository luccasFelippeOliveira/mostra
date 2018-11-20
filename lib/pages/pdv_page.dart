import 'package:flutter/material.dart';


import '../components/base_layout.dart';
import '../components/arthena_text.dart';
import '../components/round_button.dart';

class PdvPage extends StatelessWidget {
  BuildContext _context = null;

  Widget _buildMenu() {
    return Center(
      child: ListView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(height: 25.0,),
              ArthenaText(),
              SizedBox(height: 25.0,),
              RoundButton(
                callback: () {print('hello');},
                text: 'controle de estoque',
              ),
              SizedBox(height: 25.0,),
              RoundButton(
                callback: () {print('hello');},
                text: 'fazer venda',
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildExitButton() {
    return FlatButton(
      onPressed: () {
        print('I should go back to login page');
      },
      child: Center(
        child: Text(
          'sair',
          style: TextStyle(
            fontSize: 30.0,
            color: Colors.white
          ),
        )
      )
    );
  }

  @override
    Widget build(BuildContext context) {
      return BaseLayout(
        renderTopImage: true,
        bodyChild: _buildMenu(),
        bottomChild: _buildExitButton()
      );
    }
}