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
      body: _buildSomethingFitted(),
    );
  }

  Widget _buildSomethingFitted() {
    return FittedBox(
      fit: BoxFit.cover,
      alignment: Alignment.bottomCenter,
      child: Row(
        children: [
          Image.asset("assets/img/poster.png"),
          Text(
            "I'm big but I fit",
            style: TextStyle(fontSize: 150, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
