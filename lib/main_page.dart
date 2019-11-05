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
        body: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.6,
            alignment: Alignment(0.0, 0.0),
            child: SingleChildScrollView(
              child: Card(
                elevation: 4,
                color: Color(0xfff0f4f7),
                child: ResponsiveWidget(
                  largeScreen: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      new Flexible(child: ProfileInfo(), flex: 7),
                      new Flexible(child: PrivateInfo(), flex: 3),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
