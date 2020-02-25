import 'package:arozd_cv/ui/constants/my_info.dart';
import 'package:arozd_cv/ui/widgets/base_list_tile.dart';
import 'package:flutter/material.dart';

class EmploymentList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          'EMPLOYMENT',
          style: Theme.of(context).textTheme.headline6.copyWith(
                color: Colors.black,
              ),
        ),
        Column(
          children: MyInfo.employments.map((e) => BaseListTile(e)).toList(),
        ),
      ],
    );
  }
}
