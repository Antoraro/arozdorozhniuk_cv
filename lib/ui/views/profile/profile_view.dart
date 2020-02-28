import 'package:arozd_cv/config/my_info.dart';
import 'package:arozd_cv/ui/constants/app_colors.dart';
import 'package:arozd_cv/ui/constants/ui_size.dart';
import 'package:flutter/material.dart';

import '../../../locator.dart';

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
                  color: AppColors.dark,
                ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: UISize.pMedium),
          child: SelectableText(
            locator<MyInfo>().profileText,
            style: Theme.of(context).textTheme.button,
          ),
        ),
      ],
    );
  }
}
