import 'package:flutter/material.dart';
import 'package:the_basics/ui/constants/UISize.dart';
import 'package:the_basics/ui/views/header_view.dart';

class DesktopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: EdgeInsets.all(UISize.pLarge),
        constraints: BoxConstraints(maxWidth: UISize.maxWidth),
        child: Column(
          children: <Widget>[
            HeaderView(),
          ],
        ),
      ),
    );
  }
}
