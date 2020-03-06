import 'package:arozd_cv/ui/constants/app_styles.dart';
import 'package:arozd_cv/ui/extensions/hover_extensions.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkText extends StatelessWidget {
  final String url;
  final String text;

  const LinkText({this.url, this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        if (await canLaunch(url)) {
          await launch(url);
        } else {
          throw 'Could not launch $url';
        }
      },
      child: Text(text, style: AppStyles.linkText(context))
          .showCursorOnHover
          .underlineOnHover,
    );
  }
}
