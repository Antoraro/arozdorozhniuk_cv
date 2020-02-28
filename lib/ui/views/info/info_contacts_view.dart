import 'package:arozd_cv/config/my_info.dart';
import 'package:arozd_cv/ui/constants/app_colors.dart';
import 'package:arozd_cv/ui/constants/ui_size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../locator.dart';

class InfoContactsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var info = locator<MyInfo>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        GestureDetector(
          onTap: () => launch('tel:${info.phone}'),
          child: Text(
            info.phone,
            style: Theme.of(context).textTheme.caption.copyWith(
                  color: AppColors.accent,
                  fontWeight: FontWeight.w100,
                ),
          ),
        ),
        SizedBox(height: UISize.pSmall),
        GestureDetector(
          onTap: () => launch('mailto:${info.mail}'),
          child: Text(
            info.mail,
            style: Theme.of(context).textTheme.caption.copyWith(
                  color: AppColors.accent,
                  fontWeight: FontWeight.w100,
                ),
          ),
        ),
      ],
    );
  }
}
