import 'package:arozd_cv/ui/constants/app_colors.dart';
import 'package:arozd_cv/ui/constants/my_info.dart';
import 'package:arozd_cv/ui/constants/ui_size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfoContactsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Text(
          MyInfo.phone,
          style: Theme.of(context).textTheme.caption.copyWith(
                color: AppColors.accent,
                fontWeight: FontWeight.w100,
              ),
        ),
        SizedBox(height: UISize.pSmall),
        Text(
          MyInfo.mail,
          style: Theme.of(context).textTheme.caption.copyWith(
                color: AppColors.accent,
                fontWeight: FontWeight.w100,
              ),
        ),
      ],
    );
  }
}
