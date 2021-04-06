import 'package:flutter/material.dart';

class AspectratioAlignedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text('AspectRatio Aligned')),
      body: SafeArea(
        child: MyAspectRatioAligned(),
      ),
    );
  }
}

class MyAspectRatioAligned extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: Container(
            margin: EdgeInsets.all(25),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.purple,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: FittedBox(
                fit: BoxFit.contain,
                child: Text(
                  'AspectRatio 16 / 9',
                  style: TextStyle(fontSize: 50, color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
