import 'package:arozd_cv/ui/constants/ui_size.dart';
import 'package:arozd_cv/ui/widgets/bitmap_cache.dart';
import 'package:flutter/cupertino.dart';

abstract class MainPage extends StatelessWidget {
  List<Widget> get widgets => [
        buildHeaderView(),
        buildSkillsView(),
        buildProfileView(),
        buildEducationView(),
        buildEmploymentView(),
        SizedBox(height: UISize.pLarge),
      ];

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: UISize.maxWidth),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: widgets.length,
        padding: EdgeInsets.all(UISize.pMedium),
        itemBuilder: (context, index) => BitmapCache(child: widgets[index]),
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
}
