import 'package:arozd_cv/config/my_info.dart';
import 'package:arozd_cv/ui/constants/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../locator.dart';
import 'employment_list_tile.dart';

class EmploymentList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          'EMPLOYMENT',
          style: Theme.of(context).textTheme.headline6.copyWith(
                color: AppColors.primary,
              ),
        ),
        Column(
          children: locator<MyInfo>()
              .employments
              .reversed
              .map((e) => EmploymentListTile(e))
              .toList(),
        ),
      ],
    );
  }
}
