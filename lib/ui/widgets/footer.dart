import 'package:arozd_cv/ui/constants/app_styles.dart';
import 'package:arozd_cv/ui/constants/ui_size.dart';
import 'package:arozd_cv/ui/widgets/link_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _myUrl = 'https://github.com/Antoraro/arozdorozhniuk_cv';
    final _flutterUrl = 'https://github.com/flutter/flutter';

    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(top: UISize.pMedium),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text('Made by ', style: AppStyles.footerText(context)),
          LinkText(url: _myUrl, text: '@antoraro'),
          Text(' with ', style: AppStyles.footerText(context)),
          LinkText(url: _flutterUrl, text: 'Flutter Web'),
        ],
      ),
    );
  }
}
