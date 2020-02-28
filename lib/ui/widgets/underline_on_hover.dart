import 'package:arozd_cv/ui/constants/app_colors.dart';
import 'package:arozd_cv/ui/constants/ui_size.dart';
import 'package:flutter/cupertino.dart';

class UnderlineOnHover extends StatefulWidget {
  final Widget child;
  UnderlineOnHover({Key key, this.child}) : super(key: key);

  @override
  _UnderlineOnHoverState createState() => _UnderlineOnHoverState();
}

class _UnderlineOnHoverState extends State<UnderlineOnHover> {
  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (e) => _mouseEnter(true),
      onExit: (e) => _mouseEnter(false),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          widget.child,
          AnimatedContainer(
            height: 1.0,
            width: _hovering ? UISize.underlineWidth : UISize.zero,
            duration: const Duration(milliseconds: UISize.animationDuration),
            curve: Curves.easeInOut,
            color: AppColors.dark,
          ),
        ],
      ),
    );
  }

  void _mouseEnter(bool hover) {
    setState(() {
      _hovering = hover;
    });
  }
}
