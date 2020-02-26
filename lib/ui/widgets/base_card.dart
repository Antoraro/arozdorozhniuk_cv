import 'package:arozd_cv/ui/constants/app_colors.dart';
import 'package:arozd_cv/ui/constants/ui_size.dart';
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
    return SizedBox(
      width: width,
      height: height,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        color: color,
        shadowColor: shadowColor ?? AppColors.secondary.withOpacity(0.2),
        elevation: elevation,
        child: Padding(
          padding: EdgeInsets.all(padding),
          child: child,
        ),
      ),
    );
  }
}
