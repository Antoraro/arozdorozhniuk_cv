import 'package:arozd_cv/ui/constants/app_colors.dart';
import 'package:arozd_cv/ui/constants/ui_size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _url = 'https://github.com/Antoraro/arozdorozhniuk_cv';
    final _baseTheme = Theme.of(context).textTheme.caption.copyWith(
          color: AppColors.dark,
        );
    final _tapRecognizer = new TapGestureRecognizer()
      ..onTap = () => launch(_url);

    return Padding(
      padding: EdgeInsets.only(top: UISize.pMedium),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: _baseTheme,
          children: <TextSpan>[
            TextSpan(text: 'Made by '),
            TextSpan(
              text: '@',
              style: _baseTheme.copyWith(fontWeight: FontWeight.w700),
            ),
            TextSpan(
              text: 'antoraro',
              style: _baseTheme.copyWith(
                fontWeight: FontWeight.w700,
                decoration: TextDecoration.underline,
              ),
              recognizer: _tapRecognizer,
            ),
          ],
        ),
      ),
    );
  }
}
