import 'package:arozd_cv/config/my_info.dart';
import 'package:arozd_cv/ui/constants/ui_size.dart';
import 'package:arozd_cv/ui/views/education/education_list.dart';
import 'package:arozd_cv/ui/views/employment/employment_list.dart';
import 'package:arozd_cv/ui/widgets/bitmap_cache.dart';
import 'package:arozd_cv/ui/widgets/footer.dart';
import 'package:arozd_cv/ui/widgets/text_info_view.dart';
import 'package:flutter/cupertino.dart';

import '../../locator.dart';

abstract class BasePage extends StatelessWidget {
  List<Widget> get widgets => [
        buildHeaderView(),
        buildSkillsView(),
        buildProfileView(),
        buildEducationView(),
        buildEmploymentView(),
        buildPersonalQualitiesView(),
        buildFooterView(),
      ];

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: UISize.maxWidth),
      child: SingleChildScrollView(
        child: BitmapCache(
          child: Padding(
            padding: EdgeInsets.all(UISize.pMedium),
            child: Column(children: widgets),
          ),
        ),
      ),
    );
  }

  Widget buildHeaderView() {
    return SizedBox.shrink();
  }

  Widget buildSkillsView() {
    return SizedBox.shrink();
  }

  Widget buildProfileView() {
    return TextInfoView(
      header: 'PROFILE',
      description: locator<MyInfo>().profileText,
    );
  }

  Widget buildEducationView() {
    return EducationList();
  }

  Widget buildEmploymentView() {
    return EmploymentList();
  }

  Widget buildPersonalQualitiesView() {
    return TextInfoView(
      header: 'PERSONAL QUALITIES',
      description: locator<MyInfo>().personalQualities,
    );
  }

  Widget buildFooterView() {
    return Footer();
  }
}
