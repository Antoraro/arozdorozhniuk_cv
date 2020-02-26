import 'package:arozd_cv/ui/constants/my_info.dart';
import 'package:arozd_cv/ui/constants/ui_size.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: UISize.pSmall, bottom: UISize.pSmall),
          child: SelectableText(
            'PROFILE',
            style: Theme.of(context).textTheme.headline6.copyWith(
                  color: Colors.black,
                ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: UISize.pMedium),
          child: SelectableText(
            MyInfo.profileText,
            style: Theme.of(context).textTheme.button,
          ),
        ),
      ],
    );
  }
}
