import 'package:arozd_cv/r.dart';
import 'package:arozd_cv/ui/constants/ui_size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfoAvatarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: UISize.cardElevation,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(UISize.circleRadius),
      ),
      child: Image.asset(R.assetsImgProfilePic, fit: BoxFit.fill),
    );
  }
}
