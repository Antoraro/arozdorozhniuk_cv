import 'package:arozd_cv/config/my_info.dart';
import 'package:arozd_cv/ui/constants/app_colors.dart';
import 'package:arozd_cv/ui/constants/ui_size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../locator.dart';

class InfoNameView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SelectableText(
          locator<MyInfo>().name,
          style: Theme.of(context).textTheme.headline4.copyWith(
                color: AppColors.accent,
              ),
        ),
        SizedBox(height: UISize.pSmall),
        SelectableText(
          locator<MyInfo>().position,
          style: Theme.of(context).textTheme.subtitle2.copyWith(
                color: AppColors.accent,
              ),
        ),
      ],
    );
  }
}
