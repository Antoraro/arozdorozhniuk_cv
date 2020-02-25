import 'package:arozd_cv/ui/constants/my_info.dart';
import 'package:arozd_cv/ui/constants/ui_size.dart';
import 'package:arozd_cv/ui/widgets/skill_chip.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SkillsMineView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Wrap(
        spacing: UISize.pSmall,
        alignment: WrapAlignment.start,
        textDirection: TextDirection.ltr,
        children: MyInfo.skills.map((s) => SkillChip(s)).toList(),
      ),
    );
  }
}
