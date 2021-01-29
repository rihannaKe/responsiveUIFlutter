import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SizerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      //return LayoutBuilder
      builder: (context, constraints) {
        return OrientationBuilder(
          //return OrientationBuilder
          builder: (context, orientation) {
            //initialize SizerUtil()
            SizerUtil().init(constraints, orientation); //initialize SizerUtil
            return _MyWidget();
          },
        );
      },
    );
  }
}

class _MyWidget extends StatelessWidget {
  const _MyWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sizer package')),
      body: Padding(
        padding: EdgeInsets.all(3.0.h),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.purple,
              border: Border.all(color: Colors.white),
            ),
            width: 80.0.w, //It will take a 80% of screen width
            height: 100.0.h,
            child: Center(
              child: Text(
                'I am on ${SizerUtil.deviceType}',
                style: TextStyle(fontSize: 12.0.sp, color: Colors.white),
              ),
            ), //It will take a 20% of screen height
          ),
        ),
      ),
    );
  }
}
