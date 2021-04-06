import 'package:flutter/material.dart';

class LayoutBuilderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('LayoutBuilder')),
      body: _MyLayoutBuilder(),
    );
  }
}

class _MyLayoutBuilder extends StatelessWidget {
  _MyLayoutBuilder({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              'LayoutBuilder\n\n' +
                  '-BoxConstraint.maxWidth: ${constraints.maxWidth}\n\n' +
                  '-BoxConstraint.maxHeight: ${constraints.maxHeight}\n\n',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          );
        },
      ),
    );
  }
}
