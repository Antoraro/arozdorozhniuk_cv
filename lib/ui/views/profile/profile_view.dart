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
        Text(
          'PROFILE',
          style: Theme.of(context).textTheme.headline6.copyWith(
                color: AppColors.primary,
              ),
        ),
        SizedBox(height: UISize.pMedium),
        Padding(
          padding: EdgeInsets.only(left: UISize.pMedium),
          child: Text(
            locator<MyInfo>().profileText,
            style: Theme.of(context).textTheme.button,
          ),
        ),
      ],
    );
  }
}
