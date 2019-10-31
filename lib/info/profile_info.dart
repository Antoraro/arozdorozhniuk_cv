import 'package:cv_web/navigation/navigation.dart';
import 'package:cv_web/strings.dart';
import 'package:flutter_web/material.dart';

class ProfileInfo extends StatelessWidget {

  final mainData = Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        Strings.DESCRIPTION,
        softWrap: true,
        textScaleFactor: 1.2,
        style: TextStyle(color: Colors.white70),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[mainData],
      ),
      smallScreen: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          mainData
        ],
      ),
    );
  }
}
