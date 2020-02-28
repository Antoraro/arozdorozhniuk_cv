import 'package:arozd_cv/ui/constants/app_colors.dart';
import 'package:arozd_cv/ui/constants/ui_size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BaseCard extends StatelessWidget {
  final double width;
  final double height;
  final double padding;
  final double elevation;
  final double borderRadius;
  final Color color;
  final Color shadowColor;
  final Widget child;

  const BaseCard({
    this.width,
    this.height,
    this.padding = UISize.pMedium,
    this.borderRadius = UISize.pLarge,
    this.elevation = UISize.cardElevation,
    this.color = AppColors.accent,
    this.shadowColor,
    @required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: elevation * 2),
      child: Material(
        color: color,
        elevation: elevation,
        borderRadius: BorderRadius.circular(borderRadius),
        shadowColor: shadowColor ?? AppColors.secondary.withOpacity(0.1),
        child: Container(
          padding: EdgeInsets.all(padding),
          height: height,
          width: width,
          child: child,
        ),
      ),
    );
  }
}
