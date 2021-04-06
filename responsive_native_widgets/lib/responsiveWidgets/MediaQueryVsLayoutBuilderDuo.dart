import 'package:flutter/material.dart';

class MediaQueryVsLayoutBuilderDuoPage extends StatelessWidget {
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.purple,
            borderRadius: BorderRadius.circular(15),
          ),
          margin: EdgeInsets.all(10),
          child: Center(
            child: FittedBox(
              child: Text(
                '[MediaQuery] width: ${screenSize.width}\n',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(15),
                ),
                margin: EdgeInsets.all(10),
                child: LayoutBuilder(builder: (context, constraints) {
                  return Center(
                    child: FittedBox(
                      child: Text(
                        '[MediaQuery] width: ${screenSize.width}\n' +
                            '[LayoutBuilder] width: ${constraints.maxWidth}\n\n' +
                            '[MediaQuery] height: ${screenSize.height}\n' +
                            '[LayoutBuilder] height: ${constraints.maxHeight}\n\n',
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ),
                  );
                }),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(15),
                ),
                margin: EdgeInsets.all(10),
                child: LayoutBuilder(builder: (context, constraints) {
                  return Center(
                    child: Text(
                      '[MediaQuery] width: ${screenSize.width}\n' +
                          '[LayoutBuilder] width: ${constraints.maxWidth}\n\n' +
                          '[MediaQuery] height: ${screenSize.height}\n' +
                          '[LayoutBuilder] height: ${constraints.maxHeight}\n\n',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
