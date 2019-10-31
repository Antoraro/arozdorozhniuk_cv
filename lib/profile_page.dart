import 'package:cv_web/info/info.dart';
import 'package:cv_web/navigation/navigation.dart';
import 'package:flutter_web/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _padding = MediaQuery.of(context).size.height * 0.1;

    return ResponsiveWidget(
      largeScreen: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          child: AnimatedPadding(
            duration: Duration(milliseconds: 1000),
            padding: EdgeInsets.all(_padding),
            child: ResponsiveWidget(
              largeScreen: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  PrivateInfo(),
                  SizedBox(height: _padding),
                  ProfileInfo(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
