import 'package:flutter/material.dart';

/// BaseLayout is a components that sets the base layout used in the app.
/// like the dark blue container with darker botton action bar.
class BaseLayout extends StatelessWidget {

  bool renderTopImage = false;
  Widget bodyChild;
  Widget bottomChild;

  BaseLayout({bool renderTopImage, @required Widget bodyChild, Widget bottomChild}) {
    this.renderTopImage = renderTopImage;
    this.bodyChild = bodyChild;
    this.bottomChild = bottomChild;
  }

  Widget _buildTopImage() {
    return Container(
      child: Image.asset('assets/images/background_arthena.png',
        fit: BoxFit.fill,
      ),
    );
  }

  Widget _buildBodyChild() {
    return Container(
      color: Color(0xFF5C6D81),
      child: bodyChild
    );
  }

  Widget _buildBottomBar() {
    return Container(
      color: Color(0xFF283037),
      child: bottomChild
    );
  }

  List<Widget> _buildBody() {
    List<Widget> bodyWidgets = List<Widget>();

    if (renderTopImage) {
      bodyWidgets.add(Expanded(
        child: _buildTopImage(),
        flex: 4
      ));
    }

    bodyWidgets.add(Expanded(
      child: _buildBodyChild(),
      flex: renderTopImage ? 4 : 8
    ));


    bodyWidgets.add(Expanded(
      child: _buildBottomBar(),
      flex: 1
    ));

    return bodyWidgets;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Column(
          children: _buildBody(),
        ),
      ),
    );
  }
}