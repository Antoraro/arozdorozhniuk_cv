import 'package:arozd_cv/ui/constants/app_colors.dart';
import 'package:arozd_cv/ui/constants/ui_size.dart';
import 'package:arozd_cv/ui/views/education/education_list.dart';
import 'package:arozd_cv/ui/views/info/info_avatar_view.dart';
import 'package:arozd_cv/ui/views/info/info_contacts_view.dart';
import 'package:arozd_cv/ui/views/info/info_links_view.dart';
import 'package:arozd_cv/ui/views/info/info_name_view.dart';
import 'package:arozd_cv/ui/views/skills/skills_languages_view.dart';
import 'package:arozd_cv/ui/views/skills/skills_mine_view.dart';
import 'package:arozd_cv/ui/widgets/base_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MobilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SingleChildScrollView(
        padding: EdgeInsets.all(UISize.pSmall),
        child: Column(
          children: <Widget>[
            _buildHeaderView(),
            _buildSkillsView(),
            _buildEducationView(context),
            SizedBox(height: UISize.pLarge),
          ],
        ),
      ),
    );
  }

  Widget _buildHeaderView() {
    return BaseCard(
      color: AppColors.primary,
      shadowColor: AppColors.primary,
      padding: UISize.pMedium,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              InfoAvatarView(size: UISize.avatarSizeMobile),
              InfoLinksView(),
            ],
          ),
          SizedBox(height: UISize.pSmall),
          InfoNameView(),
          SizedBox(height: UISize.pMedium),
          InfoContactsView(),
        ],
      ),
    );
  }

  Widget _buildSkillsView() {
    return BaseCard(
      height: UISize.skillsHeightMobile,
      padding: UISize.pMedium,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(flex: 1, child: SkillsLanguagesView()),
          SizedBox(height: UISize.pMedium),
          Expanded(flex: 1, child: SkillsMineView()),
        ],
      ),
    );
  }

  Widget _buildEducationView(BuildContext context) {
    return BaseCard(
      padding: UISize.pMedium,
      child: EducationList(),
    );
  }
}
