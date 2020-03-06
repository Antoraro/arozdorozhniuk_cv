import 'package:arozd_cv/config/my_info.dart';
import 'package:arozd_cv/ui/constants/app_styles.dart';
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
        Text(locator<MyInfo>().name, style: AppStyles.headerTitle(context)),
        SizedBox(height: UISize.pSmall),
        Text(
          locator<MyInfo>().position,
          style: AppStyles.headerSubtitle(context),
        ),
      ],
    );
  }
}
