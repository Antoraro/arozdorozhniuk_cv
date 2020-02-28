import 'package:arozd_cv/ui/constants/ui_size.dart';
import 'package:arozd_cv/ui/widgets/bitmap_cache.dart';
import 'package:arozd_cv/ui/widgets/footer.dart';
import 'package:flutter/cupertino.dart';

abstract class BasePage extends StatelessWidget {
  List<Widget> get widgets => [
        buildHeaderView(),
        buildSkillsView(),
        buildProfileView(),
        buildEducationView(),
        buildEmploymentView(),
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
    return SizedBox.shrink();
  }

  Widget buildEducationView() {
    return SizedBox.shrink();
  }

  Widget buildEmploymentView() {
    return SizedBox.shrink();
  }

  Widget buildFooterView() {
    return Footer();
  }
}
