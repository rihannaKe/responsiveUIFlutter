import 'package:flutter/material.dart';

class FlexibleVsExpandedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flexible & Expanded')),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: MyExpandedConent(),
                ),
                Expanded(
                  child: MyExpandedConent(),
                ),
              ],
            ),
            Row(
              children: [
                Flexible(
                  child: MyFlexContent(),
                ),
                Flexible(
                  child: MyFlexContent(),
                )
              ],
            ),
            Row(
              children: [
                Flexible(
                  child: MyFlexContent(),
                ),
                Expanded(
                  child: MyExpandedConent(),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: MyExpandedConent(),
                ),
                Flexible(
                  child: MyFlexContent(),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: MyExpandedConent(),
                ),
                Flexible(
                  child: MyFlexContent(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MyExpandedConent extends StatelessWidget {
  const MyExpandedConent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.purple,
        border: Border.all(color: Colors.white),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          'Expanded',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
    );
  }
}

class MyFlexContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.amber,
        border: Border.all(color: Colors.white),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          'I am Flexible!!',
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
      ),
    );
  }
}
