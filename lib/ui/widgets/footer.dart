import 'package:arozd_cv/ui/constants/app_colors.dart';
import 'package:arozd_cv/ui/constants/ui_size.dart';
import 'package:arozd_cv/ui/widgets/link_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _myUrl = 'https://github.com/Antoraro/arozdorozhniuk_cv';
    final _flutterUrl = 'https://github.com/flutter/flutter';
    final _baseTheme = Theme.of(context).textTheme.caption.copyWith(
          color: AppColors.dark,
        );
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(top: UISize.pMedium),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text('Made by ', style: _baseTheme),
          LinkText(url: _myUrl, text: '@antoraro'),
          Text(' with ', style: _baseTheme),
          LinkText(url: _flutterUrl, text: 'Flutter Web'),
        ],
      ),
    );
  }
}
