import 'package:flutter/material.dart';

class OrientatioBuilderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Orientation Builder')),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: MyOrientazioneBuilder(),
      ),
    );
  }
}

class MyOrientazioneBuilder extends StatelessWidget {
  const MyOrientazioneBuilder({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Orientation deviceOrientation = MediaQuery.of(context).orientation;
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.circular(15),
            ),
            margin: EdgeInsets.all(25),
            child: OrientationBuilder(
              builder: (context, orientation) => Center(
                child: FittedBox(
                  child: Text(
                    'MediaQuery orientation: $deviceOrientation\n\n' +
                        'OrientationBuilder: $orientation',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            margin: EdgeInsets.all(25),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.purple, width: 3),
              borderRadius: BorderRadius.circular(15),
            ),
            child: OrientationBuilder(
              builder: (context, orientation) => Center(
                child: FittedBox(
                  child: Text(
                    'MediaQuery orientation: $deviceOrientation\n\n' +
                        'OrientationBuilder: $orientation',
                    style: TextStyle(color: Colors.purple, fontSize: 30),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
