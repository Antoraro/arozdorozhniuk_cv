import 'package:arozd_cv/ui/constants/app_colors.dart';
import 'package:arozd_cv/ui/constants/ui_size.dart';
import 'package:arozd_cv/ui/views/education/education_list.dart';
import 'package:arozd_cv/ui/views/employment/employment_list.dart';
import 'package:arozd_cv/ui/views/info/info_avatar_view.dart';
import 'package:arozd_cv/ui/views/info/info_contacts_view.dart';
import 'package:arozd_cv/ui/views/info/info_links_view.dart';
import 'package:arozd_cv/ui/views/info/info_name_view.dart';
import 'package:arozd_cv/ui/views/profile/profile_view.dart';
import 'package:arozd_cv/ui/views/skills/skills_languages_view.dart';
import 'package:arozd_cv/ui/views/skills/skills_mine_view.dart';
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
              _buildProfileView(),
              _buildEducationView(),
              _buildEmploymentView(),
              SizedBox(height: UISize.pLarge),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeaderView() {
    return BaseCard(
      height: UISize.headerHeightDesktop,
      shadowColor: AppColors.primary,
      color: AppColors.primary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
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
            child: Padding(
              padding: EdgeInsets.only(left: UISize.pMedium),
              child: SkillsMineView(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileView() {
    return BaseCard(
      child: ProfileView(),
    );
  }

  Widget _buildEducationView() {
    return BaseCard(
      child: EducationList(),
    );
  }

  Widget _buildEmploymentView() {
    return BaseCard(
      child: EmploymentList(),
    );
  }
}
