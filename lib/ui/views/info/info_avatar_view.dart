import 'package:arozd_cv/r.dart';
import 'package:arozd_cv/ui/constants/ui_size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfoAvatarView extends StatelessWidget {
  final double size;

  const InfoAvatarView({this.size = UISize.avatarSizeDesktop});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: size / 2,
      child: ClipOval(
        child: Image.asset(R.assetsImgProfilePic, fit: BoxFit.fill),
      ),
    );
  }
}
