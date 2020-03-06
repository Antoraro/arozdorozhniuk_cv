import 'package:arozd_cv/config/my_info.dart';
import 'package:arozd_cv/locator.dart';
import 'package:arozd_cv/ui/constants/app_colors.dart';
import 'package:arozd_cv/ui/widgets/base_list_tile.dart';
import 'package:flutter/material.dart';

class EducationList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          'EDUCATION',
          style: Theme.of(context).textTheme.headline6.copyWith(
                color: AppColors.primary,
              ),
        ),
        Column(
          children: locator<MyInfo>()
              .educationList
              .reversed
              .map((e) => BaseListTile(data: e))
              .toList(),
        ),
      ],
    );
  }
}
