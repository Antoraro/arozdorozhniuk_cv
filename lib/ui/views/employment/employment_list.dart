import 'package:arozd_cv/config/my_info.dart';
import 'package:arozd_cv/ui/constants/ui_size.dart';
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
        Padding(
          padding: EdgeInsets.only(top: UISize.pSmall),
          child: SelectableText(
            'EMPLOYMENT',
            style: Theme.of(context).textTheme.headline6.copyWith(
                  color: Colors.black,
                ),
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
