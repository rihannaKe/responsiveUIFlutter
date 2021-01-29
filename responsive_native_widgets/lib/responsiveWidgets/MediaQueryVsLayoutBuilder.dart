import 'package:flutter/material.dart';

class MediaQueryVsLayoutBuilderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('MediaQuery vs LayoutBuilder')),
      body: MyLayoutBuilder(),
    );
  }
}

class MyLayoutBuilder extends StatelessWidget {
  MyLayoutBuilder({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;
    return Container(
      decoration: BoxDecoration(
        color: Colors.purple,
        borderRadius: BorderRadius.circular(15),
      ),
      margin: EdgeInsets.all(25),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Center(
            child: Text(
              '[MediaQuery] width: ${screenSize.width}\n' +
                  '[LayoutBuilder] width: ${constraints.maxWidth}\n\n' +
                  '[MediaQuery] height: ${screenSize.height}\n' +
                  '[LayoutBuilder] height: ${constraints.maxHeight}\n\n' +
                  '[MediaQuery] orientation: $orientation',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          );
        },
      ),
    );
  }
}
