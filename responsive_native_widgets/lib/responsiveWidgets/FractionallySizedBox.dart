import 'package:flutter/material.dart';

class FractionallySizedBoxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('FractionallySizedBox')),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyFractionallySizedWidget(widthFactor: 0.25),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyFractionallySizedWidget(widthFactor: 0.5),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyFractionallySizedWidget(widthFactor: 0.75),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyFractionallySizedWidget(widthFactor: 1.0),
                ],
              ),
              Container(
                margin: EdgeInsets.all(20),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.purple)),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: FractionallySizedBox(
                  widthFactor: 0.5,
                  heightFactor: 0.25,
                  child: RaisedButton(
                    child: Text('Click'),
                    color: Colors.purple,
                    textColor: Colors.white,
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyFractionallySizedWidget extends StatelessWidget {
  final double widthFactor;
  MyFractionallySizedWidget({@required this.widthFactor});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FractionallySizedBox(
        alignment: Alignment.centerLeft,
        widthFactor: widthFactor,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.purple,
            border: Border.all(color: Colors.white),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              '${widthFactor * 100}%',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
        ),
      ),
    );
  }
}
