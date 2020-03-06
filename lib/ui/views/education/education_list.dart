import 'package:arozd_cv/config/my_info.dart';
import 'package:arozd_cv/locator.dart';
import 'package:arozd_cv/ui/constants/ui_size.dart';
import 'package:arozd_cv/ui/widgets/base_card.dart';
import 'package:arozd_cv/ui/widgets/base_list_tile.dart';
import 'package:flutter/material.dart';

class EducationList extends StatelessWidget {
  final educationList = locator<MyInfo>().educationList;
  @override
  Widget build(BuildContext context) {
    if (educationList == null || educationList.isEmpty) {
      return SizedBox.shrink();
    }
    return BaseCard(
      header: 'EDUCATION',
      child: Padding(
        padding: EdgeInsets.only(bottom: UISize.pSmall),
        child: Column(
          children: educationList.map((e) => BaseListTile(data: e)).toList(),
        ),
      ),
    );
  }
}
