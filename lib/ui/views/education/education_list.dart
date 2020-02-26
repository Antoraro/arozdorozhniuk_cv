import 'package:arozd_cv/ui/constants/my_info.dart';
import 'package:arozd_cv/ui/constants/ui_size.dart';
import 'package:arozd_cv/ui/widgets/base_list_tile.dart';
import 'package:flutter/material.dart';

class EducationList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: UISize.pSmall),
          child: SelectableText(
            'EDUCATION',
            style: Theme.of(context).textTheme.headline6.copyWith(
                  color: Colors.black,
                ),
          ),
        ),
        Column(
          children: MyInfo.educationList.reversed
              .map((e) => BaseListTile(e))
              .toList(),
        ),
      ],
    );
  }
}
