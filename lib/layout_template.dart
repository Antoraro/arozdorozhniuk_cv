import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'ui/pages/desktop_page.dart';
import 'ui/pages/mobile_page.dart';
import 'ui/pages/tablet_page.dart';

class LayoutTemplate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizeInfo) => Container(
        alignment: Alignment.topCenter,
        constraints: BoxConstraints.expand(),
        child: _buildBody(screenType: sizeInfo.deviceScreenType),
      ),
    );
  }

  Widget _buildBody({DeviceScreenType screenType}) {
    switch (screenType) {
      case DeviceScreenType.Mobile:
        return MobilePage();
      case DeviceScreenType.Tablet:
        return TabletPage();
      case DeviceScreenType.Desktop:
      default:
        return DesktopPage();
    }
  }
}
