import 'package:arozd_cv/ui/constants/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SkillChip extends StatelessWidget {
  final String name;

  SkillChip(this.name);

  @override
  Widget build(BuildContext context) {
    return Chip(
      elevation: 0.0,
      backgroundColor: AppColors.primary,
      shadowColor: AppColors.primary,
      label: Text(
        name,
        style: Theme.of(context).textTheme.button.copyWith(
              color: AppColors.accent,
              fontSize: 13.0,
            ),
      ),
    );
  }
}
