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
  final String header;

  const BaseCard({
    this.width,
    this.height,
    this.padding = UISize.pMedium,
    this.borderRadius = UISize.pLarge,
    this.elevation = UISize.cardElevation,
    this.color = AppColors.accent,
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
          padding: EdgeInsets.all(padding),
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
                        style: Theme.of(context).textTheme.headline6.copyWith(
                              color: AppColors.primary,
                            ),
                      ),
                    )
                  : SizedBox.shrink(),
              Flexible(
                child: Padding(
                  padding: EdgeInsets.only(left: UISize.pSmall),
                  child: child,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
