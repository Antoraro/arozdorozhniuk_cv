import 'package:arozd_cv/config/my_info.dart';
import 'package:arozd_cv/ui/constants/app_colors.dart';
import 'package:arozd_cv/ui/constants/ui_size.dart';
import 'package:arozd_cv/ui/extensions/hover_extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../locator.dart';

class InfoLinksView extends StatelessWidget {
  final _info = locator<MyInfo>();
  @override
  Widget build(BuildContext context) {
    List<Widget> rowChildren = _info.links.entries
        .map(
          (e) => _buildLinkButton(url: e.value, assetPath: e.key),
        )
        .toList();
    rowChildren.add(_buildLinkButton(url: _info.cvLink));
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: rowChildren);
  }

  Widget _buildLinkButton({String assetPath, String url}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: UISize.pSmall / 2),
      child: Material(
        color: AppColors.primary,
        shadowColor: Colors.blueGrey,
        borderRadius: BorderRadius.circular(UISize.circleRadius),
        elevation: UISize.cardElevation,
        child: SizedBox(
          height: UISize.linkButtonSize,
          width: UISize.linkButtonSize,
          child: InkWell(
            onTap: () async {
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            child: Container(
              color: AppColors.primary,
              constraints: BoxConstraints.expand(),
              alignment: Alignment.center,
              child: assetPath != null && assetPath.isNotEmpty
                  ? Image.asset(
                      assetPath,
                      fit: BoxFit.fill,
                      semanticLabel: url,
                    )
                  : Icon(
                      Icons.link,
                      semanticLabel: url,
                      color: AppColors.accent,
                    ),
            ),
          ),
        ),
      ),
    ).showCursorOnHover.moveUpOnHover;
  }
}
