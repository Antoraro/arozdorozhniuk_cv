import 'package:cv_web/navigation/navigation.dart';
import 'package:cv_web/strings.dart';
import 'package:flutter_web/material.dart';

class PrivateInfo extends StatelessWidget {
  // profileImage(context) => Container(
  //       height: ResponsiveWidget.isSmallScreen(context)
  //           ? MediaQuery.of(context).size.height * 0.3
  //           : MediaQuery.of(context).size.height * 0.15,
  //       width: ResponsiveWidget.isSmallScreen(context)
  //           ? MediaQuery.of(context).size.width * 0.3
  //           : MediaQuery.of(context).size.width * 0.15,
  //       decoration: BoxDecoration(
  //         backgroundBlendMode: BlendMode.luminosity,
  //         color: Colors.blueGrey,
  //         shape: BoxShape.circle,
  //         image: DecorationImage(
  //           image: AssetImage("profile_pic.jpg"),
  //           alignment: Alignment.center,
  //           fit: BoxFit.cover,
  //         ),
  //       ),
  //     );

  final header = Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 10),
        Text(
          Strings.NAME + '\n' + Strings.SURNAME,
          textScaleFactor: 3,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: 'MonteSerrat',
          ),
        ),
        Text(
          Strings.TITLE,
          softWrap: true,
          textScaleFactor: 1,
          style: TextStyle(color: Colors.black, fontFamily: 'MonteSerrat'),
        ),
        SizedBox(height: 10),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Container(
        width: ResponsiveWidget.getPrivateInfoWidth(context),
        decoration: BoxDecoration(color: Color(0xffe5e8ef)),
        child: Column(
          children: <Widget>[
            header,
          ],
        ),
      ),
    );
  }
}
