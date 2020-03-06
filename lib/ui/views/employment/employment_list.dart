import 'package:arozd_cv/config/my_info.dart';
import 'package:arozd_cv/ui/widgets/base_card.dart';
import 'package:arozd_cv/ui/widgets/base_list_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../locator.dart';

class EmploymentList extends StatelessWidget {
  final employmentList = locator<MyInfo>().employmentList;
  @override
  Widget build(BuildContext context) {
    if (employmentList == null || employmentList.isEmpty) {
      return SizedBox.shrink();
    }
    return BaseCard(
      header: 'EMPLOYMENT',
      child: Column(
        children: employmentList
            .map((e) => BaseListTile(data: e, onlyHeader: false))
            .toList(),
      ),
    );
  }
}
