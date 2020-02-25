import 'package:arozd_cv/ui/constants/app_colors.dart';
import 'package:arozd_cv/ui/constants/ui_size.dart';
import 'package:flutter/material.dart';

class LanguageLevel extends StatefulWidget {
  final String text;
  final double percent;
  final double strokeHeight;
  final double width;

  LanguageLevel(
    this.text, {
    this.width = UISize.langLevelWidthDesktop,
    this.percent = 1.0,
    this.strokeHeight = 5.0,
  });

  @override
  _LanguageLevelState createState() => _LanguageLevelState();
}

class _LanguageLevelState extends State<LanguageLevel>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    _animation = CurveTween(curve: Curves.easeOutBack).animate(_controller)
      ..addListener(() {
        setState(() {});
      });
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          widget.text,
          style: Theme.of(context).textTheme.subtitle1.copyWith(
                fontWeight: FontWeight.w600,
              ),
        ),
        SizedBox(height: 5.0),
        Container(
          height: widget.strokeHeight,
          width: widget.width * _animation.value * widget.percent,
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(UISize.circleRadius),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
