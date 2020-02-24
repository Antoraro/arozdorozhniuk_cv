import 'package:arozd_cv/ui/constants/UISize.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../r.dart';

class InfoLinksView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        _buildLinkButton(
          url: 'https://www.linkedin.com/in/anton-rozdorozhniuk-b44969125/',
          child: Text(
            'in',
            style: Theme.of(context).textTheme.button.copyWith(
                  color: Colors.white,
                ),
          ),
        ),
        _buildLinkButton(
          url: 'https://www.facebook.com/anton.rozdorogniuk',
          child: Text(
            'fb',
            style: Theme.of(context).textTheme.button.copyWith(
                  color: Colors.white,
                ),
          ),
        ),
        _buildLinkButton(
          url: 'https://www.facebook.com/anton.rozdorogniuk',
          child: Image.asset(
            R.assetsImgGithub,
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }

  SizedBox _buildLinkButton({Widget child, String url}) {
    return SizedBox(
      height: UISize.linkButtonSize,
      width: UISize.linkButtonSize,
      child: Card(
        color: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(UISize.circleRadius),
        ),
        elevation: UISize.cardElevation,
        child: InkWell(
          onTap: () async {
            if (await canLaunch(url)) {
              await launch(url);
            } else {
              throw 'Could not launch $url';
            }
          },
          child: Center(child: child),
        ),
      ),
    );
  }
}
