import 'package:arozd_cv/r.dart';
import 'package:arozd_cv/ui/constants/UISize.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: UISize.headerHeight,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(UISize.pLarge),
        ),
        color: Theme.of(context).primaryColor,
        shadowColor: Theme.of(context).primaryColor,
        elevation: UISize.cardElevation,
        child: Padding(
          padding: EdgeInsets.all(UISize.pMedium),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Card(
                elevation: UISize.cardElevation,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(UISize.circleRadius),
                ),
                child: Image.asset(R.assetsImgProfilePic, fit: BoxFit.fill),
              ),
              SizedBox(width: UISize.pMedium),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Anton Rozdorozhniuk',
                    style: Theme.of(context).textTheme.headline4.copyWith(
                          color: Colors.white,
                        ),
                  ),
                  SizedBox(height: UISize.pSmall),
                  Text(
                    'Software Engineer',
                    style: Theme.of(context).textTheme.subtitle2.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      _buildLinkButton(
                        url:
                            'https://www.linkedin.com/in/anton-rozdorozhniuk-b44969125/',
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
                  ),
                  Spacer(),
                  Text(
                    '+380936031715',
                    style: Theme.of(context).textTheme.caption.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w100,
                        ),
                  ),
                  SizedBox(height: UISize.pSmall),
                  Text(
                    'anton.rozdorozhniuk@gmail.com',
                    style: Theme.of(context).textTheme.caption.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w100,
                        ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
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
