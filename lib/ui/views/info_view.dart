import 'package:arozd_cv/ui/constants/UISize.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfoView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: UISize.headerHeight,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(UISize.pLarge),
        ),
        color: Theme.of(context).primaryColor,
        shadowColor: Theme.of(context).primaryColor,
        elevation: UISize.cardElevation,
        child: Padding(
          padding: EdgeInsets.all(UISize.pLarge),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[],
          ),
        ),
      ),
    );
  }
}
