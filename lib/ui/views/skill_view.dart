import 'package:arozd_cv/ui/constants/UISize.dart';
import 'package:arozd_cv/ui/widgets/language_level.dart';
import 'package:arozd_cv/ui/widgets/skill_chip.dart';
import 'package:flutter/material.dart';

class SkillView extends StatelessWidget {
  static const List<String> mySkills = [
    'Java',
    'dart',
    'kotlin',
    'swift',
    'C#',
    'python',
    'Android SDK',
    'Flutter SDK',
    'Spring',
    'Xamarin',
    'iOS Developement',
    'Android Developement',
    'Backend Developement',
  ];

  @override
  Widget build(BuildContext context) {
    final TextStyle _languageStyle =
        Theme.of(context).textTheme.subtitle1.copyWith(
              fontWeight: FontWeight.w600,
            );

    return SizedBox(
      width: double.infinity,
      height: UISize.headerHeight,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(UISize.pLarge),
        ),
        shadowColor: Colors.grey,
        elevation: UISize.cardElevation,
        child: Padding(
          padding: EdgeInsets.all(UISize.pSmall),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.all(UISize.pSmall),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      LanguageLevel('Ukrainian', style: _languageStyle),
                      LanguageLevel('Russian', style: _languageStyle),
                      LanguageLevel('English', style: _languageStyle),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Wrap(
                  alignment: WrapAlignment.start,
                  textDirection: TextDirection.ltr,
                  spacing: UISize.pSmall,
                  children: mySkills.map((s) => SkillChip(s)).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
