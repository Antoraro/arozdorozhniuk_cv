import 'package:flutter/material.dart';

class SkillChip extends StatelessWidget {
  final String name;

  SkillChip(this.name);

  @override
  Widget build(BuildContext context) {
    return Chip(
      elevation: 0.0,
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
