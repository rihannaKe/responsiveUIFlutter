import 'package:flutter/material.dart';

class FittedBoxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyFittedBox();
  }
}

class MyFittedBox extends StatelessWidget {
  MyFittedBox({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("FittedBox ")),
      body: _buildSomething(),
    );
  }

  Widget _buildSomething() {
    return ListView(
      children: [
        FittedBox(
          fit: BoxFit.contain,
          child: Row(
            children: [
              Container(
                child: Image.asset("assets/img/riAvatar250x250.png"),
              ),
              Center(
                child: Container(
                  height: 40,
                  child: Text('Hello, nice to Meet You!!'),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class FittedBoxPageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyFittedBoxTwo();
  }
}

class MyFittedBoxTwo extends StatelessWidget {
  MyFittedBoxTwo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("FittedBox Example")),
      body: _buildSomething(),
    );
  }

  Widget _buildSomething() {
    return FittedBox(
      fit: BoxFit.fitWidth,
      child: Column(
        children: [
          Container(
            child: Image.network(
                "https://www.officeair.it/images/gallery/2MEDIA%20LIBRARY%20IN%20UTIQUE/1.JPG"),
          ),
          Center(
            child: Container(
              child: Text('I am 50 px height'),
            ),
          ),
        ],
      ),
    );
  }
}
