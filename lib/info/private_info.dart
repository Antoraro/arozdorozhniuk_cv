import 'dart:html' as html;

import 'package:cv_web/navigation/navigation.dart';
import 'package:cv_web/strings.dart';
import 'package:flutter_web/material.dart';

class PrivateInfo extends StatelessWidget {
  profileImage(context) => Container(
        height: ResponsiveWidget.isSmallScreen(context)
            ? MediaQuery.of(context).size.height * 0.3
            : MediaQuery.of(context).size.width * 0.3,
        width: ResponsiveWidget.isSmallScreen(context)
            ? MediaQuery.of(context).size.height * 0.3
            : MediaQuery.of(context).size.width * 0.3,
        decoration: BoxDecoration(
          backgroundBlendMode: BlendMode.luminosity,
          color: Colors.blueGrey,
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage("profile_pic.jpg"),
            alignment: Alignment.center,
            fit: BoxFit.cover,
          ),
        ),
      );

  final profileData = Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        Strings.NAME + '\n' + Strings.SURNAME,
        textScaleFactor: 3.2,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      Text(
        Strings.TITLE,
        softWrap: true,
        textScaleFactor: 1,
        style: TextStyle(color: Colors.white70),
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        Strings.DESCRIPTION,
        softWrap: true,
        textScaleFactor: 1.2,
        style: TextStyle(color: Colors.white70),
      ),
      SizedBox(
        height: 20,
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[profileImage(context), profileData],
      ),
      smallScreen: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          profileImage(context),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          profileData
        ],
      ),
    );
  }
}
