import 'package:arozd_cv/ui/constants/app_styles.dart';
import 'package:arozd_cv/ui/constants/ui_size.dart';
import 'package:arozd_cv/ui/widgets/animated_percent_linear.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LanguageLevel extends StatelessWidget {
  final String text;
  final double percent;
  final double strokeHeight;

  LanguageLevel(
    this.text, {
    this.percent = 1.0,
    this.strokeHeight = UISize.pSmall / 2,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          text,
          style: AppStyles.languageText(context),
        ),
        SizedBox(height: UISize.pSmall / 2),
        AnimatedPercentLinear(
          percent: percent,
          height: strokeHeight,
        ),
      ],
    );
  }
}
