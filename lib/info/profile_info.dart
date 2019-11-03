import 'package:cv_web/navigation/navigation.dart';
import 'package:cv_web/strings.dart';
import 'package:flutter_web/material.dart';

class ProfileInfo extends StatelessWidget {
  final mainData = Column(
    children: <Widget>[
      Text(
        Strings.DESCRIPTION,
        softWrap: true,
        maxLines: null,
        overflow: TextOverflow.ellipsis,
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
      largeScreen: Container(
        width: ResponsiveWidget.getProfileInfoWidth(context),
        decoration: BoxDecoration(color: Color(0xffe5e8ef)),
        child: Column(
          children: <Widget>[
            mainData,
          ],
        ),
      ),
    );
  }
}
