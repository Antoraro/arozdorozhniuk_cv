import 'package:arozd_cv/ui/constants/UISize.dart';
import 'package:flutter/material.dart';

class LanguageLevel extends StatelessWidget {
  final GlobalKey _key = GlobalKey();
  final String text;
  final TextStyle style;
  final double percent;
  final double height;

  LanguageLevel(
    this.text, {
    this.style,
    this.percent = 1.0,
    this.height = 5.0,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          text,
          style: style,
        ),
        SizedBox(height: UISize.pSmall),
        SizedBox(
          height: height,
          child: AnimatedContainer(
            key: _key,
            width: _getWidth(),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(UISize.circleRadius),
            ),
            duration: Duration(milliseconds: 300),
          ),
        ),
      ],
    );
  }

  double _getWidth() {
    final RenderBox renderBox = _key.currentContext.findRenderObject();
    return renderBox.size.width * percent;
  }
}
