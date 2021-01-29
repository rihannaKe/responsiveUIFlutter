import 'package:flutter/material.dart';

class MediaQueryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('MediaQuery')),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: MyMediaQuery(),
      ),
    );
  }
}

class MyMediaQuery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    var width = screenSize.width;
    var height = screenSize.height;
    Orientation orientation = MediaQuery.of(context).orientation;
    return Container(
      decoration: BoxDecoration(
        color: Colors.purple,
        borderRadius: BorderRadius.circular(15),
      ),
      margin: EdgeInsets.all(25),
      child: Center(
        child: Text(
          'MediaQuery\n\n' +
              '-width: ${width}\n\n' +
              '-height: ${height}\n\n' +
              '-orientation: $orientation',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
