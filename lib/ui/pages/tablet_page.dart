import 'package:arozd_cv/ui/constants/app_colors.dart';
import 'package:arozd_cv/ui/constants/ui_size.dart';
import 'package:arozd_cv/ui/pages/main_page.dart';
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
import 'package:flutter/cupertino.dart';

class TabletPage extends MainPage {
  @override
  Widget buildHeaderView() {
    return BaseCard(
      color: AppColors.primary,
      shadowColor: AppColors.primary,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              InfoAvatarView(),
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

  @override
  Widget buildSkillsView() {
    return BaseCard(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: SkillsLanguagesView(),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.only(left: UISize.pMedium),
              child: SkillsMineView(),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget buildProfileView() {
    return BaseCard(
      child: ProfileView(),
    );
  }

  @override
  Widget buildEducationView() {
    return BaseCard(
      child: EducationList(),
    );
  }

  @override
  Widget buildEmploymentView() {
    return BaseCard(
      child: EmploymentList(),
    );
  }
}
