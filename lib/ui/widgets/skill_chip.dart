import 'package:arozd_cv/ui/constants/app_colors.dart';
import 'package:arozd_cv/ui/constants/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SkillChip extends StatelessWidget {
  final String name;

  SkillChip(this.name);

  @override
  Widget build(BuildContext context) {
    return Chip(
      elevation: 0.0,
      backgroundColor: AppColors.secondary.withOpacity(0.2),
      label: Text(name, style: AppStyles.chipText(context)),
    );
  }
}
