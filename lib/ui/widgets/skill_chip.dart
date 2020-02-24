import 'package:arozd_cv/ui/constants/UISize.dart';
import 'package:flutter/material.dart';

class SkillChip extends StatelessWidget {
  final String name;

  SkillChip(this.name);

  @override
  Widget build(BuildContext context) {
    return Chip(
      elevation: UISize.cardElevation,
      backgroundColor: Colors.blue,
      shadowColor: Colors.blue,
      label: Text(
        name,
        style: Theme.of(context).textTheme.button.copyWith(
              color: Colors.white,
            ),
      ),
    );
  }
}
