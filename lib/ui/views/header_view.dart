import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:the_basics/ui/constants/UISize.dart';

class HeaderView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: UISize.headerHeight,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(UISize.pLarge),
        ),
        shadowColor: Colors.grey,
        elevation: UISize.cardElevation,
        child: Padding(
          padding: EdgeInsets.all(UISize.pLarge),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Anton Rozdorozhniuk',
                style: Theme.of(context).textTheme.headline3,
              ),
              Text(
                'Software Engineer',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
