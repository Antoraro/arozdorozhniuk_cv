import 'package:arozd_cv/ui/constants/UISize.dart';
import 'package:arozd_cv/ui/widgets/language_level.dart';
import 'package:flutter/material.dart';

class SkillsLanguagesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(UISize.pSmall),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          LanguageLevel('Ukrainian', width: 150.0, percent: 1.0),
          LanguageLevel('Russian', width: 150.0, percent: 1.0),
          LanguageLevel('English', width: 150.0, percent: 0.8),
        ],
      ),
    );
  }
}
