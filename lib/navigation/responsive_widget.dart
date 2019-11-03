import 'package:flutter_web/material.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget largeScreen;
  final Widget mediumScreen;
  final Widget smallScreen;

  const ResponsiveWidget(
      {Key key,
      @required this.largeScreen,
      this.mediumScreen,
      this.smallScreen})
      : super(key: key);

  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 800;
  }

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 800;
  }

  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 800 &&
        MediaQuery.of(context).size.width < 1200;
  }

  static double getPadding(BuildContext context) {
    if (isLargeScreen(context)) {
      return MediaQuery.of(context).size.height * 0.1;
    } else {
      return MediaQuery.of(context).size.height * 0.05;
    } 
  }

  static double getPrivateInfoWidth(BuildContext context) {
    if (isLargeScreen(context) || isMediumScreen(context)) {
      return MediaQuery.of(context).size.width * 0.3;
    } else {
      return MediaQuery.of(context).size.width * 0.9;
    }
  }

  static double getProfileInfoWidth(BuildContext context) {
    if (isLargeScreen(context)) {
      return MediaQuery.of(context).size.width * 0.5;
    } else if (isMediumScreen(context)) {
      return MediaQuery.of(context).size.width * 0.6;
    } else {
      return MediaQuery.of(context).size.width * 0.9;
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return largeScreen;
        } else if (constraints.maxWidth < 1200 && constraints.maxWidth > 800) {
          return mediumScreen ?? largeScreen;
        } else {
          return smallScreen ?? largeScreen;
        }
      },
    );
  }
}
