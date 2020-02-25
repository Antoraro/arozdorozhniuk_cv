import 'package:arozd_cv/ui/constants/app_colors.dart';
import 'package:arozd_cv/ui/constants/ui_size.dart';
import 'package:arozd_cv/ui/views/info_avatar_view.dart';
import 'package:arozd_cv/ui/views/info_contacts_view.dart';
import 'package:arozd_cv/ui/views/info_links_view.dart';
import 'package:arozd_cv/ui/views/info_name_view.dart';
import 'package:arozd_cv/ui/views/skills_languages_view.dart';
import 'package:arozd_cv/ui/views/skills_mine_view.dart';
import 'package:arozd_cv/ui/widgets/base_card.dart';
import 'package:flutter/material.dart';

class DesktopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        constraints: BoxConstraints(maxWidth: UISize.maxWidth),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(UISize.pLarge),
          child: Column(
            children: <Widget>[
              _buildHeaderView(),
              _buildSkillsView(),
              SizedBox(height: UISize.pMedium),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeaderView() {
    return BaseCard(
      height: UISize.headerHeight,
      color: AppColors.primary,
      shadowColor: AppColors.primary,
      padding: UISize.pMedium,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          InfoAvatarView(),
          SizedBox(width: UISize.pMedium),
          InfoNameView(),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              InfoLinksView(),
              Spacer(),
              InfoContactsView(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSkillsView() {
    return BaseCard(
      height: UISize.headerHeight,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: SkillsLanguagesView(),
          ),
          Expanded(
            flex: 4,
            child: SkillsMineView(),
          ),
        ],
      ),
    );
  }
}
