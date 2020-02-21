import 'package:flutter/material.dart';
import 'package:arozd_cv/ui/constants/UISize.dart';
import 'package:arozd_cv/ui/views/header_view.dart';

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
