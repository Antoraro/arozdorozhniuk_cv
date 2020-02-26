import 'package:arozd_cv/ui/constants/app_colors.dart';
import 'package:arozd_cv/ui/constants/my_info.dart';
import 'package:arozd_cv/ui/constants/ui_size.dart';
import 'package:arozd_cv/ui/extensions/hover_extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoLinksView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      children: MyInfo.links.entries
          .map(
            (e) => _buildLinkButton(url: e.value, assetPath: e.key)
                .showCursorOnHover
                .moveUpOnHover,
          )
          .toList(),
    );
  }

  Widget _buildLinkButton({String assetPath, String url}) {
    return SizedBox(
      height: UISize.linkButtonSize,
      width: UISize.linkButtonSize,
      child: Card(
        color: AppColors.primary,
        shadowColor: Colors.blueGrey,
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
          child: Container(
            constraints: BoxConstraints.expand(),
            alignment: Alignment.center,
            child: Image.asset(assetPath, fit: BoxFit.fill, semanticLabel: url),
          ),
        ),
      ),
    );
  }
}
