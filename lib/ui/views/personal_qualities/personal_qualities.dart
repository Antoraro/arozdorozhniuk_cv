import 'package:arozd_cv/config/my_info.dart';
import 'package:arozd_cv/ui/constants/app_colors.dart';
import 'package:arozd_cv/ui/constants/ui_size.dart';
import 'package:flutter/material.dart';

import '../../../locator.dart';

class PersonalQualities extends StatelessWidget {
  final _text = locator<MyInfo>().personalQualities;
  @override
  Widget build(BuildContext context) {
    if (_text == null || _text.isEmpty) {
      return SizedBox.shrink();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          'PERSONAL QUALITIES',
          style: Theme.of(context).textTheme.headline6.copyWith(
                color: AppColors.primary,
              ),
        ),
        SizedBox(height: UISize.pMedium),
        Padding(
          padding: EdgeInsets.only(left: UISize.pMedium),
          child: Text(
            _text,
            style: Theme.of(context).textTheme.button,
          ),
        ),
      ],
    );
  }
}
