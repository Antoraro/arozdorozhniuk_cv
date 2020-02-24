import 'package:arozd_cv/ui/constants/UISize.dart';
import 'package:arozd_cv/ui/views/info_avatar_view.dart';
import 'package:arozd_cv/ui/views/info_contacts_view.dart';
import 'package:arozd_cv/ui/views/info_links_view.dart';
import 'package:arozd_cv/ui/views/info_name_view.dart';
import 'package:arozd_cv/ui/views/skills_languages_view.dart';
import 'package:arozd_cv/ui/views/skills_mine_view.dart';
import 'package:flutter/material.dart';

class DesktopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: EdgeInsets.all(UISize.pLarge),
        constraints: BoxConstraints(maxWidth: UISize.maxWidth),
        child: Column(
          children: <Widget>[
            _buildInfoView(context),
            _buildSkillsView(),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoView(BuildContext context) {
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
        ),
      ),
    );
  }

  Widget _buildSkillsView() {
    return SizedBox(
      width: double.infinity,
      height: UISize.headerHeight,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(UISize.pLarge),
        ),
        shadowColor: Colors.grey,
        elevation: UISize.cardElevation,
        child: Padding(
          padding: EdgeInsets.all(UISize.pSmall),
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
        ),
      ),
    );
  }
}
