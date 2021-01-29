import 'package:flutter/material.dart';
import 'responsive/ResponsiveWidget.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return ResponsiveWidget(
      appBar: AppBar(
        title: Text("Flutter App"),
      ),
      builder: (context, constratints) {
        print(constratints.orientation);
        return Container(
          child: Center(
              child: MaterialButton(
            color: Colors.orange,
            onPressed: () {
              SnackBar snackBar = SnackBar(
                backgroundColor: Colors.orange,
                content: Text("Hello snackbar"),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: Text("Click me", style: TextStyle(color: Colors.white)),
          )),
        );
      },
    );
  }
}
