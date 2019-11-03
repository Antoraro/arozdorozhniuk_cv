import 'package:cv_web/info/info.dart';
import 'package:cv_web/navigation/navigation.dart';
import 'package:flutter_web/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Scaffold(
        backgroundColor: Color(0xffEDF2F6),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(ResponsiveWidget.getPadding(context)),
            child: Card(
              elevation: 4,
              color: Color(0xfff0f4f7),
              child: ResponsiveWidget(
                largeScreen: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  textDirection: TextDirection.rtl,
                  children: <Widget>[
                    PrivateInfo(),
                    ProfileInfo(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
