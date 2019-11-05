import 'package:cv_web/navigation/navigation.dart';
import 'package:cv_web/strings.dart';
import 'package:flutter_web/material.dart';

class ProfileInfo extends StatelessWidget {
  final mainData = Column(
    children: <Widget>[
      Text(
        Strings.DESCRIPTION,
        softWrap: true,
        textScaleFactor: 1.2,
        style: TextStyle(
          color: Colors.black,
          fontFamily: 'MonteSerrat',
        ),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Padding(
        padding: EdgeInsets.all(8.0),
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              mainData,
            ],
          ),
        ),
      ),
    );
  }
}
