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
    this.strokeHeight = 5.0,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        SelectableText(
          text,
          style: Theme.of(context).textTheme.subtitle1.copyWith(
                fontWeight: FontWeight.w600,
              ),
        ),
        SizedBox(height: 5.0),
        AnimatedPercentLinear(
          percent: percent,
          height: strokeHeight,
        ),
      ],
    );
  }
}
