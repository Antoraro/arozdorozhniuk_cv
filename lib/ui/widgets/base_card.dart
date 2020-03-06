import 'package:arozd_cv/ui/constants/app_colors.dart';
import 'package:arozd_cv/ui/constants/app_styles.dart';
import 'package:arozd_cv/ui/constants/ui_size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BaseCard extends StatelessWidget {
  final double width;
  final double height;
  final EdgeInsetsGeometry padding;
  final double elevation;
  final double borderRadius;
  final Color color;
  final Color shadowColor;
  final Widget child;
  final String header;

  const BaseCard({
    this.padding = const EdgeInsets.symmetric(
      vertical: UISize.pMedium,
      horizontal: UISize.pLarge,
    ),
    this.color = AppColors.accent,
    this.borderRadius = UISize.pLarge,
    this.elevation = UISize.cardElevation,
    this.width,
    this.height,
    this.shadowColor,
    this.header,
    @required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: UISize.pSmall),
      child: Material(
        color: color,
        elevation: elevation,
        borderRadius: BorderRadius.circular(borderRadius),
        shadowColor: shadowColor ?? AppColors.secondary.withOpacity(0.1),
        child: Container(
          padding: padding,
          height: height,
          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              header != null && header.isNotEmpty
                  ? Flexible(
                      child: Text(
                        header,
                        style: AppStyles.baseCardHeader(context),
                      ),
                    )
                  : SizedBox.shrink(),
              Flexible(
                child: child,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
