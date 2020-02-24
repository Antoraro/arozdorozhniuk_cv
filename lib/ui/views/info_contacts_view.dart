import 'package:arozd_cv/ui/constants/UISize.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfoContactsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Text(
          '+380936031715',
          style: Theme.of(context).textTheme.caption.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w100,
              ),
        ),
        SizedBox(height: UISize.pSmall),
        Text(
          'anton.rozdorozhniuk@gmail.com',
          style: Theme.of(context).textTheme.caption.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w100,
              ),
        ),
      ],
    );
  }
}
