import 'package:arozd_cv/config/my_info.dart';
import 'package:arozd_cv/ui/constants/ui_size.dart';
import 'package:flutter/cupertino.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../locator.dart';
import 'skills_language_level.dart';

class SkillsLanguagesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizeInfo) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: locator<MyInfo>()
              .languages
              .entries
              .map((entry) => Padding(
                    padding: EdgeInsets.only(
                      bottom: UISize.pSmall,
                    ),
                    child: LanguageLevel(
                      entry.key,
                      percent: entry.value,
                    ),
                  ))
              .toList(),
        );
      },
    );
  }
}
