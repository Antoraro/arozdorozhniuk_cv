import 'package:arozd_cv/ui/constants/my_info.dart';
import 'package:arozd_cv/ui/constants/ui_size.dart';
import 'package:arozd_cv/ui/widgets/language_level.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SkillsLanguagesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizeInfo) {
        return Padding(
          padding: EdgeInsets.all(UISize.pSmall),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: MyInfo.languages.entries
                .map((entry) => LanguageLevel(
                      entry.key,
                      percent: entry.value,
                      width: _getLevelWidth(sizeInfo.deviceScreenType),
                    ))
                .toList(),
          ),
        );
      },
    );
  }

  double _getLevelWidth(DeviceScreenType screenType) {
    switch (screenType) {
      case DeviceScreenType.Mobile:
        return UISize.langLevelWidthMobile;
      case DeviceScreenType.Tablet:
      case DeviceScreenType.Desktop:
      default:
        return UISize.langLevelWidthDesktop;
    }
  }
}
