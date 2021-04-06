import 'package:flutter/material.dart';
import 'responsiveWidgets/MediaQuery.dart';
import 'responsiveWidgets/LayoutBuilder.dart';
import 'responsiveWidgets/MediaQueryVsLayoutBuilder.dart';
import 'responsiveWidgets/MediaQueryVsLayoutBuilderDuo.dart';
import 'responsiveWidgets/AspectRatio.dart';
import 'responsiveWidgets/AspectRatioAlign.dart';
import 'responsiveWidgets/FittedBox.dart';
import 'responsiveWidgets/FractionallySizedBox.dart';
import 'responsiveWidgets/OrientationBuilder.dart';
import 'responsiveWidgets/FlexibleVsExpandedPage.dart';
import 'thirdPartyPackages/Sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Responsive Widgets',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        primaryColor: Colors.purple[800],
      ),
      home: _HomePage(),
    );
  }
}

class _HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive Widgets'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: ElevatedButton(
                  child: Text('MediaQuery'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MediaQueryPage()),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: ElevatedButton(
                  child: Text('LayoutBuilder'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LayoutBuilderPage()),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: ElevatedButton(
                  child: Text('MediaQuery vs LayoutBuilder'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MediaQueryVsLayoutBuilderPage()),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: ElevatedButton(
                  child: Text('MediaQuery vs LayoutBuilder Duo'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MediaQueryVsLayoutBuilderDuoPage()),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: ElevatedButton(
                  child: Text('OrientaionBuilder'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => OrientatioBuilderPage()),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: ElevatedButton(
                  child: Text('Flexible Expanded'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FlexibleVsExpandedPage()),
                    );
                  },
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: ElevatedButton(
                  child: Text('AspectRatio'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AspectratioPage()),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: ElevatedButton(
                  child: Text('AspectRatioAligned'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AspectratioAlignedPage()),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: ElevatedButton(
                  child: Text('FittedBox'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FittedBoxPage()),
                    );
                  },
                ),
              ),

              // Text('Third party packages'),
              // Padding(
              //   padding: EdgeInsets.symmetric(vertical: 20.0),
              //   child: ElevatedButton(
              //     child: Text('Sizer'),
              //     onPressed: () {
              //       Navigator.push(
              //         context,
              //         MaterialPageRoute(builder: (context) => SizerWidget()),
              //       );
              //     },
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
