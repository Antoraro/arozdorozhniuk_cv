import 'package:arozd_cv/config/my_info.dart';
import 'package:arozd_cv/ui/constants/ui_size.dart';
import 'package:arozd_cv/ui/widgets/skill_chip.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../locator.dart';

class SkillsMineView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: UISize.pSmall,
      alignment: WrapAlignment.start,
      textDirection: TextDirection.ltr,
      children: locator<MyInfo>().skillList.map((s) => SkillChip(s)).toList(),
    );
  }
}
