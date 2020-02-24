import 'package:arozd_cv/ui/constants/UISize.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfoNameView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Anton Rozdorozhniuk',
          softWrap: true,
          style: Theme.of(context).textTheme.headline4.copyWith(
                color: Colors.white,
              ),
        ),
        SizedBox(height: UISize.pSmall),
        Text(
          'Software Engineer',
          style: Theme.of(context).textTheme.subtitle2.copyWith(
                color: Colors.white,
              ),
        ),
      ],
    );
  }
}
